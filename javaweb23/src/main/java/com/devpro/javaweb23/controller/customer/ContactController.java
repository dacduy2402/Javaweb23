package com.devpro.javaweb23.controller.customer;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.dto.ContactDTO;
import com.devpro.javaweb23.model.Contact;
import com.devpro.javaweb23.services.impl.ContactService;



@Controller
public class ContactController extends BaseController{
	
//	inject 1 bean vào trong 1 bean
	@Autowired
	private ContactService contactService;
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
	{
		ContactDTO contactDTO = new ContactDTO();
		model.addAttribute("contactDTO", contactDTO);
//		đường dẫn tới view
		return "customer/contact";
	}
	
	
	/*
	 * Method = Post do ở phần form đang để post
	 * Nếu method của form là get thì các data của input trong form sẽ đẩy lên URL theo request param
	 */
	@RequestMapping(value = { "/contact-post" }, method = RequestMethod.POST)
	public String contactPost(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
	{
//		Cách đọc dữ liệu từ form khi click submit button
//		Cách 1: 
		String firstName = request.getParameter("firstName");
		System.out.println(firstName);
	
		
//		đường dẫn tới view
		return "customer/contact";
	}
	@RequestMapping(value = { "/contact_post_using_spring_form" }, method = RequestMethod.POST)
	public String contact_post_using_spring_form(final Model model, 
												final HttpServletRequest request, 
												final HttpServletResponse response,
												final @ModelAttribute("contactDTO") ContactDTO contactDTO)
												throws IOException {
		System.out.println(contactDTO.getName() +" "+contactDTO.getEmail()+" "+contactDTO.getSubject()+" "+contactDTO.getMessage());
//		Lưu contact vào trong db sử dụng service thích hợp
		Contact contact = new Contact();
		contact.setName(contactDTO.getName());
		contact.setEmail(contactDTO.getEmail());
		contact.setSubject(contactDTO.getSubject());
		contact.setMessage(contactDTO.getMessage());
		contactService.saveOrUpdate(contact);
//		đường dẫn tới view
		return "customer/contact";
	}
	@RequestMapping(value = { "/ajax/contact" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> contact_post_using_ajax(final Model model, 
																	final HttpServletRequest request, 
																	final HttpServletResponse response,
																	final @RequestBody ContactDTO contactDTO){
		System.out.println(contactDTO.getName() +" "+contactDTO.getEmail()+" "+contactDTO.getSubject()+" "+contactDTO.getMessage());
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("statusCode", 200);
		jsonResult.put("statusMessage", "Cảm ơn bạn" + contactDTO.getEmail() + ", Chúng tôi sẽ liên hệ sớm nhất!");
		return ResponseEntity.ok(jsonResult);
	}
}
