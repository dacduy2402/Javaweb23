package com.devpro.javaweb23.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23.model.ProductImage;
import com.devpro.javaweb23.services.BaseService;

@Service
public class ProductImagesService extends BaseService<ProductImage>{

	@Override
	protected Class<ProductImage> clazz() {
		// TODO Auto-generated method stub
		return ProductImage.class;
	}

}
