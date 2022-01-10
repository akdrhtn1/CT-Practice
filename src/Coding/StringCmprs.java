package Coding;

import java.util.Scanner;

public class StringCmprs {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		String result = check(in.next());
		System.out.println(result);
		
		String result2 = check2(in.next());
		System.out.println(result2);

	}
	
	public static String check(String s) {
        String input = s + " ";
        String answer = "";

        int count = 1;

        for (int i=0; i<input.length()-1; i++){

            if(input.charAt(i) == input.charAt(i+1)){
                count ++;
            }else{
                answer += input.charAt(i);
                if(count > 1) {
                    answer += count;
                    count =1;
                }
            }
        }
        return answer;
	}
	
	public static String check2(String s) {
        String input = s + " ";
        String answer = "";

        int count = 1;

        for (int i=0; i<input.length()-1; i++){

            if(input.charAt(i) == input.charAt(i+1)){
                count ++;
            }else{
            	  if(count > 1) {
                      answer += count;
                      count =1;
                  }
                answer += input.charAt(i);
              
            }
        }
        return answer;
	}
}

