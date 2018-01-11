package smart.mall.common;

public class UtilString {
	public static String firstToLowerCase(String str) {
		char[] chars = str.toCharArray();
		if (chars.length > 0 && chars[0] >= 'A' && chars[0] <= 'Z') {
			chars[0] = (char) (chars[0] - 'A' + 'a');
		}
		return new String(chars);
	}
}
