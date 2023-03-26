function AddToCart(_baseUrl, _productId, _quantity) {
//	alert("Bạn chọn mua sản phẩm có ID = " + _productId + " với số lượng là " + _quantity);
	// tạo javascript object để binding với data bên phía controller  
	var requestBody = {
		productId: _productId,
		quantity: _quantity
	};
	
	// $ === jQuery
	// json == javascript object
	jQuery.ajax({
		url: _baseUrl + "/ajax/addToCart", 	   //->request mapping định nghĩa bên controller
		type: "post",					   //-> method type của Request Mapping	
		contentType: "application/json",   //-> nội dung gửi lên dạng json <=> javascript object
		data: JSON.stringify(requestBody), //-> chuyển 1 javascript object thành string json
	
		dataType: "json", 				   // kiểu dữ liệu trả về từ Controller
		success: function(jsonResult) {    // gọi ajax thành công
			alert(jsonResult.code + " - " + jsonResult.status + ", Số lượng trong giỏ hàng là: " + jsonResult.totalItems);
			$("#soluongsanphamtronggiohang").html(jsonResult.totalItems);
			
		},
		error: function(jqXhr, textStatus, errorMessage) { // gọi ajax thất bại
			alert("error");
		}
	});
}
