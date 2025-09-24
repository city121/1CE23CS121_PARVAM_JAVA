package com.conditional;

import java.util.Scanner;

public class ifelseinput {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("enter the num: ");
		int x;
		x = sc.nextInt();
		if (x == 0) {
			System.out.println("0");
		} else if (x < 0) {
			System.out.println("-ve");
		} else if (x % 2 == 0) {
			System.out.println("even");
		} else {
			System.out.println("odd");
		}
		sc.close();
	}
}
