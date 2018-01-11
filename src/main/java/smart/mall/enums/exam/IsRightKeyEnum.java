package smart.mall.enums.exam;

/**
 * 是否正确答案的枚举量定义，1 是正确答案，0 不是正确答案
 * 
 * @author wutianbin
 */
public enum IsRightKeyEnum {
	/** 0, "wrong", "错误", "不是正确答案" */
	WRONG(0, "wrong", "错误", "不是正确答案"),
	
	/** 1, "right", "正确", "是正确答案" */
	RIGHT(1, "right", "正确", "是正确答案"),
	
	;
	
	IsRightKeyEnum(int key, String code, String name, String desc) {
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

	public static IsRightKeyEnum valueByKey(int key) {
		for (IsRightKeyEnum v : IsRightKeyEnum.values()) {
			if (v.key == key) {
				return v;
			}
		}
		
		return null; 
	}

	public static IsRightKeyEnum valueByCode(String code) {
		for (IsRightKeyEnum v : IsRightKeyEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public static IsRightKeyEnum valueByName(String name) {
		for (IsRightKeyEnum v : IsRightKeyEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}
	
}
