package smart.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.domain.SmartLocalDeliveryDO;
import smart.mall.dto.RetResult;
import smart.mall.service.SmartLocalDeliveryService;

/**
 * 发货派送(smart_local_delivery) 的后台维护控制类 
 * 
 * author: Frapo
 */ 
@Controller
public class SmartLocalDeliveryController extends BaseController<SmartLocalDeliveryDO> {

    @Autowired
    private SmartLocalDeliveryService smartLocalDeliveryService;

    @RequestMapping("/smartLocalDelivery/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SmartLocalDeliveryDO example) {
        return super.list(example);
    }

    @RequestMapping("/smartLocalDelivery/listPage")
    @Override
    public String listPage(Model model, SmartLocalDeliveryDO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/smartLocalDelivery/savePage")
    @Override
    public String savePage(SmartLocalDeliveryDO t, Model model) {
        return super.savePage(t, model);
    }

    @RequestMapping("/smartLocalDelivery/updatePage")
    @Override
    public String updatePage(SmartLocalDeliveryDO t, Model model) {
        return super.updatePage(t, model);
    }

    @RequestMapping("/smartLocalDelivery/saveBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> saveBatch(@RequestBody List<SmartLocalDeliveryDO> list) {
        return super.saveBatch(list);
    }

    @RequestMapping("/smartLocalDelivery/deleteBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> deleteBatch(@RequestBody List<SmartLocalDeliveryDO> list) {
        return super.deleteBatch(list);
    }

    @RequestMapping("/smartLocalDelivery/updateBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> updateBatch(@RequestBody List<SmartLocalDeliveryDO> list) {
        return super.updateBatch(list);
    }

    @RequestMapping("/smartLocalDelivery/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SmartLocalDeliveryDO key) {
        return super.getByKey(key);
    }

}

