package smart.mall.controller;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import smart.mall.common.UtilString;
import smart.mall.dto.Ret;
import smart.mall.dto.RetResult;
import smart.mall.service.BaseService;

/**
 * 通用业务逻辑基类
 * 
 */
// http://localhost:8080/admin/fpExamDefine/getByKey?key=1
@RequestMapping(value = "/admin")
public class BaseController<T> extends AbstractController {

	@Autowired
	private BaseService<T> baseService;

	protected Class<T> type;

	protected final String baseName;

	@SuppressWarnings("unchecked")
	public BaseController() {
		super();
		String baseName = "unknow";
		Type type = getClass().getGenericSuperclass();
		if (type instanceof ParameterizedType) {
			this.type = (Class<T>) ((ParameterizedType) type).getActualTypeArguments()[0];
			baseName = UtilString.firstToLowerCase(this.type.getSimpleName());
			baseName = baseName.substring(0, baseName.length() - 2);
		}
		this.baseName = baseName;
	}

	////////////////////////////////////////// 页面
	// 保存页面
	// @RequestMapping("/{path}/savePage")
	public String savePage(T t, Model model) {
		return this.baseName + "/save";
	}

	// 更新页面
	// @RequestMapping("/{path}/updatePage")
	public String updatePage(T t, Model model) {
		@SuppressWarnings("rawtypes")
		RetResult ret = this.getByKey(t);
		if (ret.getRet().equals(Ret.OK.getCode())) {
			model.addAttribute("ret", ret);
			logger.debug(model.toString());
			return this.baseName + "/update";
		}
		return null;
	}

	// 分页列表
	// @RequestMapping("/{path}/listPage")
	public String listPage(Model model, T example) {
		@SuppressWarnings("rawtypes")
		RetResult ret = this.list(example);
		if (ret.getRet().equals(Ret.OK.getCode())) {
			model.addAttribute("ret", ret);
			model.addAttribute("query", example);
			return this.baseName + "/list";
		}
		return null;
	}

	///////////////////////////////////////// ajax

	// 批量保存接口
	// @RequestMapping("/{path}/saveBatch")
	// @ResponseBody
	public RetResult<Integer> saveBatch(@RequestBody List<T> list) {
		return new RetResult<>(baseService.saveBatch(list));
	}

	// 批量删除接口
	// @RequestMapping("/{path}/deleteBatch")
	// @ResponseBody
	public RetResult<Integer> deleteBatch(@RequestBody List<T> list) {
		return new RetResult<>(baseService.deleteByKeyBatch(list));
	}

	// 批量更新接口
	// @RequestMapping("/{path}/updateBatch")
	// @ResponseBody
	public RetResult<Integer> updateBatch(@RequestBody List<T> list) {
		return new RetResult<>(baseService.updateBatch(list));
	}

	// 查询单个
	// @RequestMapping("/{path}/getByKey")
	// @ResponseBody
	@SuppressWarnings("rawtypes")
	public RetResult getByKey(T example) {
		RetResult ret = new RetResult<>(this.baseService.getByKey(example));
		return ret;
	}

	// 分页列表
	// @RequestMapping("/{path}/list")
	// @ResponseBody
	@SuppressWarnings("rawtypes")
	public RetResult list(T example) {
		RetResult ret = new RetResult<>(this.baseService.listPage(getPage(), getPageSize(), example));
		return ret;
	}
}
