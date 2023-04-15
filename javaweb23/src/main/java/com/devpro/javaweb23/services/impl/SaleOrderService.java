package com.devpro.javaweb23.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23.dto.Paging;
import com.devpro.javaweb23.model.SaleOrder;
import com.devpro.javaweb23.services.BaseService;
import com.devpro.javaweb23.services.PagerData;

@Service
public class SaleOrderService extends BaseService<SaleOrder> {

	@Override
	protected Class<SaleOrder> clazz() {
		// TODO Auto-generated method stub
		return SaleOrder.class;
	}
	
	public PagerData<SaleOrder> pagingPage(Paging paging) {
		// khởi tạo câu lệnh
		String sql = "SELECT * FROM shop_javaweb23.tbl_saleorder WHERE 1=1 ORDER BY `created_date` DESC ";

		if (paging != null) {
		}

		return getEntitiesByNativeSQL(sql, paging.getPage());
	}
}
