package com.devpro.javaweb23.controller.customer;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.dto.Employee;




@Controller
public class HomeController extends BaseController {
	
	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public String home(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
			throws IOException {
		
//		Đọc dữ liệu từ request-param
//		request-param có cú pháp: ?key=value&k
		String requestData1 = request.getParameter("requestData1");
		String requestData2 = request.getParameter("requestData2");
		System.out.println(requestData1+ " - " +requestData2);
		
//		path-variable có cú pháp: /variable
//		System.out.println(pathVariableName);
		
		
		List<Employee> employees = new ArrayList<Employee>();
		employees.add(new Employee("Employee 1", 20));
		employees.add(new Employee("Employee 2", 30));
		employees.add(new Employee("Employee 3", 40));
		model.addAttribute("employees", employees);
		
		String stringData = "Java web 23";
		model.addAttribute("data1", stringData);
//		đường dẫn tới view
		return "customer/home";
	}
}
