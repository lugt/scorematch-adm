package smart.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.domain.SmartDeliveryAddrDO;
import smart.mall.dto.RetResult;
import smart.mall.service.SmartDeliveryAddrService;

/**
 * 用户地址(smart_delivery_addr) 的后台维护控制类 
 * 
 * author: Frapo
 */ 
@Controller
public class SmartDeliveryAddrController extends BaseController<SmartDeliveryAddrDO> {

    @Autowired
    private SmartDeliveryAddrService smartDeliveryAddrService;

    @RequestMapping("/smartDeliveryAddr/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SmartDeliveryAddrDO example) {
        return super.list(example);
    }

    @RequestMapping("/smartDeliveryAddr/listPage")
    @Override
    public String listPage(Model model, SmartDeliveryAddrDO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/smartDeliveryAddr/savePage")
    @Override
    public String savePage(SmartDeliveryAddrDO t, Model model) {
        return super.savePage(t, model);
    }

    @RequestMapping("/smartDeliveryAddr/updatePage")
    @Override
    public String updatePage(SmartDeliveryAddrDO t, Model model) {
        return super.updatePage(t, model);
    }

    @RequestMapping("/smartDeliveryAddr/saveBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> saveBatch(@RequestBody List<SmartDeliveryAddrDO> list) {
        return super.saveBatch(list);
    }

    @RequestMapping("/smartDeliveryAddr/deleteBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> deleteBatch(@RequestBody List<SmartDeliveryAddrDO> list) {
        return super.deleteBatch(list);
    }

    @RequestMapping("/smartDeliveryAddr/updateBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> updateBatch(@RequestBody List<SmartDeliveryAddrDO> list) {
        return super.updateBatch(list);
    }

    @RequestMapping("/smartDeliveryAddr/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SmartDeliveryAddrDO key) {
        return super.getByKey(key);
    }

}

