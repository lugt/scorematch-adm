package smart.mall.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.SysUserDeviceBindingDao;
import smart.mall.service.SysUserDeviceBindingService;
import smart.mall.service.SysUserService;
import smart.mall.domain.SysUserDO;
import smart.mall.domain.SysUserDeviceBindingDO;
import smart.mall.dto.Page;
import smart.mall.dto.RetResult;
import smart.mall.dto.SysUserDeviceBindingDTO;
import smart.mall.dao.SysUserDeviceBindingDao;

/**
 * 用户绑定设备表(sys_user_device_binding) 实体类的数据服务类实现 
 * 
 * author: wutianbin
 */ 
@Service
@Primary
public class SysUserDeviceBindingServiceImpl extends BaseServiceImpl<SysUserDeviceBindingDO>
        implements SysUserDeviceBindingService {
    @Autowired 
    private SysUserService sysUserService;
    
    @Autowired 
    private SysUserDeviceBindingDao sysUserDeviceBindingDao;

    @SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
    public Page listPage(Integer page, Integer pageSize, SysUserDeviceBindingDO example) {
        Page ret = super.listPage(page, pageSize, example, "id desc");
        
        Map<String, SysUserDO> userMap = getUserMap(ret.getList());
        
        List destList = new ArrayList<>(ret.getList().size());
        for (Object obj : ret.getList()) {
        	SysUserDeviceBindingDTO dto = new SysUserDeviceBindingDTO();
            BeanUtils.copyProperties(obj, dto);
            
            if(userMap != null && userMap.containsKey(dto.getUserNo())){
                dto.setUserName(userMap.get(dto.getUserNo()).getUserName());
            }
            
            destList.add(dto);
        }

        ret.setList(destList);

        return ret;
    }

	@Override
	public RetResult<Integer> putOnBlackListBatch(List<SysUserDeviceBindingDO> list) {
		int ret = 0;
		for (SysUserDeviceBindingDO device : list) {
			Integer id = device.getId();
			ret = ret + sysUserDeviceBindingDao.putOnBlackList(id);
		}
		return new RetResult<Integer>(ret);
	}

	@Override
	public RetResult<Integer> takeOffBlackListBatch(List<SysUserDeviceBindingDO> list) {
		int ret = 0;
		for (SysUserDeviceBindingDO device : list) {
			Integer id = device.getId();
			ret = ret + sysUserDeviceBindingDao.takeOffBlackList(id);
		}
		return new RetResult<Integer>(ret);
	}

	@SuppressWarnings({ "rawtypes" })
	private Map<String, SysUserDO> getUserMap(List readDOList) {
    	List<String> ids = getUserIdList(readDOList);
    	Map<String, SysUserDO> objMap = sysUserService.listByIds(ids);
    	return objMap;
	}

	@SuppressWarnings({ "rawtypes" })
    private List<String> getUserIdList(List list) {
    	List<String> ids = new ArrayList<String>();
    	
    	for (Object obj : list) {
    		SysUserDeviceBindingDO ndo = (SysUserDeviceBindingDO) obj;
    		String userNo = ndo.getUserNo();
    		if (userNo != null && !userNo.trim().isEmpty()) {
    			ids.add(userNo);
    		}
    	}
    	
		return ids;
	}

}

