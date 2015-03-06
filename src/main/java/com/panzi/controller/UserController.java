package com.panzi.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.panzi.common.Constants;
import com.panzi.modules.BackSession;
import com.panzi.modules.MenusParent;
import com.panzi.modules.User;
import com.panzi.repository.Page;
import com.panzi.service.MenusParentService;


@Controller
public class UserController {
	
	private static final Log log = LogFactory.getLog(UserController.class);
	
	@Autowired
	private MenusParentService menusParentService;
	
	@RequestMapping(value="admin/login.html",method = RequestMethod.GET)
	public String indexLogin(){   
        return "login";
    }   
	
	/**
	 * 首页
	 * @param request
	 * @return
	 */
	@RequestMapping(value="admin/index.html",method = RequestMethod.GET)
	public String index(HttpServletRequest request,Page<MenusParent> pageMenu,MenusParent menusParent){
		pageMenu = menusParentService.findAllMenus(pageMenu,menusParent);
		 List<MenusParent> aaData = pageMenu.getAaData();
		if(null != aaData && !aaData.isEmpty()){
			request.setAttribute("allParentMenus", aaData);
		}
        return "index";
    } 
	
	
	/**
	 * 获取菜单信息
	 * @param request
	 * @return
	 */
/*	@RequestMapping(value="admin/menu/index.html",method = RequestMethod.POST)
	public @ResponseBody String index2(HttpServletRequest request,Page<MenusParent> pageMenu,MenusParent menusParent){
		pageMenu = menusParentService.findAllMenus(pageMenu,menusParent);
		String jsonString = JSON.toJSONString(pageMenu.getAaData());
		return jsonString;
    } */
	
	
	/**
	 * 登陆验证
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping(value="admin/loginValidate.html",method=RequestMethod.POST)
	public String loginValidate(User user,HttpServletRequest request){
		if((null!=user) && (null!=user.getUsername()) && (null!=user.getPassword())){
			if(("admin".equals(user.getUsername()) && "admin".equals(user.getPassword()))){
				//登录成功后跳转到首页
				BackSession bs = new BackSession();
				bs.setUsername(user.getUsername());
				bs.setPassword(user.getPassword());
				request.getSession().setAttribute(Constants.BACK_EMPLOYEE_SESSION,bs);
				log.info("登录成功.");
				return "redirect:index.html";
			}else{
				return "redirect:login.html";
			}
		}
		return "redirect:login.html";
		
	}
	
	
	/**
	 * 注销用户登录
	 * @param request
	 * @param site
	 * @return
	 */
	@RequestMapping(value = "admin/logout.html", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/admin/login.html";
	}
	

}
