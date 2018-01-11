package smart.mall.enums.sys;

/**
 * 资源类型: M 菜单， B 按钮
 * 
 * @author wutianbin
 */
public enum ResTypeEnum {
	/** M 菜单 */
	MENU("M", "menu", "菜单", "菜单"),
	
	/** B 按钮 */
	BUTTON("B", "button", "按钮", "按钮"),
	
	;
	
	ResTypeEnum(String key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	String key;
	
	String code;
	
	String name;
	
	String desc;
	
	public ResTypeEnum valueByKey(String key) {
		for (ResTypeEnum v : ResTypeEnum.values()) {
			if (v.key.equals(key)) {
				return v;
			}
		}
		
		return null; 
	}

	public ResTypeEnum valueByCode(String code) {
		for (ResTypeEnum v : ResTypeEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public ResTypeEnum valueByName(String name) {
		for (ResTypeEnum v : ResTypeEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}
	
}
