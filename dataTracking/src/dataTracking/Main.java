package dataTracking;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

public class Main {

	public static void main(String[] args) {
		// index.jsp에 이어 생성된 log 파일 읽어오기
		try {
			BufferedReader br 
				= new BufferedReader(
						new InputStreamReader(
								new FileInputStream(
										"C:\\Users\\admin\\Documents\\javaWebApplication\\2020-02-12.log")));
			while(true) {
				String line = br.readLine();
				if (line == null) {
					break;
				}
				System.out.println(line);
			}
			br.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
