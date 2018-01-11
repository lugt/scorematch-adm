package smart.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.domain.SmartUserAddrsDO;
import smart.mall.dto.RetResult;
import smart.mall.service.SmartUserAddrsService;

/**
 * 用户地址综合(smart_user_addrs) 的后台维护控制类 
 * 
 * author: Frapo
 */ 
@Controller
public class SmartUserAddrsController extends BaseController<SmartUserAddrsDO> {

    @Autowired
    private SmartUserAddrsService smartUserAddrsService;

    @RequestMapping("/smartUserAddrs/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SmartUserAddrsDO example) {
        return super.list(example);
    }

    @RequestMapping("/smartUserAddrs/listPage")
    @Override
    public String listPage(Model model, SmartUserAddrsDO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/smartUserAddrs/savePage")
    @Override
    public String savePage(SmartUserAddrsDO t, Model model) {
        return super.savePage(t, model);
    }

    @RequestMapping("/smartUserAddrs/updatePage")
    @Override
    public String updatePage(SmartUserAddrsDO t, Model model) {
        return super.updatePage(t, model);
    }

    @RequestMapping("/smartUserAddrs/saveBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> saveBatch(@RequestBody List<SmartUserAddrsDO> list) {
        return super.saveBatch(list);
    }

    @RequestMapping("/smartUserAddrs/deleteBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> deleteBatch(@RequestBody List<SmartUserAddrsDO> list) {
        return super.deleteBatch(list);
    }

    @RequestMapping("/smartUserAddrs/updateBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> updateBatch(@RequestBody List<SmartUserAddrsDO> list) {
        return super.updateBatch(list);
    }

    @RequestMapping("/smartUserAddrs/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SmartUserAddrsDO key) {
        return super.getByKey(key);
    }

}

