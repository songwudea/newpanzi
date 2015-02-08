package com.panzi.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.panzi.common.Constants;
import com.panzi.modules.BackSession;
import com.panzi.modules.User;


@Controller
public class UserController {
	
	//private static final Log log = LogFactory.getLog(UserController.class);
	
	@RequestMapping(value="admin/login.html",method = RequestMethod.GET)
	public String indexLogin(){   
        return "login";
    }   
	
	@RequestMapping(value="admin/index.html",method = RequestMethod.GET)
	public String index(){   
        return "index";
    } 
	
	
	@RequestMapping(value="admin/loginValidate.html",method=RequestMethod.POST)
	public String loginValidate(User user,HttpServletRequest request){
		if((null!=user) && (null!=user.getUsername()) && (null!=user.getPassword())){
			if(("admin".equals(user.getUsername()) && "admin".equals(user.getPassword()))){
				//登录成功后跳转到首页
				BackSession bs = new BackSession();
				bs.setUsername(user.getUsername());
				bs.setPassword(user.getPassword());
				request.getSession().setAttribute(Constants.BACK_EMPLOYEE_SESSION,bs);
				return "redirect:index.html";
			}else{
				return "redirect:login.html";
			}
		}
		return "redirect:login.html";
		
	}
	
	

}
