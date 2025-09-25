package com.inheritance;



class animal
{
public void bark() {
	System.out.println("DOG  BARKING");
	}
}
class dog extends animal{
	public void bark() {
		System.out.println("DOG IS BARKING");
		}
	public void isWalking() {
		System.out.println("DOG IS WALKING");
		}
	public void eating() {
		System.out.println("DOG IS EATING");
		}
}
public class inheritance {
	public static void main(String[] args) {
		dog d1=new dog();
		d1.bark();
		d1.isWalking();
		d1.eating();
	}
}
