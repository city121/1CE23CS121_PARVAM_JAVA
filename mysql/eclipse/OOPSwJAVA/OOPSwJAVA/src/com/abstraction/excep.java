package com.abstraction;

import java.util.Scanner;
import java.util.Arrays;



public class excep {
	public static void main(String[] args) {
		int arr[]=new int[5];
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the num: ");
		for(int i=0;i<5;i++) {
			arr[i]=sc.nextInt();
		}
		System.out.println("Array: "+Arrays.toString(arr));
		System.out.println("5th number:"+arr[4]);
	}

}
