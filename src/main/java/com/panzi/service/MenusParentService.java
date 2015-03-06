package com.panzi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.panzi.modules.MenusParent;
import com.panzi.repository.Page;
import com.panzi.repository.dao.MenusParentDao;


@Service
public class MenusParentService {
	
	@Autowired
	private MenusParentDao menusParentDao;
	
	
	/**
	 * 获取所有父级菜单
	 * @return
	 */
	public Page<MenusParent> findAllMenus(Page<MenusParent> pageMenu,MenusParent menusParent) {
		return menusParentDao.findParentMenus(pageMenu,menusParent);
	}
	
	
	

}
