package com.abstraction;

abstract class Shape {
	abstract void draw();

	public void disp() {
		System.out.println("this display func");
	}
}

class circle extends Shape {
	void draw() {
		System.out.println("this is draw func");
	}
}

public class abstractionclass {
	public static void main(String[] args) {
		circle obj1=new circle();
		obj1.draw();
		obj1.disp();
	}
}
