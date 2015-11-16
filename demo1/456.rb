require 'rubygems'
require 'minitest/autorun'
require 'rest_client'
require 'json'
require 'net/http'
require 'uri'
require "cgi"

#cgi = CGI.new("html4")
# cookie = CGI::Cookie.new('name' => '_auth_session','value' => '27fd3a944212a811ba9c60a60025c8db','name' => 'kr_plus_token', 'value' => '5c36f096215677890a2a62e36ed82b4adec4afe0','name' => 'krid_user_id', 'value' => '691','name' => 'krid_user_version', 'value' => '5','name' => 'remember_user_token', 'value' => 'W1s2OTFdLCIiXQ%3D%3D--165efd845f616dbd9b22d5427eec7fe202c1d27a','path'=>"/", 'expires' => Time.now + 3600)
# # cookie2 = CGI::Cookie.new('name' => '_auth_session','value' => '27fd3a944212a811ba9c60a60025c8db','path'=>"/", 'expires' => Time.now + 3600)
# # cookie3 = CGI::Cookie.new('name' => '_auth_session','value' => '27fd3a944212a811ba9c60a60025c8db','path'=>"/", 'expires' => Time.now + 3600)

# def set_cookies
# 	cgi = CGI.new("rong.test.36kr.com")
# 	values = cgi.cookies['name'] 
# 	cgi.cookies

# 	cgi.out("cookie" => cgi.cookies){"_ga=GA1.2.2144273671.1427338502; remember_user_token=W1s2OTFdLCIiXQ%3D%3D--165efd845f616dbd9b22d5427eec7fe202c1d27a; krid_user_version=5; krid_user_id=691; _auth_session=27fd3a944212a811ba9c60a60025c8db; kr_plus_id=664; kr_plus_token=5c36f096215677890a2a62e36ed82b4adec4afe0"}  
# 	cgi.header

# 	puts "++++++++++#{cgi.header}"
# end

# def request
# 	set_cookies
# 	puts "aaaaaa"
# 	uri = URI.parse("rong.test.36kr.com")
# 	puts "#{uri}"

# 	res = Net::HTTP.post_form(uri, 'q' => ['ruby', 'perl'], 'max' => '50')
# 	puts res.body

#    #  result = JSON.parse(res.body)
#    #  result.each{|args|
#    #   puts args
#    # }
#    # if the hash has 'Error' as a key, we raise an error
#    if result.has_key? 'Error'
#       raise "web service error"
#    end
#    return result
	
# end
#request

uri = URI.parse("rong.test.36kr.com")
#file = File.stat 'cached_response'
puts "#{uri}"
req = Net::HTTP::GET.new(uri)
puts "#{req}"
req['Cookie'] = "remember_user_token=W1s2OTFdLCIiXQ%3D%3D--165efd845f616dbd9b22d5427eec7fe202c1d27a; krid_user_version=5; krid_user_id=691; _auth_session=d83943f09c4123584fda3ba891e958f2; kr_plus_id=664; kr_plus_token=5c36f096215677890a2a62e36ed82b4adec4afe0; _ga=GA1.2.1379932843.1427682742; _gat=1"

res = Net::HTTP.start(uri.hostname, uri.port) {|http|
  http.request(req)
}

open 'cached_response', 'w' do |io|
  io.write res.body
end if res.is_a?(Net::HTTPSuccess)

 # + cgi.body { cookie[0] }

# cgi.out('cookie' => cookie) do
#    cgi.head + cgi.body { "Cookie stored"}
# end

# cgi.cookies
# { "name1" => cookie1, "name2" => cookie2, ... }
# ['name' => 'kr_plus_id', 'value' => '664', 'expires' => Time.now + 3600]
# ['name' => 'kr_plus_token', 'value' => '5c36f096215677890a2a62e36ed82b4adec4afe0', 'expires' => Time.now + 3600]
# ['name' => 'krid_user_id', 'value' => '691', 'expires' => Time.now + 3600]
# ['name' => 'krid_user_version', 'value' => '5', 'expires' => Time.now + 3600]
# ['name' => 'remember_user_token', 'value' => 'W1s2OTFdLCIiXQ%3D%3D--165efd845f616dbd9b22d5427eec7fe202c1d27a', 'expires' => Time.now + 3600]

# cgi = CGI.new("rong.test.36kr.com")

# a = cgi.header
# puts "#{a}"

# class APITest < MiniTest::Unit::TestCase
#   def setup
#     response = RestClient.post("http://rong.test.36kr.com/company/create",
#       :header => 
#       {
# 		"name"=>"36kr",
#         "website"=>"http://www.36kr.com",
#         "brief"=>"一句话介绍",
#         "level"=>"????创始人或联合创始人,具体值需要讨论",
#         "position"=>"职位名称",
#         "start_date"=>"开始时间",
#         "end_date"=>"结束时间，至今如何处理?"      }
#     )
#     data = JSON.new.parse("#{response.body}")
#     puts "#{response.body}"
#   end


#   def test_id_correct
#     assert_equal 4, @data['id']
#   end
# end






