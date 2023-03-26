package com.devpro.javaweb23.controller.customer;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//1. Báo cho spring-mvc biết đây là 1 controller
//2. Tạo ra một Bean(Object/Instance) và được quản lí bởi spring-container
@Controller
public class SimpleController {

	// đăng kí 1 request cho controller này
	@RequestMapping(value = { "/test" }, method = RequestMethod.GET)
	public void test(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		response.getWriter().print("ABC");
	}

}
