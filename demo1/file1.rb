require 'watir-webdriver'
require 'win32ole'
require 'watir'
#require '../lib/config.rb'

#文件路径
file_path = "#{File.dirname(__FILE__)}/output/test.csv" 
@@CsvClass

#创建一个csv文件
$file = $CsvClass.CreateCsvFile(file_path)

#向文件中写入单个数据
$CsvClass.UpdateFile($file,['row1','row2'])

#向文件中写入多行数据
$CsvClass.UpdateFile($file,[['3','4'],['5','6']] )

#关闭文件
$CsvClass.CloseFile($file)

info = $CsvClass.ReadByLine(file_path)
puts "ReadByLine函数读取的结果："
p info

info = $CsvClass.CsvToArray(file_path,2,1)
puts "CsvToArray函数读取的结果："
p info

info = $CsvClass.CsvToHash(file_path,2,1)
puts "CsvToHash函数读取的结果："