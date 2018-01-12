package smart.mall.enums;

/**
 * 是否有效的枚举定义：1 有效，0 失效
 * 
 * @author wutianbin
 */
public enum ValidStateEnum {
	/** 0 失效 */
	INVALID(0, "invalid", "失效", "失效"),
	
	/** 1 有效 */
	VALID(1, "valid", "有效", "有效"),
	
	;
	
	ValidStateEnum(int key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	int key;
	
	String code;
	
	String name;
	
	String desc;
	
	
	public int getKey() {
		return key;
	}

	public void setKey(int key) {
		this.key = key;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public ValidStateEnum valueByKey(int key) {
		for (ValidStateEnum v : ValidStateEnum.values()) {
			if (v.key == key) {
				return v;
			}
		}
		
		return null; 
	}

	public ValidStateEnum valueByCode(String code) {
		for (ValidStateEnum v : ValidStateEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public ValidStateEnum valueByName(String name) {
		for (ValidStateEnum v : ValidStateEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}

}
