package smart.mall.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import smart.mall.domain.SysUserDO;

/**
 * 用户表(sys_user) 实体类的Dao 
 * 
 * author: wutianbin
 */ 
@Mapper 
public interface SysUserDao extends BaseDao<SysUserDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 
	@Select("select * from sys_user where user_login_name=#{loginName} and status = 1")
	@ResultMap("sysUserMap")
	List<SysUserDO> listForLogin(@Param("loginName") String loginName);
	
	@Update("update sys_user set password = #{newPassword} where user_no=#{userNo}")
	int resetPwd(@Param("userNo") String userNo, @Param("newPassword") String newPassword);

	@Select("select distinct * from sys_user where user_no in (${idStr})")
	@ResultMap("sysUserMap")
	List<SysUserDO> listByIds(@Param("idStr") String idStr);

	@Select("select distinct * from sys_user where user_login_name=#{loginName} and user_no!=#{filterNo}")
	@ResultMap("sysUserMap")
	List<SysUserDO> findByLoginNameEx(@Param("loginName")String loginName, @Param("filterNo")String filterNo);

	@Select("select distinct * from sys_user where user_login_name=#{loginName}")
	@ResultMap("sysUserMap")
	List<SysUserDO> findByLoginName(@Param("loginName")String loginName);

	@Select("select distinct * from sys_user where user_no=#{userNo}")
	@ResultMap("sysUserMap")
	List<SysUserDO> findByNo(@Param("userNo")String userNo);

	@Select("SELECT * FROM sys_user WHERE \r\n" + 
			"  crew_type IN (${crewTypes})\r\n" + 
			"  AND\r\n" + 
			"  user_no NOT IN (SELECT user_no FROM fp_notice_read WHERE notice_id = #{noticeId})")
	@ResultMap("sysUserMap")
	List<SysUserDO> listNoticeUnReaded(@Param("crewTypes")String crewTypes, @Param("noticeId") Integer noticeId);

	@Select("SELECT * FROM sys_user WHERE \r\n" + 
			"  crew_type IN (${crewTypes})\r\n" + 
			"  AND\r\n" + 
			"  user_no NOT IN (SELECT user_no FROM fp_file_learning_read WHERE notice_id = #{noticeId})")
	@ResultMap("sysUserMap")
	List<SysUserDO> listFileUnReaded(@Param("crewTypes")String crewTypes, @Param("noticeId") Integer noticeId);

}

