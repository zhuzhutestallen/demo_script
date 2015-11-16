# lines = []
# File.open("D:/a.txt", 'w') do |io|  #参数r是读取，w是写
# 	lines = io.readlines.map{|line| line.chomp}
# 	puts io.readlines.map{|line| line.chomp}
# end
# p lines

# 20.times do |x|
# 	if x < 10

# 	#puts 'zone "zgl'+'0'+x.to_s+'.'+'com" {type master; file "/var/"}'
# 	zonename = 'hf'+'0'+x.to_s+'.'+'com'
# 	else
# 	zonename = 'hf'+x.to_s+'.'+'com'
# 	end	
# 	#puts zonename
# 	#puts 'zone "'+zonename+'"{type master; file "'+'/var/'+zonename+'.txt"}'
# 	#puts 'zone "'+zonename+'"{type master; file "'+'/var/'+zonename+'.txt";};'
# puts "r.push(CDNS_ZONE.create_zone_from_file(:view_name=>\"""test\""", :owner=>TEST_LIST,:zone_name=>\"""#{zonename}\""", :zone_file=>PATH + ""\"\\\\upload\\\\zone\\\\zgl\\\\#{zonename}.txt""\"))"
# end

#################求和#####################
arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
sum = 0
arr.each do |i|
	sum += i
end
puts sum
######################################
# sum2 = arr.inject(0) do |rs, i|
# 	rs += i
# end

