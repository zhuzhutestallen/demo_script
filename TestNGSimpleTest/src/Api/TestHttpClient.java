package Api;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

import javax.swing.Spring;

import net.sf.json.JSONException;
import net.sf.json.JSONObject;
import net.sf.json.JSONString;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class TestHttpClient
{

	/**
	 * @param args
	 * @throws IOException 
	 * @throws ClientProtocolException 
	 */
	public static void main(String[] args) throws ClientProtocolException, IOException
	{
		// ����HttpClientʵ��   
	    HttpClient httpclient = new DefaultHttpClient();
	    // ����Get����ʵ��   
        HttpGet httpgets = new HttpGet("http://rong.test2.36kr.com/news/");  
        HttpResponse response = httpclient.execute(httpgets);  
        HttpEntity entity = response.getEntity();  
        if (entity != null) {  
            InputStream instreams = entity.getContent();  
            String str = convertStreamToString(instreams);
            String toMap = 
            String a = toMap(str);
            System.out.println("Do something"); 
            System.out.println(str);
            System.out.println(a);
            // Do not need the rest  
            httpgets.abort();  
            
        }
	}
	public String toMap(String jsonString) throws JSONException{
		JSONObject jsoObject = new JSONObject(jsonString);
//				JSONObject.fromObject(jsonString);
		int code = jsoObject.getInt("code");   
//				System.out.println(a);
				return jsonString; 
	}
	
	public static String convertStreamToString(InputStream is) {    
        BufferedReader reader = new BufferedReader(new InputStreamReader(is));    
        StringBuilder sb = new StringBuilder();    
     
        String line = null;    
        try {    
            while ((line = reader.readLine()) != null) {
                sb.append(line + "\n");    
            }    
        } catch (IOException e) {    
            e.printStackTrace();    
        } finally {    
            try {    
                is.close();    
            } catch (IOException e) {    
               e.printStackTrace();    
            }    
        }    
        return sb.toString();    
    }

}