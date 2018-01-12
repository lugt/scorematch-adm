package smart.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.domain.SmartGoodsDO;
import smart.mall.dto.RetResult;
import smart.mall.service.SmartGoodsService;

/**
 * 商品信息表(smart_goods) 的后台维护控制类 
 * 
 * author: Frapo
 */ 
@Controller
public class SmartGoodsController extends BaseController<SmartGoodsDO> {

    @Autowired
    private SmartGoodsService smartGoodsService;

    @RequestMapping("/smartGoods/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SmartGoodsDO example) {
        return super.list(example);
    }

    @RequestMapping("/smartGoods/listPage")
    @Override
    public String listPage(Model model, SmartGoodsDO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/smartGoods/savePage")
    @Override
    public String savePage(SmartGoodsDO t, Model model) {
        return super.savePage(t, model);
    }

    @RequestMapping("/smartGoods/updatePage")
    @Override
    public String updatePage(SmartGoodsDO t, Model model) {
        return super.updatePage(t, model);
    }

    @RequestMapping("/smartGoods/saveBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> saveBatch(@RequestBody List<SmartGoodsDO> list) {
        return super.saveBatch(list);
    }

    @RequestMapping("/smartGoods/deleteBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> deleteBatch(@RequestBody List<SmartGoodsDO> list) {
        return super.deleteBatch(list);
    }

    @RequestMapping("/smartGoods/updateBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> updateBatch(@RequestBody List<SmartGoodsDO> list) {
        return super.updateBatch(list);
    }

    @RequestMapping("/smartGoods/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SmartGoodsDO key) {
        return super.getByKey(key);
    }

}

