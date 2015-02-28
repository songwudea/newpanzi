package com.panzi.repository.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.panzi.modules.MenusParent;
import com.panzi.repository.EntityDao;
import com.panzi.repository.JdbcEntityDao;

@Repository
@EntityDao(Table = "menus_parent")
public class MenusParentDao  extends JdbcEntityDao<MenusParent, Integer>{

	/**
	 * 获取所有父级菜单
	 * @return
	 */
	public List<MenusParent> findParentMenus() {
		StringBuffer sb = new StringBuffer();
		sb.append(" select * from menus_parent");
		return find(sb.toString());
	}
	
}
