package com.abstraction;

import java.io.FileNotFoundException;
import java.io.FileReader;
public class complietimeexception {
	public static void main(String[] args) {
		try {
			FileReader r1 =new FileReader("abc.txt");
		}catch(FileNotFoundException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}
}
