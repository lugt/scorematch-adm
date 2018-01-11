package smart.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.domain.SmartOrderDO;
import smart.mall.dto.RetResult;
import smart.mall.service.SmartOrderService;

/**
 * 订单表(smart_order) 的后台维护控制类 
 * 
 * author: Frapo
 */ 
@Controller
public class SmartOrderController extends BaseController<SmartOrderDO> {

    @Autowired
    private SmartOrderService smartOrderService;

    @RequestMapping("/smartOrder/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SmartOrderDO example) {
        return super.list(example);
    }

    @RequestMapping("/smartOrder/listPage")
    @Override
    public String listPage(Model model, SmartOrderDO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/smartOrder/savePage")
    @Override
    public String savePage(SmartOrderDO t, Model model) {
        return super.savePage(t, model);
    }

    @RequestMapping("/smartOrder/updatePage")
    @Override
    public String updatePage(SmartOrderDO t, Model model) {
        return super.updatePage(t, model);
    }

    @RequestMapping("/smartOrder/saveBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> saveBatch(@RequestBody List<SmartOrderDO> list) {
        return super.saveBatch(list);
    }

    @RequestMapping("/smartOrder/deleteBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> deleteBatch(@RequestBody List<SmartOrderDO> list) {
        return super.deleteBatch(list);
    }

    @RequestMapping("/smartOrder/updateBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> updateBatch(@RequestBody List<SmartOrderDO> list) {
        return super.updateBatch(list);
    }

    @RequestMapping("/smartOrder/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SmartOrderDO key) {
        return super.getByKey(key);
    }

}

