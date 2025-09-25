package com._objects;


class car{
	String brand;
	int year;
	public void disp() {
		System.out.println("Brand: "+brand);
		System.out.println("year: "+year);
	}
}
public class classobject {
	public static void main(String[] args) {
		car obj1=new car();
		obj1.brand="audi";
		obj1.year=2000;
		obj1.disp();
		
		car obj2=new car();
		obj1.brand="tesla";
		obj1.year=2050;
		obj1.disp();
	}

}
