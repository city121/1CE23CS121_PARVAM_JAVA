package com.groups;

import java.util.Scanner;

public class dowhile {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the number:");
		int size = sc.nextInt();
		if (size <= 0) {
			System.out.println("Invalid");
		} else {
			int i = 0;
			do {
				i++;
				if (i % 2 == 0) {
					System.out.println(i + " even");
				} else {
					System.out.println(i + " odd");
				}
			} while (i < size);
		}

		sc.close();
	}
}
