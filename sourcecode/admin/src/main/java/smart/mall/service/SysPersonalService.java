package smart.mall.service;

import java.util.List;
import java.util.Map;

import smart.mall.domain.SysPersonalDO;

/**
 * 个人信息(sys_personal) 实体类的数据服务类 
 * 
 * author: wutianbin
 */ 
public interface SysPersonalService extends BaseService<SysPersonalDO> {

	Map<String, SysPersonalDO> listByIds(List<String> ids);

	Map<String, SysPersonalDO> getMapByNo(List<Object> ObjListContainUserNo);

}

