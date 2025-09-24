package com.conditional;

import java.util.Scanner;

public class big3 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter first num: ");
		int n1 = sc.nextInt();
		System.out.print("Enter second num: ");
		int n2 = sc.nextInt();
		System.out.print("Enter third num: ");
		int n3 = sc.nextInt();
		if (n1 > n2 && n1 > n3) {
			System.out.println(n1 + " is greatest");
		} else if (n2 > n3 && n2 > n1) {
			System.out.println(n2 + " is greatest");
		} else {
			System.out.println(n3 + " is  greatest");
		}
		sc.close();
	}
}
