package smart.mall.common;

import java.beans.PropertyEditorSupport;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;

public class MyCustomDateEditor extends PropertyEditorSupport {

	Logger logger = LoggerFactory.getLogger(MyCustomDateEditor.class);

	public static final String DATE_FORMAT = "yyyy-MM-dd";
	public static final String DATE_TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
	public static final String TIME_FORMAT = "HH:mm:ss";
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		TimeZone.setDefault(TimeZone.getTimeZone("GMT+8"));  
		
		if (!StringUtils.hasText(text)) {
			setValue(null);
		} else {
			DateFormat format = null;
			if (text.length() == DATE_FORMAT.length()) {
				format = new SimpleDateFormat(DATE_FORMAT);
			} else if (text.length() == DATE_TIME_FORMAT.length()) {
				format = new SimpleDateFormat(DATE_TIME_FORMAT);
			} else if (text.length() == TIME_FORMAT.length()) {
				format = new SimpleDateFormat(TIME_FORMAT);
			}
			try {
				setValue(format.parse(text));
			} catch (Exception e) {
				String msg = String.format("Could not parse date: '%s', it is not exactly like '%s' or '%s' or '%s'", text,
						DATE_FORMAT, DATE_TIME_FORMAT, TIME_FORMAT);
				logger.error(msg);
				throw new IllegalArgumentException(msg);
			}
		}
	}

	/**
	 * Format the Date as String, using the specified DateFormat.
	 */
	@Override
	public String getAsText() {
		DateFormat format = new SimpleDateFormat(DATE_TIME_FORMAT);
		Date value = (Date) getValue();
		return (value != null ? format.format(value) : "");
	}

	public static void main(String args[]) {

		String  str = "1970-01-01 00:00:00";
		
		MyCustomDateEditor edit = new MyCustomDateEditor();
		edit.setAsText(str);
		
		System.out.println("OKKKKKK");
		
	}
}
