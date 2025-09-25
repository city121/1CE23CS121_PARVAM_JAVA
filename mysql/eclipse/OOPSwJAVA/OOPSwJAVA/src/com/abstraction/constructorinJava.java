package com.abstraction;

class student1 {
	public int id;
	public String name;

	public student1(int id, String name) {
		this.id = id;
		this.name = name;
	}

	public student1(int id) {
		super();
		this.id = id;
	}
}

public class constructorinJava {
	public static void main(String[] args) {
		student1 s1 = new student1(101, "NOICE");
		student1 s2 = new student1(102);
		System.out.println("first students: ");
		System.out.println("id: " + s1.id);
		System.out.println("name: " + s1.name);
		System.out.println("second students: ");
		System.out.println("id: " + s2.id);
		System.out.println("name: " + s2.name);

	}
}
