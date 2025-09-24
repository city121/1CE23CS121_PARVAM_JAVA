package com.polymorphism;

class add{
	public void add(int a,int b)
	{
		System.out.println(a+b);
	}
	public void add(double a ,double b) {
		System.out.println(a+b);
	}
}
public class methodoverloading {
	public static void main(String[] args) {
		add a1=new add();
		a1.add(10,20);
		a1.add(10.3,12.4);
	}

}
