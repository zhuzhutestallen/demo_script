package Api;

import java.util.HashMap;
import java.util.Map;

public class Call {

	public static void main(String[] args) {
        //发送 GET 请求
        String s=HttpRequest.sendGet("http://rong.test2.36kr.com/news", null);
        System.out.println(s);
        
//        //发送 POST 请求
//        String sr=HttpRequest.sendPost("http://localhost:6144/Home/RequestPostString", "key=123&v=456");
//        System.out.println(sr);
    }

}
