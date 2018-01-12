package smart.mall.enums.exam;

/**
 * 生成试卷方式： 1 随机 ，  2 指定在FP_EXAM_PAPER_QUEST中存题目
 * 
 * @author wutianbin
 */
public enum ExamQuestScopeEnum {
	/** 1: 随机 */
	RANDOM("1", "random", "随机", "随机生成考试题目"),
	
	/** 2: 指定在FP_EXAM_PAPER_QUEST中存题目 */
	SPECIAL("2", "special", "指定 ", "指定在FP_EXAM_PAPER_QUEST中存题目"),
	
	;
	
	ExamQuestScopeEnum(String key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	String key;
	
	String code;
	
	String name;
	
	String desc;
	
	public ExamQuestScopeEnum valueByKey(String key) {
		for (ExamQuestScopeEnum v : ExamQuestScopeEnum.values()) {
			if (v.key.equals(key)) {
				return v;
			}
		}
		
		return null; 
	}

	public ExamQuestScopeEnum valueByCode(String code) {
		for (ExamQuestScopeEnum v : ExamQuestScopeEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public ExamQuestScopeEnum valueByName(String name) {
		for (ExamQuestScopeEnum v : ExamQuestScopeEnum.values()) {
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
