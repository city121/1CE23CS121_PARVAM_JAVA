package com.asg;
import java.util.Scanner;
public class asg1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int num = sc.nextInt();

        int temp = num, rev = 0;

        while (temp > 0) {
            rev = rev * 10 + temp % 10;
            temp = temp / 10;
        }

        if (num == rev)
            System.out.println(num + " is a Palindrome");
        else
            System.out.println(num + " is NOT a Palindrome");

        sc.close();
    }
}