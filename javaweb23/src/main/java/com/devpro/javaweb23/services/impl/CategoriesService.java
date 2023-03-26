package com.devpro.javaweb23.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23.model.Categories;
import com.devpro.javaweb23.services.BaseService;

@Service
public class CategoriesService extends BaseService<Categories>{

	@Override
	protected Class<Categories> clazz() {
		// TODO Auto-generated method stub
		return Categories.class;
	}

}
