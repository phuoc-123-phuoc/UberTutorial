Hướng dẫn chạy bài thực tập chuyên môn đề tài app đặt xe trên nền tảng IOS
B1. Tải Xcode
B2. Mở Project bằng Xcode
B3. Cả 2 bên ứng dụng người dùng và tài xế đều xoá bỏ file GoogleSevice-Infor.plist
B4. Cấu hình firebase mới 
	+ Ở 2 file ứng dụng tìm kiếm mục Genaral để copy Bundle Id sau đó thêm cả 2 vào 1 thư mục Firebase đã cấu hình trước đó
	+ Tải và thêm file  GoogleSevice-Infor.plist vào cả 2 ứng dụng tài xế và nguời dùng (lưu ý 2 file  GoogleSevice-Infor.plist khác nhau khi thêm ứng dụng vào filebase và mỗi ứng dụng sẽ có một file  GoogleSevice-Infor.plist để thêm vào project)
	+ Thay đổi URL Schemes cho cả hai ứng dụng bằng cách ở mỗi file  GoogleSevice-Infor.plist của mỗi ứng dụng copy phần com.googleusercontent.apps.440581451266-me2hriiv7hll0hqm4jmds1vmhakso7if(lưu ý phần cọpy sẽ khác nhau tuỳ thuộc và file GoogleSevice-Infor.plist khác nhau cửa dự án) sau đó vào phần Info-> URL Types-> URL Schemes-> Dán phần vừa copy vào (Lưu ý phải lặp lại thao tác trên cho cả 2 ứng dụng người dùng và tài xế)

	+ Thêm remote notìications cho cả 2 ứng dụng bằng cách chọn: Signing & Capabilites -> Capability -> Tìm kiếm Background Modes và thêm nó vào sau đó Click vào remote notifications và background processing(Lưu ý phải lặp lại thao tác trên cho cả 2 ứng dụng người dùng và tài xế)
	+ Tiếp đến là cấu hình Firebase: Trong phần Project Overview bật Authentication, Firestore Firebase và Storage ở chế độ start in test mode
		++) Trong Authentication chọn Signing Method -> Add new provider -> Email/Password/ Phone -> Enabled, trong Phone -> edit configuration -> phone number for testing-> nhập số điện thoại và mã otp để đăng nhập vào chương trình. 
		++) Trong Firestore Firebase và Storage cài đặc ở chế độ start in test mode      
B5. Tiến hành chạy chương trình và kiểm thử               