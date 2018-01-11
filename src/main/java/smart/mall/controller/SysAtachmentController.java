package smart.mall.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import smart.mall.domain.SysAtachmentDO;
import smart.mall.dto.RetResult;
import smart.mall.service.SysAtachmentService;
import org.springframework.web.multipart.MultipartFile;
import smart.mall.service.SysAtachmentService;

/**
 * 附件(sys_atachment) 的后台维护控制类 
 * 
 * author: wutianbin
 */ 
@Controller
public class SysAtachmentController extends BaseController<SysAtachmentDO> {

    private static final String SEPERATOR = "/";
    @Autowired
    private SysAtachmentService sysAtachmentService;

    @RequestMapping("/sysAtachment/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SysAtachmentDO example) {
        return super.list(example);
    }

    @RequestMapping("/sysAtachment/listPage")
    @Override
    public String listPage(Model model, SysAtachmentDO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/sysAtachment/savePage")
    @Override
    public String savePage(SysAtachmentDO t, Model model) {
        return super.savePage(t, model);
    }

    @RequestMapping("/sysAtachment/updatePage")
    @Override
    public String updatePage(SysAtachmentDO t, Model model) {
        return super.updatePage(t, model);
    }

    @RequestMapping("/sysAtachment/saveBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> saveBatch(@RequestBody List<SysAtachmentDO> list) {
        return super.saveBatch(list);
    }


    @RequestMapping("/sysAtachment/deleteBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> deleteBatch(@RequestBody List<SysAtachmentDO> list) {
        return super.deleteBatch(list);
    }

    @RequestMapping("/sysAtachment/updateBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> updateBatch(@RequestBody List<SysAtachmentDO> list) {
        return super.updateBatch(list);
    }

    @RequestMapping("/sysAtachment/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SysAtachmentDO key) {
        return super.getByKey(key);
    }


    @RequestMapping("/sysAtachment/saveOne")
    @ResponseBody
    public String saveOne(@RequestBody SysAtachmentDO atachment) {

        String parentTableName = atachment.getParentTableName();
        String parentRowId = atachment.getParentRowId();
        String filePath = atachment.getFilePath();

        if(parentTableName == null || parentRowId == null || filePath == null){
            return "{\"ret\":\"-1002\",\"model\":\"fail_param\"}";
        }

        String[] files = filePath.split(",");
        List<SysAtachmentDO> lst = new ArrayList<>();

        for(String fileName : files) {
            SysAtachmentDO atachmentDO = new SysAtachmentDO();
            //BeanUtils.copyProperties(atachment,atachmentDO);
            atachmentDO.setFilePath(fileName);
            atachmentDO.setFileExtName(getExtensionName(fileName));
            atachmentDO.setFileName(getFileName(fileName));
            atachmentDO.setParentTableName(parentTableName);
            atachmentDO.setParentRowId(parentRowId+"");
            lst.add(atachmentDO);
            // 保存附件
        }

        RetResult<Integer> ret = this.saveBatch(lst);
        if(ret.getModel().intValue() <= 0){
            return "{\"ret\":\"-1002\",\"model\":\"saving_error\"}";
        }

        try {
            JSONObject jsob = new JSONObject();
            jsob.put("ret","10000");
            jsob.put("model","success");
//            jsob.put("uploadUrl",result);
            return jsob.toString();
        } catch (JSONException e) {
            e.printStackTrace();
        }

        return "{\"ret\":\"-1002\",\"model\":\"json_error\"}";
    }

    private String getExtensionName(String fileName) {
        int pos = fileName.lastIndexOf(SEPERATOR);
        String filename = fileName.substring(pos + 1);
        if ((filename != null) && (filename.length() > 0)) {
            int dot = filename.lastIndexOf('.');
            if ((dot > -1) && (dot < (filename.length() - 1))) {
                return filename.substring(dot + 1).toLowerCase();
            }
        }
        return filename;
    }

    private String getFileName(String fileName) {
        int pos = fileName.lastIndexOf(SEPERATOR);
        return fileName.substring(pos + 1);
    }
}

