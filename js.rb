require 'watir'


#定义调用JS的类方法
	class Watir::chrome
		def run_script(js)
			ie.Document.parentWindow.execScript(js)
		end
	end
	Browser = Watir::chrome.new
	Browser.goto "http://203.119.80.42/index#views"
	#调用类方法 
	js_string = "alert(\"测试调用Javascript！\");"
	ie.run_script(js_string)