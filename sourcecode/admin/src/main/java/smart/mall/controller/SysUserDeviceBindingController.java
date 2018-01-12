package smart.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.domain.SysUserDeviceBindingDO;
import smart.mall.dto.RetResult;
import smart.mall.dto.SysUserDeviceBindingDTO;
import smart.mall.service.SysUserDeviceBindingService;
import smart.mall.domain.SysUserDeviceBindingDO;
import smart.mall.dto.RetResult;
import smart.mall.dto.SysUserDeviceBindingDTO;
import smart.mall.service.SysUserDeviceBindingService;

/**
 * 用户绑定设备表(sys_user_device_binding) 的后台维护控制类 
 * 
 * author: wutianbin
 */ 
@Controller
public class SysUserDeviceBindingController extends BaseController<SysUserDeviceBindingDO> {

    @Autowired
    private SysUserDeviceBindingService sysUserDeviceBindingService;

    @RequestMapping("/sysUserDeviceBinding/listPage")
    public String listPage(Model model, SysUserDeviceBindingDTO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/sysUserDeviceBinding/putOnBlackListBatch")
    @ResponseBody
    public RetResult<Integer> putOnBlackListBatch(@RequestBody List<SysUserDeviceBindingDO> list) {
        return sysUserDeviceBindingService.putOnBlackListBatch(list);
    }

    @RequestMapping("/sysUserDeviceBinding/takeOffBlackListBatch")
    @ResponseBody
    public RetResult<Integer> takeOffBlackListBatch(@RequestBody List<SysUserDeviceBindingDO> list) {
        return sysUserDeviceBindingService.takeOffBlackListBatch(list);
    }

    @RequestMapping("/sysUserDeviceBinding/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SysUserDeviceBindingDO key) {
        return super.getByKey(key);
    }

}

