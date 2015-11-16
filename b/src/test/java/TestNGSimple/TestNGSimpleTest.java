package TestNGSimple;

import java.util.ArrayList;
import java.util.List;

import junit.framework.TestCase;

import org.testng.annotations.Test;

import static org.testng.Assert.assertEquals;

public class TestNGSimpleTest extends TestCase {
	@Test
	public void testAdd() {
		String str = "TestNG is working fine";
		assertEquals("TestNG is working fine", str);
		System.out.println(testa());
	}
	
	private String testa(){
		int a =10;
		String b="aaa";
		char c = 'a';
		boolean d =true;
		d=(Boolean) null;
		return b;
		
	}
	
	public  static void main(String[] args){
		TestNGSimpleTest ts = new TestNGSimpleTest();
		ts.testAdd();
		
		List<TestNGSimpleTest> a = new ArrayList<TestNGSimpleTest>();
		a.add(ts);
		
		for(int i=1;i<10;i++){
			break;
		}
	}

}
