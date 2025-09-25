package mapinterface;


import java.util.HashMap;
import java.util.Map;

public class Mapinterface {
	public static void main(String[] args) {
		Map<Integer,String> map =new HashMap<Integer,String>();
		map.put(1,"BEE SEE");
		map.put(2,"APPLE");
		System.out.println(map);
		System.out.println(map.get(1));
	}
}
