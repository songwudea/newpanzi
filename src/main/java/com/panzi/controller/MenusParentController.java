package com.panzi.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.panzi.modules.MenusParent;
import com.panzi.repository.Page;
import com.panzi.service.MenusParentService;


@Controller
@RequestMapping("/admin/menu")
public class MenusParentController {
	
	private static final Log log = LogFactory.getLog(UserController.class);
	
	@Autowired
	private MenusParentService menusParentService;
	
	
	/**
	 * 获取所有父级菜单,这里返回的是json字符串,供前台分页使用
	 * @return
	 */
	@RequestMapping(value = "list.html", method = RequestMethod.POST)
	@ResponseBody
	public String findAllMenus(Page<MenusParent> pageMenu,MenusParent menusParent) {
		Page<MenusParent> findParentMenus = menusParentService.findAllMenus(pageMenu,menusParent);
		String jsonString = JSON.toJSONString(findParentMenus);
		return jsonString;
	}
	

}
