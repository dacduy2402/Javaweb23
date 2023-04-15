package com.devpro.javaweb23.controller.customer;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.devpro.javaweb23.dto.ContactDTO;
import com.devpro.javaweb23.dto.MyConstants;
import com.devpro.javaweb23.model.Contact;
import com.devpro.javaweb23.services.impl.ContactService;

@Controller
public class ContactController extends BaseController{
	
//	inject 1 bean vào trong 1 bean
	@Autowired
	private ContactService contactService;
	
	@Autowired
    public JavaMailSender emailSender;
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
	{
		ContactDTO contactDTO = new ContactDTO();
		model.addAttribute("contactDTO", contactDTO);
//		đường dẫn tới view
		return "customer/contact-us";
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
		return "customer/contact-us";
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
		
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setTo(contactDTO.getEmail());
        message.setSubject("Techshop response");
        message.setText("Hello, We have received your request. We will respond as soon as possible!");

        // Send Message!
        this.emailSender.send(message);
//		đường dẫn tới view
		return "redirect:/contact";
	}

	
	

//    @ResponseBody
//    @RequestMapping("/sendSimpleEmail")
//    public String sendSimpleEmail() {
//
//        // Create a Simple MailMessage.
//        SimpleMailMessage message = new SimpleMailMessage();
//        ContactDTO contactDTO = new ContactDTO();
////        message.setTo(MyConstants.FRIEND_EMAIL);
//        message.setTo(contactDTO.getEmail());
//        message.setSubject("Test Simple Email");
//        message.setText("Hello, Im testing Simple Email");
//
//        // Send Message!
//        this.emailSender.send(message);
//
//        return "Email Sent!";
//    }
//	@RequestMapping(value = { "/contact-post" }, method = RequestMethod.POST)
//	public ResponseEntity<Map<String, Object>> contact_post_using_ajax(final Model model, 
//																	final HttpServletRequest request, 
//																	final HttpServletResponse response,
//																	final @RequestBody ContactDTO contactDTO){
//		System.out.println(contactDTO.getName() +" "+contactDTO.getEmail()+" "+contactDTO.getSubject()+" "+contactDTO.getMessage());
//		
//		Map<String, Object> jsonResult = new HashMap<String, Object>();
//////	Lưu contact vào trong db sử dụng service thích hợp
////		Contact contact = new Contact();
////		contact.setName(contactDTO.getName());
////		contact.setEmail(contactDTO.getEmail());
////		contact.setSubject(contactDTO.getSubject());
////		contact.setMessage(contactDTO.getMessage());
////		contactService.saveOrUpdate(contact);
////		
////		SimpleMailMessage message = new SimpleMailMessage();
////		
////		message.setTo(contactDTO.getEmail());
////        message.setSubject("Test Simple Email");
////        message.setText("Hello, Im testing Simple Email");
//
//        // Send Message!
////        this.emailSender.send(message);
//        
//		jsonResult.put("statusCode", 200);
//		jsonResult.put("statusMessage", "Cảm ơn bạn" + contactDTO.getEmail() + ", Chúng tôi sẽ liên hệ sớm nhất!");
//		return ResponseEntity.ok(jsonResult);
//	}
}
