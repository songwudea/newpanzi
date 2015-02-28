package com.panzi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.panzi.modules.MenusParent;
import com.panzi.service.MenusParentService;


@Controller
@RequestMapping("/admin/menu")
public class MenusParentController {
	
	@Autowired
	private MenusParentService menusParentService;
	
	
	/**
	 * 获取所有父级菜单,这里返回的是json字符串,供前台分页使用
	 * @return
	 */
	@RequestMapping(value = "list.html", method = RequestMethod.POST)
	@ResponseBody
	public String findAllMenus() {
		List<MenusParent> findParentMenus = menusParentService.findAllMenus();
		String jsonString = JSON.toJSONString(findParentMenus);
		return jsonString;
	}
	

}
