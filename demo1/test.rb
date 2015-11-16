require 'net/http'
require 'json'

def self.json_parse(res_body)
	puts res_body
	result = JSON.parse(res_body)
	result.each{|args|
	puts args
	}
	return check_result(result)
	end

def check_result(result)
	r = ""
	if result.has_key? 'Error'
		r += "failed to web service error"
	end
	if result["code"] == 0
		r += "succeed to test the company?#{}" +"\s" + result["code"].to_s
	else
		r += "failed to test the company?type=managed" +"\s" + result["code"].to_s
	end
		puts r
	return r
end

def post_response(uri, cookie, parame=nil,index)
	req = Net::HTTP::Post.new(uri)
	req.set_form_data(parame)
	req['Cookie'] = cookie
	res = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => uri.scheme == 'https') {|http| http.request(req)}
	result = json_parse(res.body)
	return result

end
def Comment(i)######快速创建公司########
    cookie = "XSRF-TOKEN=eyJpdiI6ImlUeXV3R0g1OHE4YTRlWjIrcHVvOGc9PSIsInZhbHVlIjoiMzVVeFFReHU1MFVVNU12RDl0dGFrWGVndXd5YjR2d0J2RFd5RXR1RnBhZGpqeUxUYk0waXhveHJZYU1jVm9qbFwvRFpJb08zOFNlWkUzVWdEUDQ5WnZ3PT0iLCJtYWMiOiJlMzdlMzY1NmZlYTkyYzc3OTNmNjdkNjc5ZDE4MDkyNWQ4OGIwY2U1YWM0MDY1ZjczNDJhMjQ3NDdjNjAzYjVlIn0%3D; _ga=GA1.2.371598976.1447152407; _gat=1; Hm_lpvt_e8ec47088ed7458ec32cde3617b23ee3=1447153466; Hm_lvt_e8ec47088ed7458ec32cde3617b23ee3=1447151476; kr_plus_id=73059; kr_plus_token=bb03b2ce638656ef6410fa791d67b33abe9f7b67; kr_stat_uuid=BaWYm24119206; krchoasss=eyJpdiI6IjFIa3d6ZVwvdjNFU2Zqd0tDTWt0M2VBPT0iLCJ2YWx1ZSI6InVjQyswWmhcL2lSZjNQN1ZFVkdpa1kxK05cLzNWN1JsSndId3I3TDdGNGRVbmJ6bmdMcnkraGQ2VUhRSzFzZm12aUpEdmkwejBJNVNra01lbGpSajJOd1E9PSIsIm1hYyI6ImE0YWMwZTA0NGNmMzQ3MDMzYjYzNGQ2OWQ1NzMzM2RmNGUxMDA5ZjRjZjM5MzNhNGQxYjI2MzMzOGMzZTA1NzEifQ%3D%3D; krid_user_version=1"
    parame = { "content" => "评论测试哈哈哈😄#{i}","pid" => "5039261" }
    puts parame
    uri = URI("https://rongtest4.36kr.com/api/mobi/news/comments/5039261")
	result = post_response(uri, cookie, parame, i)
	60.times do |i|
		sleep 1
		print "."
	end
	puts
end

2.times do |i|
	puts "#{i}"
	Comment(i)
	puts "#{i}"

end

