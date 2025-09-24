package com.primitive;
import java.util.Scanner;
public class inputstmts {

	public class nonprimtivetypes{
	    public static void main(String[] args) {
	        Scanner sc = new Scanner(System.in);
	        
	        int u;
	        System.out.print("Enter your no: ");
	        u=sc.nextInt();
	        System.out.println("value is:" +u);
	        long marks;
	        marks=sc.nextLong();
	        System.out.println("ur marks:" +marks);
	        sc.close();
	    }
	}


}
