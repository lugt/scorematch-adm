package smart.mall.enums.sys;

/**
 * 是否显示： 1 显示， 0 不显示
 * 
 * @author wutianbin
 */
public enum IsShowEnum {
	/** 0 不显示 */
	HIDE(0, "hide", "不显示", "不显示"),
	
	/** 1 显示 */
	SHOW(1, "show", "显示", "显示"),
	
	;
	
	IsShowEnum(int key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	int key;
	
	String code;
	
	String name;
	
	String desc;
	
	public IsShowEnum valueByKey(int key) {
		for (IsShowEnum v : IsShowEnum.values()) {
			if (v.key == key) {
				return v;
			}
		}
		
		return null; 
	}

	public IsShowEnum valueByCode(String code) {
		for (IsShowEnum v : IsShowEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public IsShowEnum valueByName(String name) {
		for (IsShowEnum v : IsShowEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}
	
}
