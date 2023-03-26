package com.devpro.javaweb23.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23.model.User;
import com.devpro.javaweb23.services.BaseService;

@Service
public class RegistryService extends BaseService<User>{

	@Override
	protected Class<User> clazz() {
		// TODO Auto-generated method stub
		return User.class;
	}

}
