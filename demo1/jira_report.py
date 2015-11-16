#!/usr/bin/env python3
#
# 用来生成每天的 bug 报表
# 输出 Markdown 格式的文本
#
import requests
import json
import datetime
from datetime import date

# 统计类型
statTypeList=["statuses","priorities","assignees","components"]
# 项目
projectList=["WEBZH","IOS","ANDROID","SHDT"]
# 解决结果
resolutionList=["Unresolved", "Fixed", "\"Won't Fix\""]

username="zhuguoliang"
password="bfi_322zgl"

jiraUrl='http://bug.36tr.com:8888'
urlTpl='http://jira.partake.us:8888/rest/gadget/1.0/heatmap/generate?projectOrFilterId=jql-{jql}&statType={statType}'
table_head="|%s|问题|比率|\n|--|--|--|\n"
table_row="|[%s](%s)|%d|%s|\n"

def today():
    return date.today()

def tomorrow():
    return date.today() + datetime.timedelta(days = 1)

def buildUrl(projects, statType, resolution=None, createdFrom=None, createdTo=None):
    jql = "project in "+ repr(projects).replace('[','(').replace(']',')')
    if(resolution):
        jql += " AND resolution="+resolution
    if(createdFrom):
        jql += " AND created>="+createdFrom
    if(createdTo):
        jql += " AND created<="+createdTo
    url = urlTpl.replace('{jql}',jql).replace('{statType}', statType)
    print(url)
    return url

def genReport(url, title):
    r = requests.get(url, auth=(username,password));
    jsonData = r.json()
    issueCount = jsonData['issueCount']
    reportText = "\n%s\n" % title
    reportText += table_head % jsonData['statType']
    for item in jsonData['data']:
        reportText += table_row % (item['key'], item['url'], item['value'], repr(round(item['value'] / issueCount * 100, 2)) + "%")
    reportText += table_row % ('全部', jiraUrl+jsonData['filterUrl'], issueCount, '100%')
    return reportText

def genProjectsReports(projects, title):
    reportText = "##%s\n" % title
    reportText += genReport(buildUrl(projects, "statuses"), "状态概览")
    reportText += genReport(buildUrl(projects, "priorities", None, today().isoformat(), tomorrow().isoformat()),"今日新增")
    reportText += genReport(buildUrl(projects, "priorities", "Unresolved"), "未解决: 按优先级")
    reportText += genReport(buildUrl(projects, "assignees", "Unresolved"), "未解决: 按开发人员")
    # 如果有多个工程的话就不输出模块的统计了，模块名称上区分度欠佳
    if len(projects) == 1:
        reportText += genReport(buildUrl(projects, "components", "Unresolved"), "未解决: 按模块")
    reportText += "\n\n---\n"
    return reportText

if __name__ == '__main__':
    reportText = "#%s bug 统计\n" % date.today()
    reportText += genProjectsReports(["WEBZH"], "WEB")
    reportText += genProjectsReports(["IOS"], "iOS")
    reportText += genProjectsReports(["ANDROID"], "Android")
    reportText += genProjectsReports(["SHDT"], "审核后台")
    reportText += genProjectsReports(["WEBZH","IOS","ANDROID","SHDT"], "汇总")

    f = open('report_%s.md' % today(), 'w')
    f.write(reportText)
    f.close()
    print("ok")
