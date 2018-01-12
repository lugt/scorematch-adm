package smart.mall.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtils {

	public static Date getYesterday() {
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, -1);
		return cal.getTime();
	}

	@SuppressWarnings("deprecation")
	public static Date dateForZerotime(Date date) {
		return new Date(date.getYear(), date.getMonth(), date.getDate());
	}

	public static String dateToString(Date date) {
		return inner_dateToString("yyyy-MM-dd", date);
	}

	public static String datetimeToString(Date date) {
		return inner_dateToString("yyyy-MM-dd HH:mm:ss", date);
	}
	
	public static Date stringToDate(String value) {
		return inner_stringToDate("yyyy-MM-dd", value);
	}

	public static Date stringToDatetime(String value) {
		return inner_stringToDate("yyyy-MM-dd HH:mm:ss", value);
	}

	public static Date stringToDate(String value, String format) {
		return inner_stringToDate(format, value);
	}

	public static Date stringToDatetime(String value, String format) {
		return inner_stringToDate(format, value);
	}

	private static String inner_dateToString(String format, Date value) {
		if (value == null) {
			return "";
		}
		SimpleDateFormat sdf = new SimpleDateFormat(format);
        return sdf.format(value);
	}

	private static Date inner_stringToDate(String format, String value) {
		if (value == null) {
			return null;
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat(format);
        try {
			return sdf.parse(value);
		} catch (ParseException e) {
			//e.printStackTrace();
			return null;
		}
	}
	
}
