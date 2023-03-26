package com.devpro.javaweb23.controller.administrator;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23.controller.customer.BaseController;
import com.devpro.javaweb23.dto.RegistryDTO;
import com.devpro.javaweb23.model.User;
import com.devpro.javaweb23.services.impl.RegistryService;


@Controller
public class AdminRegistryController extends BaseController{
	@Autowired
	private RegistryService registryService;
	
	@RequestMapping(value = { "/registry" }, method = RequestMethod.GET)
	public String registry(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
	{
		RegistryDTO registryDTO = new RegistryDTO();
		model.addAttribute("registryDTO", registryDTO);
//		đường dẫn tới view
		return "registry";
	}
	
	@RequestMapping(value = { "/registry_post_using_spring_form" }, method = RequestMethod.POST)
	public String registry_post_using_spring_form(final Model model, 
												final HttpServletRequest request, 
												final HttpServletResponse response,
												final @ModelAttribute("registryDTO") RegistryDTO registryDTO)
												throws IOException {
		System.out.println(registryDTO.getUsername() +" "+registryDTO.getEmail()+" "+registryDTO.getPassword());
//		Lưu contact vào trong db sử dụng service thích hợp
		User user = new User();
		user.setUsername(registryDTO.getUsername());
		user.setEmail(registryDTO.getEmail());
		user.setPassword(registryDTO.getPassword());
		registryService.saveOrUpdate(user);
//		đường dẫn tới view
		return "registry";
	}
}
