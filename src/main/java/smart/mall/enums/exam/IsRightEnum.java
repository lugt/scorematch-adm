package smart.mall.enums.exam;

/**
 * 回答的答案是否正确的枚举定义： 1 回答正确, 0 回答错误
 * 
 * @author wutianbin
 */
public enum IsRightEnum {
	/** 0, "wrong", "回答错误", "回答错误" */
	WRONG(0, "wrong", "回答错误", "回答错误"),
	
	/** 1, "right", "回答正确", "回答正确" */
	RIGHT(1, "right", "回答正确", "回答正确"),
	
	;
	
	IsRightEnum(int key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	int key;
	
	String code;
	
	String name;
	
	String desc;
	
	public IsRightEnum valueByKey(int key) {
		for (IsRightEnum v : IsRightEnum.values()) {
			if (v.key == key) {
				return v;
			}
		}
		
		return null; 
	}

	public IsRightEnum valueByCode(String code) {
		for (IsRightEnum v : IsRightEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public IsRightEnum valueByName(String name) {
		for (IsRightEnum v : IsRightEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}
	
}
