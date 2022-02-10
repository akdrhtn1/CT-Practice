package testJava;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

public class OptionTest {

	public static void main(String[] args) {
		
		String[] str = new String[2];
		str[0] = "banana";
		
		String[] str2 = {"bnan","appleba"};
		
		List<String> list = new ArrayList<>();
		
//		
//		list.add("sadas");
//		list.add("qwwq");
		System.out.println(list);
		
		Optional<List<String>> option = Optional.ofNullable(list);
		System.out.println(option);
		//String 경우 =>
		//option.orElse("");
		
		//List 경우 => null일 경우 new ArrayList<>(); 해줌 
		
		//System.out.println(option.orElseGet(ArrayList::new));
		System.out.println(option.orElseGet(()->new ArrayList<>()));
		
		int[] arr = new int[0];
		
		Optional<String> option1 = Optional.empty();
		System.out.println(option1);
		String st23 = option1.orElse("");
		System.out.println(st23);
	}

}
