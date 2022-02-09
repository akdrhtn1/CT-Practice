package testJava;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class AlpaCheck {

	public static void main(String args[]) throws IOException {
		
		//대문자 Ooooo -> oOooo 한칸씩 이동시키기
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int count = Integer.parseInt(br.readLine());
		
		for(int i=0; i<count*2-1; i++) {
			if(i<count) {
				for(int j=0; j<count; j++) {
					if(i==j) {
						System.out.print("O");
					}else {
						System.out.print("o");
					}
				}
			}else {
				for(int j=0; j<count; j++) {
					if(j == count*2-i-2) {
						System.out.print("O");
					}else {
						System.out.print("o");
					}
				}
			}
			System.out.println();
		}
	}
}
