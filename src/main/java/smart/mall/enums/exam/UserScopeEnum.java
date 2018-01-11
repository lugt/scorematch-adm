package smart.mall.enums.exam;

/**
 * 面向考试用户范围： 1 全体，2 特定范围
 * 
 * @author wutianbin
 */
public enum UserScopeEnum {
	/** 1: 全体 */
	ALL("1", "all", "全体", "全体用户"),
	
	/** 2: 特定范围 */
	SPECIAL("2", "special", "特定范围 ", "特定范围 的用户"),
	
	;
	
	UserScopeEnum(String key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	String key;
	
	String code;
	
	String name;
	
	String desc;
	
	public UserScopeEnum valueByKey(String key) {
		for (UserScopeEnum v : UserScopeEnum.values()) {
			if (v.key.equals(key)) {
				return v;
			}
		}
		
		return null; 
	}

	public UserScopeEnum valueByCode(String code) {
		for (UserScopeEnum v : UserScopeEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public UserScopeEnum valueByName(String name) {
		for (UserScopeEnum v : UserScopeEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
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
	
}
