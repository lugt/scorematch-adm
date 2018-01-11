package smart.mall.enums;

/**
 * 语言类型：zh-CN 代表中文，en 代表英文
 * 
 * @author wutianbin
 */
public enum LanguageEnum {
	/** zh-CN 代表中文 */
	CN("zh-CN", "zh-CN", "中文", "中文"),
	
	/** en 代表英文 */
	EN("en", "en", "英文", "英文"),

	;
	
	LanguageEnum(String key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	String key;
	
	String code;
	
	String name;
	
	String desc;
	
	public LanguageEnum valueByKey(String key) {
		for (LanguageEnum v : LanguageEnum.values()) {
			if (v.key.equals(key)) {
				return v;
			}
		}
		
		return null; 
	}

	public LanguageEnum valueByCode(String code) {
		for (LanguageEnum v : LanguageEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public LanguageEnum valueByName(String name) {
		for (LanguageEnum v : LanguageEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}
}
