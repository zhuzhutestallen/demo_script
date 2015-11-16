####################批量写文件##################
# f1 = File.new("test.log", "r+")
# 	a = "\nthis is test1\n"
# 	a += "this is test2\n"
# 	a += "this is test3"
# 	f1.puts a
##############################################

# 输出文件内容的一种方式io
# arr = io.readlines("test.log")
#  puts arr[0]
#  puts arr[1]
# content = f1.sysread(20)
# puts content
############输出文件内容#######################
# f1 = File.open("test.log") 
# list = []
# File.open(f1) do |file|
# 	file.each_line { |line|
# 		next if line =~ /^$/	#开头为$不显示
# 		next if line =~ /^#/    #开头为#不显示
# 		list << line 			#内容放到arr里
# 	}
# end
# puts list[0]
# puts list[1]
# puts list[2]
#############输出文件内容#########################
# File.open("test.log") do |file|
# 	file.each_line { |line| puts "got #{line.dump}"}
# 	file.close();
# end
###############################################

############################################
arr = IO.readlines("test.log")
puts arr[0][]
puts arr[1]