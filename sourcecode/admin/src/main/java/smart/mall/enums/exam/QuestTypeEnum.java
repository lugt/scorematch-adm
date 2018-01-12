package smart.mall.enums.exam;

/**
 * 题目类型： 1 单项选择， 2 多项选择， 3 填空， 4 问答题
 * 
 * @author wutianbin
 */
public enum QuestTypeEnum {
	/** 1 单项选择   */
	SINGLE(1, "single", "单项选择题", "单项选择题"),
	
	/** 2 多项选择   */
	MULTI(2, "multi", "多项选择题", "多项选择题"),

	/** 3 填空   */
	FILL(3, "fill", "填空题", "填空题"),
	
	/** 4 问答题   */
	QA(4, "Q&A", "问答题", "问答题"),

	JUDGMENT(5, "single", "判断题", "判断题"), 
	;
	
	QuestTypeEnum(int key, String code, String name, String desc) {
		this.key = key;
		this.code = code;
		this.name = name;
		this.desc = desc;
	}
	
	int key;
	
	String code;
	
	String name;
	
	String desc;
	
	public int getKey() {
		return key;
	}

	public void setKey(int key) {
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

	public static QuestTypeEnum valueByKey(int key) {
		for (QuestTypeEnum v : QuestTypeEnum.values()) {
			if (v.key == key) {
				return v;
			}
		}
		
		return null; 
	}

	public static QuestTypeEnum valueByCode(String code) {
		for (QuestTypeEnum v : QuestTypeEnum.values()) {
			if (v.code.equals(code)) {
				return v;
			}
		}
		
		return null; 
	}

	public static QuestTypeEnum valueByName(String name) {
		for (QuestTypeEnum v : QuestTypeEnum.values()) {
			if (v.name.equals(name)) {
				return v;
			}
		}
		
		return null; 
	}
	
}
