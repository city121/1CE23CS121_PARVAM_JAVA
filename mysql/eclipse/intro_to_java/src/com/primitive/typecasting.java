package com.primitive;

public class typecasting {

	public static void main(String[] args) {
		int num = 500;
		long num1 = num; // implicit
		System.out.println("num:" + num);
		System.out.println("num1:" + num1);
		long num2 = 245;
		int num3 = (int) num2; // explicit
		System.out.println("num2:" + num2);
		System.out.println("num3:" + num3);

		var var1 = "Mohan";
		var var2 = 78;
		System.out.println(var1 + " : " + var2);
	}
}
