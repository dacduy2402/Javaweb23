package com.devpro.javaweb23.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23.model.Contact;
import com.devpro.javaweb23.services.BaseService;

@Service
public class ContactService extends BaseService<Contact>{

	@Override
	protected Class<Contact> clazz() {
		// TODO Auto-generated method stub
		return Contact.class;
	}

}
