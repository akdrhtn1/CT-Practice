package Algorithm;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class Solution {
	public static void main(String[] args) {
		
		String[] str = {"A","B","A","C","F","E","B","C","C"};
		
		Map<String, Integer> hm = new HashMap<>();
		
		
		for(int i=0; i<str.length; i++) {
			if(hm.containsKey(str[i])) {
				hm.put(str[i],hm.get(str[i])+1);
			}else {
				hm.put(str[i], 1);
			}
		}
		
		
		Set<Entry<String, Integer>> set2 = hm.entrySet();
		
		List<Entry<String,Integer>> arr = new ArrayList<>(set2);
		
		Collections.sort(arr,new listCollection());

		for(Entry<String,Integer> set: arr) {
			System.out.println(set.getKey() +" : "+ change(set.getValue()) +" "+ set.getValue());
		}

		
	}
	public static String change(int k) {
		String str = "";
		
		for(int i=0; i<k; i++) {
			str +="#";		
			}
		return str;
	}

}


class listCollection implements Comparator<Entry<String,Integer>>{

	
	
	@Override
	public int compare(Entry<String, Integer> o1, Entry<String, Integer> o2) {
		
		int v1 = o1.getValue();
		int v2 = o2.getValue();
		
		return v2 < v1 ? -1 : v2 > v1 ? 1 : 0 ;
	}
	
}

