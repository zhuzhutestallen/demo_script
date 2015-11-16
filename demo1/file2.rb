class CreateFile #定义类，类名首字母需大写

	def rows_to_file(rows)	#定义类方法 
		@@data_rows = rows	#定义类变量，无需申明变量类型
		@@content = '' 

		@@filename = "c:\\filename.txt"	#定义文件路径"c:\ 
		@@data_rows.each do |x| #遍历数组
		@@content = @@content + x.to_s + ‘-‘	#to_s：转换为字符串 
	end 
	 #写文件，参数说明："a+" 在原有内容后追加数据 "w" ：先将文件清空，再写入，参数说明："a+" 
	 File.open( @@filename, "a+" ) do |file|
		file.puts @@content
	  end
	 end
	end 
	rows = ['a','b','c']
	CreateFile = CreateFile.new
	CreateFile.rows_to_file(rows)