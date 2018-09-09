package com.kh.iclass.common.util;

import java.security.MessageDigest;

public class SHA256Util {

	public static String hashing(String password) throws Exception {
		MessageDigest digest = MessageDigest.getInstance("SHA-256");
        byte[] hash = digest.digest(password.getBytes("UTF-8"));
         
        StringBuffer hexString = new StringBuffer();

        for (int i = 0; i < hash.length; i++) {
            String hex = Integer.toHexString(0xff & hash[i]);
            if(hex.length() == 1) hexString.append('0');
            hexString.append(hex);
        }
		
        return hexString.toString();
	}
}
