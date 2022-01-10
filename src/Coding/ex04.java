package Coding;

public class ex04 {

	public static void main(String args[]) {
		
		int result = 0;
		int score = 1;
		
		for(int i=1; i<=10; i++) {
			result += score;
		}
		
		if(result == 10)
			System.out.println("success: 10");
		else if(result == 9)
			System.out.println("success: 9");
		else 
			System.out.println("success: " + result);
		
		
		//답 : 에러 String형에 형변환 없이 Integer를 넣을 수 없음
		
		//이게아니면 답 :success  : 10
	}
}
