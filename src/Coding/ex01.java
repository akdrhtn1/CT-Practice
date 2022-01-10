package Coding;


public class ex01 {
	
	public static void main(String[] args) {
		String str1 = "Good+Bad";
		String str2 = "evening+moning";
		
		String result = spilt(str1,str2);
		
		System.out.println("result:"+ result);
	}
	
	private static String spilt(String str1, String str2) {
		
		int idx1 = str1.indexOf("+");
		int idx2 = str2.indexOf("+");
		
		String result = str1.substring(0,idx1) + str2.substring(idx2,str2.length());
		return result;
	}

}
