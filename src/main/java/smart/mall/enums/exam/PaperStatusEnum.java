package smart.mall.enums.exam;

/**
 * 试卷状态：1 有效, 0 失效
 * 
 * @author wutianbin
 */
public enum PaperStatusEnum {
	/** 0, "invalid", "失效", "失效" */
	INVALID(0, "invalid", "失效", "失效"),
	
	/** 1, "valid", "有效", "有效" */
	VALID(1, "valid", "有效", "有效"),
	
	;
	
	PaperStatusEnum(int key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	int key;
	
	String code;
	
	String name;
	
	String desc;
	
	public PaperStatusEnum valueByKey(int key) {
		for (PaperStatusEnum v : PaperStatusEnum.values()) {
			if (v.key == key) {
				return v;
			}
		}
		
		return null; 
	}

	public PaperStatusEnum valueByCode(String code) {
		for (PaperStatusEnum v : PaperStatusEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public PaperStatusEnum valueByName(String name) {
		for (PaperStatusEnum v : PaperStatusEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}

}
