package testJava;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Random;

public class RandomTest {

	public static void main(String args[]) throws IOException {
		String otp = "";
		String check = "";
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		otp = otpCheck();
		boolean result = false;
		System.out.println(otp);
		
		while(!result) {
			
			System.out.println("인증번호를 입력해주세요!!");
			result = login(otp,br);

			if(result) {
				System.out.println("로그인이 되었습니다.");
				break;
			}else {
				System.out.println("인증번호가 틀렸습니다 다시 입력해주세요");
				result = login(otp,br);
			}

		}
	
	}
	
	public static String otpCheck() {
		
		Random rand = new Random();
		StringBuilder sb = new StringBuilder();
		
		for(int i=0; i<6;i++) {
			
			// int temp = (int)(Math.random()*3)+1;
			int randInt = rand.nextInt(3)+1;
			
			switch(randInt) {
				case 1: sb.append((char)(rand.nextInt(26)+65)); break;
				case 2: sb.append((char)(rand.nextInt(26)+97)); break;
				case 3: sb.append(rand.nextInt(10)); break;
			}
		}
		return sb.toString();
	}
	
	public static Boolean login(String otp, BufferedReader br) throws IOException {
		boolean isCheck = false;
				
		if(otp.equals(br.readLine())){
			isCheck = true;
		}
		return isCheck;
	}
}
