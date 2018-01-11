package smart.mall.dto;

import java.util.ArrayList;
import java.util.List;

public class SysRoleDTOTest {

	public static void main(String args[]) {
		SysRoleDTO dto = new SysRoleDTO();
		dto.setId(1);
		dto.setName("roleName");
		
		List<Integer> menuIds = new ArrayList<Integer>();
		menuIds.add(10);
		menuIds.add(11);
		menuIds.add(20);
		
		//dto.setMenuIds(menuIds);

		System.out.println(dto.toString());
	}
}
