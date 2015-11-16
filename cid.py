import json
import requests
#import BubbleSort

def demo(self):
	r = requests.get("https://rongtest4.36kr.com/api/mobi/filter/company?appver=3.2&comType=fr&page=1&sortType=auto")
	req = r.json()
	body = req['data']['data']
	for company in range(len(body)):
		cid = body[company]['cid']
		print(cid)
	return cid

# -*- coding: UTF-8 -*-
def bubbleSort(sort_list):
    list_len = len(sort_list)
    if list_len < 2:
        return sort_list
    for i in range(list_len):
        for j in range(list_len-i-1):
            if sort_list[j]>sort_list[j+1]:
                sort_list[j],sort_list[j+1] = sort_list[j+1],sort_list[j]
    return sort_list


def bubble_sort(data):
    lengh = len(data)
    for i in range(len(data)-1):
        for j in range(len(data)-1):
            if (data[j]==data[j+1]):
                print(data[j])
                break
            elif (data[j]>data[j+1]):
                tmp=data[j]
                data[j]=data[j+1]
                data[j+1]=tmp
    return data
