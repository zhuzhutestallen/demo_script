require "open-uri"

#监听服务器IP地址
ip = '119.254.103.59'
#待监听端口列表
ports = [80...100]
while true		
  ports.each do |port|
    url = "http://#{ip}:#{port}"		
    begin
      open(url) do |http|
        puts "[#{Time.now}] #{url} OK"
        html = http.read
      end
    rescue Exception => e
      puts "[#{Time.now}] #{url} #{e}"
    end
  end	
  puts "\r\n"
  sleep(5)
end

