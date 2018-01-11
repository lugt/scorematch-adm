package smart.mall.enums;

/**
 * 有效状态：1 有效, 0 失效
 * 
 * @author wutianbin
 */
public enum StatusEnum {
	/** 0 失效 */
	INVALID(0, "invalid", "失效", "失效"),
	
	/** 1 有效 */
	VALID(1, "valid", "有效", "有效"),
	
	;
	
	StatusEnum(int key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	int key;
	
	String code;
	
	String name;
	
	String desc;
	
	public StatusEnum valueByKey(int key) {
		for (StatusEnum v : StatusEnum.values()) {
			if (v.key == key) {
				return v;
			}
		}
		
		return null; 
	}

	public StatusEnum valueByCode(String code) {
		for (StatusEnum v : StatusEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public StatusEnum valueByName(String name) {
		for (StatusEnum v : StatusEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}

}
