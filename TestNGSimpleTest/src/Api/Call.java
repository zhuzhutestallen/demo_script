package Api;

import java.util.HashMap;
import java.util.Map;

public class Call {

	public static void main(String[] args) {
        //���� GET ����
        String s=HttpRequest.sendGet("http://rong.test2.36kr.com/news", null);
        System.out.println(s);
        
//        //���� POST ����
//        String sr=HttpRequest.sendPost("http://localhost:6144/Home/RequestPostString", "key=123&v=456");
//        System.out.println(sr);
    }

}
