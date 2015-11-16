# def diayong
# 	#arr = Array.new
# 	str = "abccdefgh"

# 	arr1 = str.scan(/./) 
# 	#puts "#{arr1}\n"
# 	arr1.each_index {|arr2|
# 		z = arr1.size
# 		arr = arr1[arr2]
# 		puts "#{arr1}"
# 		if arr1.include?(arr)
			
# 		end
		
# 		#puts arr2
# 	}
	
# 	# arr1.each do {|a|
# 	# puts "#{arr1}"
# 	# }
# end
# diayong


def list
	File.open("test.log" ) do |file|
	file.each_line { |line| puts "got #{line.dump}"}
	file.close();
	end
	
end

list