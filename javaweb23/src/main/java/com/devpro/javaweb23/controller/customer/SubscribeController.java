package com.devpro.javaweb23.controller.customer;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.dto.SubscribeDTO;

@Controller
public class SubscribeController extends BaseController{
	@RequestMapping(value = { "/subscribe" }, method = RequestMethod.GET)
	public String contact(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
	{
		SubscribeDTO subscribeDTO = new SubscribeDTO();
		model.addAttribute("subscribeDTO", subscribeDTO);
//		đường dẫn tới view
		return "customer/subscribe";
	}
	@RequestMapping(value = { "/ajax/subscribe" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> subscribe_post_using_ajax(final Model model, 
																	final HttpServletRequest request, 
																	final HttpServletResponse response,
																	final @RequestBody SubscribeDTO subscribeDTO){
		System.out.println(subscribeDTO.getEmail());
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("statusCode", 200);
		jsonResult.put("statusMessage", "Cảm ơn bạn " + subscribeDTO.getEmail() + ", Chúng tôi sẽ liên hệ sớm nhất!");
		return ResponseEntity.ok(jsonResult);
	}
}
