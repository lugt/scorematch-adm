package smart.mall.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Utils {

	public static String getMD5(String str) throws NoSuchAlgorithmException {
		MessageDigest md = MessageDigest.getInstance("MD5");
		md.update(str.getBytes());
		return new BigInteger(1, md.digest()).toString(16);
	}

	public static void main(String args[]) {
		// admin,12345678,,3C2C28608BF517CBF83E2345779C804B
		try {
			String s_pwd = MD5Utils.getMD5("12345678").toLowerCase();
			String s_pwdAndNo = MD5Utils.getMD5(s_pwd + "A0001");
			String scr = s_pwdAndNo.toUpperCase();
			System.out.println("明文密码MD5: " + s_pwd);
			System.out.println("明文密码MD5后+A0001: " + s_pwdAndNo);
			System.out.println("密文密码MD5: " + scr);
			System.out.println("   需要的是: 3C2C28608BF517CBF83E2345779C804B");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
