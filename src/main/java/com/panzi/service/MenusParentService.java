package com.panzi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.panzi.modules.MenusParent;
import com.panzi.repository.dao.MenusParentDao;


@Service
public class MenusParentService {
	
	@Autowired
	private MenusParentDao menusParentDao;
	
	
	/**
	 * 获取所有父级菜单
	 * @return
	 */
	public List<MenusParent> findAllMenus() {
		List<MenusParent> findParentMenus = menusParentDao.findParentMenus();
		return findParentMenus;
	}
	
	
	

}
