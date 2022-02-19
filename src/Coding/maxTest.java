package mystudy;

import java.util.Arrays;

public class maxTest {

	
	public static void main(String args[]) {
		
		
		//System.out.println(min(new int[] {5,12,1,3,13,2},0));
		
		
		System.out.println(max(new int[] {5,12,1,3,13,2},0));
	}
	
	
	static int min(int[] value,int i) {
		
		
		for(int k=0; k<value.length; k++) {
			if(value[i]<value[k]) {
				int temp = value[i];
				value[i] = value[k];
				value[k] = temp;
			}
		}
		

		System.out.println(Arrays.toString(value));
		
		return (i > value.length-2) ? value[0] : min(value,i+1);
	}
	
	
	static int max(int[] value, int i) {
		
		for(int k=0; k<value.length; k++) {
			if(value[i]>value[k]) {
				int temp = value[i];
				value[i] = value[k];
				value[k] = temp;
			}
		}
		

		System.out.println(Arrays.toString(value));
		
		return (i > value.length-2) ? value[0] : max(value,i+1);
	}
}
