package smart.mall.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.SysPersonalDao;
import smart.mall.service.SysPersonalService;
import smart.mall.utils.BeanUtil;
import smart.mall.domain.SysPersonalDO;

/**
 * 个人信息(sys_personal) 实体类的数据服务类实现 
 * 
 * author: wutianbin
 */ 
@Service
@Primary
public class SysPersonalServiceImpl extends BaseServiceImpl<SysPersonalDO>
        implements SysPersonalService {
	private static final Logger logger = LoggerFactory.getLogger(SysPersonalServiceImpl.class);
	
    @Autowired 
    private SysPersonalDao sysPersonalDao;

	@Override
	public Map<String, SysPersonalDO> listByIds(List<String> ids) {
		logger.debug("listByIds(" + ids);
		if (ids == null || ids.size() <= 0) {
			return null;
		}
		
		StringBuffer sb = new StringBuffer();
		for(String id : ids) {
			sb.append(",").append("'" + id + "'");
		}
		
		sb.deleteCharAt(0);
		
		String idStr = sb.toString().trim();
		if (idStr.isEmpty()) {
			return null;
		}
		
		List<SysPersonalDO> list = sysPersonalDao.listByIds(idStr);
		if (list == null || list.size() <= 0) {
			return null;
		}
		
		Map<String, SysPersonalDO> map = new HashMap<>();
		for (SysPersonalDO obj : list) {
			map.put(obj.getUserNo(), obj);
		}
		
		return map;
	}

	public List<String> getUserIdList(List<Object> list) {
    	List<String> ids = new ArrayList<String>();
    	
    	for (Object obj : list) {
    		String userNo = (String)BeanUtil.getFieldValueByName(obj, "userNo");
    		if (userNo != null && !userNo.trim().isEmpty()) {
    			ids.add(userNo);
    		}
    	}
    	
		return ids;
	}

	@Override
	public Map<String, SysPersonalDO> getMapByNo(List<Object> ObjListContainUserNo) {
    	List<String> ids = getUserIdList(ObjListContainUserNo);
    	Map<String, SysPersonalDO> objMap = this.listByIds(ids);
    	return objMap;
	}

}

