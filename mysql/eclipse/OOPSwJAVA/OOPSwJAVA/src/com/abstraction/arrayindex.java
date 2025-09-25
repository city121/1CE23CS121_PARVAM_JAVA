package com.abstraction;
import java .util.Scanner;
import java.util.Arrays;
public class arrayindex {
		public static void main(String[] args) {
			int[] arr=new int[5];
			Scanner sc=new Scanner(System.in);
			System.out.println("Enter the nos");
			for(int i=0;i<5;i++) {
				arr[i]=sc.nextInt();
			}
			System.out.println("Array: "+Arrays.toString(arr));

			try {
				System.out.println("5th number:"+arr[5]);
			}
			catch (ArrayIndexOutOfBoundsException e) {
				System.out.println(e.getMessage());
			}
			System.out.println("Program completed!");
			sc.close();
			
		}
}
