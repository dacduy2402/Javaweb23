package com.devpro.javaweb23.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.controller.customer.BaseController;

@Controller
public class LoginController extends BaseController{
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String registry(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
	{

//		đường dẫn tới view
		return "login";
	}
}
