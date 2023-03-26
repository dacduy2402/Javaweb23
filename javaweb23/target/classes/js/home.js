$(function () {
    console.log("ready!");
    setInterval(function () {
        // khởi tạo đối tượng tgian
        var thoigian = new Date();
        var ngay = thoigian.getDate();
        var thang = thoigian.getMonth() + 1;
        var nam = thoigian.getFullYear();
        var gio = thoigian.getHours();
        var phut = thoigian.getMinutes();
        var giay = thoigian.getSeconds();
        var ngay_trong_tuan = thoigian.getDay();
        var strTime = "";
        switch (ngay_trong_tuan) {
            case 0: strTime = strTime + "Chủ nhật, "; break;
            case 1: strTime = strTime + "Thứ hai, "; break;
            case 2: strTime = strTime + "Thứ ba, "; break;
            case 3: strTime = strTime + "Thứ tư, "; break;
            case 4: strTime = strTime + "Thứ năm, "; break;
            case 5: strTime = strTime + "Thứ sáu, "; break;
            case 6: strTime = strTime + "Thứ bảy, "; break;
        }
        strTime = strTime + ngay + "/" + thang + "/" + nam
            + " " + gio + ":" + phut + ":" + giay;
        if (gio > 0 && gio <= 12)
            strTime = strTime + " AM";
        else {
            strTime = strTime + " PM";
        }
        // set giá trị vào id = time
        document.getElementById("time").innerHTML = strTime;
    }, 1000);
    $('.owl-carousel').owlCarousel({
        rtl: true,
        loop: true,
        margin: 10,
        nav: true,
        navText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"],
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 1
            },
            1000: {
                items: 1
            }
        }
    })
});



