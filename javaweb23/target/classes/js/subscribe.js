/*!
* Start Bootstrap - Shop Homepage v5.0.2 (https://startbootstrap.com/template/shop-homepage)
* Copyright 2013-2021 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-shop-homepage/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project
function PostSubscribeUsingAjax(baseUrl) {
	// tạo javascript object để binding với data bên phía controller  
	var requestBody = {
		email		: jQuery("#idEmail").val(),
	};
	
	// $ === jQuery
	// json == javascript object
	jQuery.ajax({
		url: baseUrl + "/ajax/subscribe",	   //-> request mapping định nghĩa bên controller
		type: "post",					   //-> method type của Request Mapping	
		contentType: "application/json",   //-> nội dung gửi lên dạng json <=> javascript object
		data: JSON.stringify(requestBody), //-> chuyển 1 javascript object thành string json
	
		dataType: "json", 				   // kiểu dữ liệu trả về từ Controller
		success: function(jsonResult) {    // gọi ajax thành công
			alert(jsonResult.statusCode + " - " + jsonResult.statusMessage);
		},								   // gọi ajax thất bại
		error: function(jqXhr, textStatus, errorMessage) { 
			alert("error");
		}
	});
}
