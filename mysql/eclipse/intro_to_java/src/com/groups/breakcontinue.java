package com.groups;

public class breakcontinue {
	public static void main(String[] args) {
		for(int i=1;i<=10;i++) {
			if(i==6) {
				continue;
			}
			else if(i==9) {
				break;
			}else {
				System.out.println(i+"");
			}
		}
	}
}
