package Test;


public class Diao {
	String name;
	int age;
	String designation;
	double salary;
	
	public String name1;
	private double salary1;
		
	
	public Diao(String name){
		this.name1 = name;
	}
	public void setSalary(double empSal){
	    salary1 = empSal;
	}
	public void printEmp(){
		System.out.println("name1:" + name1);
		System.out.println("salary1£º" + salary1);
	}
	
	public void emAge(int empAge){
		age = empAge;
	}
	public void empDesignation(String empDesig){
		designation = empDesig;
	}
	public void empSalary(double empSalary){
		salary = empSalary;
	}
	public void printEmployee(){
		System.out.println("name:" + name);
		System.out.println("age:" + age);
		System.out.println("designation:" + designation);
		System.out.println("salary:" + salary);		
	}
	public static void main(String args[]){
		Diao dIao = new Diao("zhuzhutest");
		dIao.setSalary(1000);
		dIao.printEmp();
	} 
}