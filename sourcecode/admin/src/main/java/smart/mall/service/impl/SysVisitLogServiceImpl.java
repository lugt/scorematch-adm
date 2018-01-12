package smart.mall.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.service.SysUserService;
import smart.mall.service.SysVisitLogService;
import smart.mall.domain.SysUserDO;
import smart.mall.domain.SysVisitLogDO;
import smart.mall.dto.Page;
import smart.mall.dto.SysVisitLogDTO;

/**
 * 系统API调用日志表(sys_visit_log) 实体类的数据服务类实现 
 * 
 * author: wutianbin
 */ 
@Service
@Primary
public class SysVisitLogServiceImpl extends BaseServiceImpl<SysVisitLogDO>
        implements SysVisitLogService {

    @Autowired 
    private SysUserService sysUserService;

    @SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
    public Page listPage(Integer page, Integer pageSize, SysVisitLogDO example) {
        Page ret = super.listPage(page, pageSize, example, "log_id desc");
        
        Map<String, SysUserDO> userMap = getUserMap(ret.getList());
        
        List destList = new ArrayList<>(ret.getList().size());
        for (Object obj : ret.getList()) {
        	SysVisitLogDTO dto = new SysVisitLogDTO();
            BeanUtils.copyProperties(obj, dto);
            
            if(userMap != null && userMap.containsKey(dto.getUserNo())){
                dto.setUserName(userMap.get(dto.getUserNo()).getUserName());
            }
            
            destList.add(dto);
        }

        ret.setList(destList);

        return ret;
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
    		SysVisitLogDO ndo = (SysVisitLogDO) obj;
    		String userNo = ndo.getUserNo();
    		if (userNo != null && !userNo.trim().isEmpty()) {
    			ids.add(userNo);
    		}
    	}
    	
		return ids;
	}
	
}

