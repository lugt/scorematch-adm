package smart.mall.controller;

import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.domain.SmartUsersDO;
import smart.mall.dto.RetResult;
import smart.mall.service.SmartUsersService;

/**
 * 用户基本信息(smart_users) 的后台维护控制类 
 * 
 * author: Frapo
 */ 
@Controller
public class SmartUsersController extends BaseController<SmartUsersDO> {

    @Autowired
    private SmartUsersService smartUsersService;

    @RequestMapping("/smartUsers/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SmartUsersDO example) {
        return super.list(example);
    }

    @RequestMapping("/smartUsers/listPage")
    @Override
    public String listPage(Model model, SmartUsersDO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/smartUsers/savePage")
    @Override
    public String savePage(SmartUsersDO t, Model model) {
        return super.savePage(t, model);
    }

    @RequestMapping("/smartUsers/updatePage")
    @Override
    public String updatePage(SmartUsersDO t, Model model) {
        return super.updatePage(t, model);
    }

    @RequestMapping("/smartUsers/saveBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> saveBatch(@RequestBody List<SmartUsersDO> list) {
        return super.saveBatch(list);
    }

    @RequestMapping("/smartUsers/deleteBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> deleteBatch(@RequestBody List<SmartUsersDO> list) {
        return super.deleteBatch(list);
    }

    @RequestMapping("/smartUsers/updateBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> updateBatch(@RequestBody List<SmartUsersDO> list) {
        return super.updateBatch(list);
    }

    @RequestMapping("/smartUsers/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SmartUsersDO key) {
        return super.getByKey(key);
    }

    @RequestMapping("/smartUsers/generatePass")
    @ResponseBody
    public String generatePass(@RequestParam("encode") String encode) throws JSONException {

        try {
            return new JSONObject().put("code",1000).put("outcome",SigninController.PasswordDigest(1,encode)).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return new JSONObject().put("code", -1354).put("outcome","出错啦！").toString();
        }
    }

}

