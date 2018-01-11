package smart.mall.enums;

/**
 * 是否公开信息： 1 公开，   0 隐藏
 * 
 * @author wutianbin
 */
public enum OpenEnum {
	/** 0   隐藏 */
	HIDE(0, "hide", "隐藏", "隐藏"),
	
	/** 1 公开 */
	OPEN(1, "open", "公开", "公开"),
	
	;
	
	OpenEnum(int key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	int key;
	
	String code;
	
	String name;
	
	String desc;
	
	public OpenEnum valueByKey(int key) {
		for (OpenEnum v : OpenEnum.values()) {
			if (v.key == key) {
				return v;
			}
		}
		
		return null; 
	}

	public OpenEnum valueByCode(String code) {
		for (OpenEnum v : OpenEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public OpenEnum valueByName(String name) {
		for (OpenEnum v : OpenEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}

}
