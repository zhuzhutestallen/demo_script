package Test;

import java.io.*;

public class Test {

	int puppAge;

	public Test(String name) {
		System.out.println("passed name is :" + " " + name);
	}

	public void setAge(int age) {
		// System.out.println(age);
		puppAge = age;
	}

	public int getAge() {

		System.out.println("puppy's age is :" + puppAge);
		return puppAge;
	}

	public static void main(String[] args) {
		/* �������� */
		Diao empOne = new Diao("james Smith");
		Diao empTwo = new Diao("mary Anne");

		empOne.emAge(20);
		empOne.empDesignation("senior softwarte engineer");
		empOne.empSalary(10000);
		empOne.printEmployee();

		empTwo.emAge(26);
		empTwo.empDesignation("software engineer");
		empTwo.empSalary(500);
		empTwo.printEmployee();

		Test myPuppy = new Test("zhuzhutest");
		/* ͨ���������趨age */
		myPuppy.setAge(29);
		/* ������һ��������ȡage */
		myPuppy.getAge();
		/* ��Ҳ�����������������ʳ�Ա���� */
		System.out.println("Variable Value :" + myPuppy.puppAge);
	}
}