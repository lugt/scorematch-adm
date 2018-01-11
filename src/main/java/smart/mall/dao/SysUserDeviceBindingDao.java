package smart.mall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import smart.mall.domain.SysUserDeviceBindingDO;

/**
 * 用户绑定设备表(sys_user_device_binding) 实体类的Dao 
 * 
 * author: wutianbin
 */ 
@Mapper 
public interface SysUserDeviceBindingDao extends BaseDao<SysUserDeviceBindingDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

	@Update("update sys_user_device_binding set on_black_list = 1 where id=#{id}")
	int putOnBlackList(@Param("id")Integer id);

	@Update("update sys_user_device_binding set on_black_list = 0 where id=#{id}")
	int takeOffBlackList(@Param("id")Integer id);
	
}

