package smart.mall.enums.exam;

/**
 * 是否通过考试的枚举定义： 1 通过，0 未通过
 * 
 * @author wutianbin
 */
public enum IsPassedEnum {
	/** 0, "notPass", "未通过", "考试未通过" */
	NOT_PASS(0, "notPass", "未通过", "考试未通过"),
	
	/** 1, "passed", "通过", "考试通过" */
	PASSED(1, "passed", "通过", "考试通过"),
	
	;
	
	IsPassedEnum(int key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	int key;
	
	String code;
	
	String name;
	
	String desc;
	
	public IsPassedEnum valueByKey(int key) {
		for (IsPassedEnum v : IsPassedEnum.values()) {
			if (v.key == key) {
				return v;
			}
		}
		
		return null; 
	}

	public IsPassedEnum valueByCode(String code) {
		for (IsPassedEnum v : IsPassedEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public IsPassedEnum valueByName(String name) {
		for (IsPassedEnum v : IsPassedEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}
	
}
