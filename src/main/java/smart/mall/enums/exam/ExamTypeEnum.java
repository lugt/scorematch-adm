package smart.mall.enums.exam;

/**
 * 试题类型的枚举定义： P 航前准备题, O 专项考试题
 * 
 * @author wutianbin
 */
public enum ExamTypeEnum {
	/** "P", "prepare", "航前准备题", "航前准备题" */
	PREPARE("P", "prepare", "航前准备题", "航前准备题"),
	
	/** "O", "special", "专项考试题", "专项考试题" */
	SPECIAL("O", "special", "专项考试题", "专项考试题"),
	
	;
	
	ExamTypeEnum(String key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	String key;
	
	String code;
	
	String name;
	
	String desc;
	
	public ExamTypeEnum valueByKey(String key) {
		for (ExamTypeEnum v : ExamTypeEnum.values()) {
			if (v.key.equals(key)) {
				return v;
			}
		}
		
		return null; 
	}

	public ExamTypeEnum valueByCode(String code) {
		for (ExamTypeEnum v : ExamTypeEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public ExamTypeEnum valueByName(String name) {
		for (ExamTypeEnum v : ExamTypeEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}
	
}
