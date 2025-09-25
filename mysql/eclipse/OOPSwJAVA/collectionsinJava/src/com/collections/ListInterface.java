package com.collections;


import java.util.ArrayList;
import java.util.List;

public class ListInterface {
    public static void main(String[] args) {
        
        List l1 = new ArrayList();
        l1.add(12);         
        l1.add(12.0);       
        l1.add("hello");    
        l1.add(12);         
        System.out.println(l1);
        Object object = l1.get(0); 
        Integer firstvalue = (Integer) object;
        System.out.println(firstvalue);
        String name = (String) l1.get(2); 
        System.out.println(name);
        // With Generics
        System.out.println("_________________________________");
        List<Integer> integers = new ArrayList<>();
        integers.add(121); 
        integers.add(130);
        System.out.println(integers);

        Integer integer = integers.get(1);
        System.out.println(integer);
    }
}
