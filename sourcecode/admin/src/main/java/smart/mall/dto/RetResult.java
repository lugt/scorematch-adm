package smart.mall.dto;

import java.io.Serializable;

/**
 * 
 * 返回结果
 * 
 * @author kuangjianbo
 * 
 * @param <T>
 */
public class RetResult<T> implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public RetResult() {
		super();
	}

	public RetResult(T model) {
		this.ret = Ret.OK.getCode();
		this.model = model;
	}

	public RetResult(Ret ret) {
		this.ret = ret.getCode();
		this.detail = ret.getDescr();
	}

	public RetResult(Ret ret, String field) {
		this.ret = ret.getCode();
		this.detail = ret.getDescr();
		this.field = field;
	}

	public static RetResult<Integer> errorRet(String errorMsg) {
		RetResult<Integer> result = new RetResult<>(-1);
		result.setRet(Ret.PARAM.getCode());
		result.setDetail(errorMsg);
		return result;
	}
	/**
	 * 操作结果描述<br>
	 * {@link Ret#OK} (10000)表示成功,否则失败<br>
	 */
	private String ret;

	/**
	 * 如果返回不成功,会有具体描述
	 */
	private String detail;

	/**
	 * 如果返回不成功,涉及的字段或者数据
	 */
	private String field;

	/**
	 * 返回的具体数据
	 */
	private T model;

	public String getRet() {
		return ret;
	}

	public void setRet(String ret) {
		this.ret = ret;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public T getModel() {
		return model;
	}

	public void setModel(T model) {
		this.model = model;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	@Override
	public String toString() {
		return "RetResult [ret=" + ret + ", detail=" + detail + ", field=" + field + ", model=" + model + "]";
	}

}
