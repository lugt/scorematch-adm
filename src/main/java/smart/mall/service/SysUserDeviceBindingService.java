package smart.mall.service;

import java.util.List;

import smart.mall.domain.SysUserDeviceBindingDO;
import smart.mall.dto.RetResult;

/**
 * 用户绑定设备表(sys_user_device_binding) 实体类的数据服务类 
 * 
 * author: wutianbin
 */ 
public interface SysUserDeviceBindingService extends BaseService<SysUserDeviceBindingDO> {

	RetResult<Integer> putOnBlackListBatch(List<SysUserDeviceBindingDO> list);

	RetResult<Integer> takeOffBlackListBatch(List<SysUserDeviceBindingDO> list);

}

