package com.functions;

public class functions {
		public int add(int a1,int a2) {
			return a1+a2;
		}
		public int sub(int a1,int a2) {
			return a1-a2;
		}
		public static void main(String[] args) {
			functions obj1=new functions();
			functions obj2=new functions();
			int res =obj1.add(10,22);
			System.out.println("res :"+res);
			int res1=obj1.add(50,50);
			System.out.println("res1 :" +res1);
			int res2=obj2.sub(60,50);
			System.out.println("res2 :" +res2);
			int res3=obj2.sub(60,50);
			System.out.println("res3 :" +res3);
	}

}
