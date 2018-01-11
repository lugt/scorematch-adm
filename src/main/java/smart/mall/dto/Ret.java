package smart.mall.dto;

public enum Ret {

	OK("10000", "成功"), //
	PATH("20001", "路径错误"), //
	PARAM("20002", "参数错误"), //
	/////////////////////////////
	UNKNOWN("99999", "未知错误");

	private Ret(String code, String descr) {
		this.code = code;
		this.descr = descr;
	}

	/**
	 * 返回码
	 */
	private String code;
	/**
	 * 描述
	 */
	private String descr;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescr() {
		return descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}

}