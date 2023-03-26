package com.devpro.javaweb23.controller.administrator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.controller.customer.BaseController;

/*
 * Khi tạo controller cho phần admin cần lưu ý:
 * 	1- Tên controller bắt đầu bằng Admin...Controller
 *	2- Các request cho admin controller yêu cầu phải bắt đầu là: /admin/... 
 */

@Controller
public class AdminHomeController extends BaseController{
	@RequestMapping(value = { "/admin/home" }, method = RequestMethod.GET)
	public String home(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
	{
//		đường dẫn tới view
		return "administrator/admin";
	}
}
