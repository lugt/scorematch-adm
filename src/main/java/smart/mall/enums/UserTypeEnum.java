package smart.mall.enums;

/**
 * 用户类型的枚举定义： A 全部，F 飞行，S 安全，C 乘务
 * 
 * @author wutianbin
 */
public enum UserTypeEnum {
	/** "A": "全部类型的用户" */
	ALL("A", "all", "全部", "全部类型的用户"),
	
	/** "F": "飞行员" */
	FLYER("F", "flyer", "飞行员", "飞行员"),

	/** "S": "安全员" */
	SAFETY("S", "safe", "安全员", "安全员"),

	/** "C": "乘务员" */
	CREW("C", "crew", "乘务员", "乘务员"),

	;
	
	UserTypeEnum(String key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	String key;
	
	String code;
	
	String name;
	
	String desc;
	
	public UserTypeEnum valueByKey(String key) {
		for (UserTypeEnum v : UserTypeEnum.values()) {
			if (v.key.equals(key)) {
				return v;
			}
		}
		
		return null; 
	}

	public UserTypeEnum valueByCode(String code) {
		for (UserTypeEnum v : UserTypeEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public UserTypeEnum valueByName(String name) {
		for (UserTypeEnum v : UserTypeEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}
}
