package com.devpro.javaweb23.controller.administrator;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.dto.Paging;
import com.devpro.javaweb23.model.Contact;
import com.devpro.javaweb23.services.PagerData;
import com.devpro.javaweb23.services.impl.ContactService;

@Controller
public class AdminMessageController {
	@Autowired
	ContactService contactService;
	
	@RequestMapping(value = { "/admin/message" }, method = RequestMethod.GET)
	public String message(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
	{

//		List<Contact> contacts= contactService.getEntitiesByNativeSQL("SELECT * FROM shop_javaweb23.tbl_contact ORDER BY `created_date` DESC");
//		model.addAttribute("contacts", contacts);
		
		// lấy keyword
		String keyword = request.getParameter("keyword");
		// lấy số page hiện tại
		String currentPage = request.getParameter("page");
		
		Paging paging = new Paging();
		paging.setKeyword(keyword);
		paging.setCurrentPage(currentPage);
		
		model.addAttribute("paging", paging);
		PagerData<Contact> contacts = contactService.pagingPage(paging);
		model.addAttribute("contacts", contacts);
//		đường dẫn tới view
		return "administrator/message";
	}
}
