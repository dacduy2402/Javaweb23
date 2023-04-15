package com.devpro.javaweb23.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23.dto.Paging;
import com.devpro.javaweb23.model.Contact;
import com.devpro.javaweb23.services.BaseService;
import com.devpro.javaweb23.services.PagerData;

@Service
public class ContactService extends BaseService<Contact>{

	@Override
	protected Class<Contact> clazz() {
		// TODO Auto-generated method stub
		return Contact.class;
	}
	
	public PagerData<Contact> pagingPage(Paging paging) {
		// khởi tạo câu lệnh
		String sql = "SELECT * FROM shop_javaweb23.tbl_contact WHERE 1=1 ORDER BY `created_date` DESC ";

		if (paging != null) {
		}

		return getEntitiesByNativeSQL(sql, paging.getPage());
	}
//	
}
