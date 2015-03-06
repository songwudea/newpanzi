package com.panzi.repository.dao;

import org.springframework.stereotype.Repository;

import com.panzi.modules.MenusParent;
import com.panzi.repository.EntityDao;
import com.panzi.repository.JdbcEntityDao;
import com.panzi.repository.Page;

@Repository
@EntityDao(Table = "menus_parent")
public class MenusParentDao extends JdbcEntityDao<MenusParent, Integer>{

	/**
	 * 获取所有父级菜单
	 * @return
	 */
	public Page<MenusParent> findParentMenus(Page<MenusParent> pageMenu,MenusParent menusParent) {
		StringBuffer sb = new StringBuffer();
		sb.append(" select * from menus_parent where 1 = 1 ");
		//TODO
		//这里可以加查询条件,目前暂时不需要
		pageMenu = findPage(pageMenu, sb.toString());
		return pageMenu;
	}
	
}
