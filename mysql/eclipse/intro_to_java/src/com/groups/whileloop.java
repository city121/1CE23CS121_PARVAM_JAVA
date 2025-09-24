package com.groups;
import java.util.Scanner;
public class whileloop {
	 public static void main(String[] args) {
			Scanner sc=new Scanner(System.in);
			System.out.println("enter the no");
			int size =sc.nextInt();
			if (size<=0) {
			System.out.println("invalid");
				}
			int i=0;
			while(i<size) {
				i++;
			if(i%2==0) {
				System.out.println(i+"even");
			}else {
				System.out.println(i+"odd");
			}
		} 
				sc.close();
	}
}
