package com.devpro.javaweb23.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.devpro.javaweb23.model.User;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserService userService;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// connect tới db và lấy user theo username
//		User userDetails = userService.loadUserByUsername(username);
//		System.err.println("userDetails: "+ userDetails.getUsername());
////		userDetails.getAuthorities().forEach(System.err::print);
//		return userDetails;

			// connect tới db và lấy user theo username
			return userService.loadUserByUsername(username);
		
	}

}
