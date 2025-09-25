package com.abstraction;

public interface vechicle {
	abstract void start();
	void stop();
	
	public static void display() {
		System.out.println("Static display");
	}
}
