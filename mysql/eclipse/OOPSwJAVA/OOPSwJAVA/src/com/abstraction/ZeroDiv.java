package com.abstraction;


import java.util.Scanner;

public class ZeroDiv {

	public static void main(String[] args) {
		System.out.println("Program started");
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter 2 nos");
		int n1=sc.nextInt();
		int n2=sc.nextInt();
		float res=0;
		try {
			res=n1/n2;
		}
		catch (ArithmeticException e){
			System.out.println(e.getMessage());
		}
		System.out.println("Result is: "+res);
		sc.close();
	}

}