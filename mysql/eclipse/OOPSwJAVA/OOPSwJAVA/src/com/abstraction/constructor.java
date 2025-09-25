package com.abstraction;

class Grandparent {
	public Grandparent() {
	super();
	System.out.println("GP constructor");
}
}
class Person extends Grandparent {
	int pid=20;
	public Person() {
		super();
		System.out.println("PC");
	}
}
class Student extends Person{
	public int id;
	public String name;
	public Student(int id, String name) {
		this.id = id;
		this.name = name;
	}
	public Student(int id) {
		super();
		System.out.println(super.pid);
		this.id=id;
	}
}
public class constructor {
	public static void main(String[] args) {
		student s1 = new student(101, "NOICE");
		student s2 = new student(102);
		System.out.println("first students: ");
		System.out.println("id: " + s1.id);
		System.out.println("name: " + s1.name);
		System.out.println("second students: ");
		System.out.println("id: " + s2.id);
		System.out.println("name: " + s2.name);
	}

}
