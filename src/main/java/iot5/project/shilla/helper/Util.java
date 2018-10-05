package iot5.project.shilla.helper;

public class Util {
	
	
	public int random(int min, int max) {
		int num = (int) (Math.random() * (max - min + 1 )) + min;
		return num;
	}
	
	public String getRandomPassword() {
		String password = "";
		String words = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
		int words_len = words.length();
		for(int i = 0; i < 8; i++) {
			int random = random(0,words_len -1);
			String c = words.substring(random, random + 1);
			
			password+=c;
		}
		return password;
	}
}
