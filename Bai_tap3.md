![Screenshot (68)](https://github.com/user-attachments/assets/1cce529d-bc88-465d-9705-a1f899561cf2)BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 30/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

DEADLINE: 23H59 NGÀY 30/03/2025

---------------------- hết bài tập 3-------------------------------------------

Ảnh 1:  
Tạo bảng mới bằng cách mở Table Designer và nhập các cột:  
id (nchar(10), không cho phép NULL)  
id_dk (nchar(10), cho phép NULL)  
diem (float, không cho phép NULL)  
Nhấn "Save" để lưu bảng.  
 Hộp thoại "Choose Name" xuất hiện, nhập tên bảng là "Diem".  
 Nhấn "OK" để hoàn tất tạo bảng.  
 ![Screenshot (63)](https://github.com/user-attachments/assets/42001854-2cbd-4d0c-918e-a10632875662)    
 
 Ảnh 2:  
 Mở Table Designer của bảng Diem.
 Thêm khóa ngoại (Foreign Key Relationship).
 Chọn bảng chính là DKMH, khóa chính id_dk.
 Chọn bảng phụ là Diem, khóa ngoại id_dk.
 Đặt tên quan hệ là FK_Diem_DKMH.
 Lưu lại cấu hình và đóng hộp thoạ
 ![Screenshot (64)](https://github.com/user-attachments/assets/d54910b5-1750-4068-a441-e894171cc80f)  


Ảnh 3:  
Mở bảng SinhVien bằng cách nhấn chuột phải → Edit Top 200 Rows.
Nhập dữ liệu sinh viên vào các cột masv, hoten, NgaySinh.
Di chuyển xuống dòng mới để thêm bản ghi tiếp theo.
Lưu thay đổi và đóng bảng.   
![Screenshot (65)](https://github.com/user-attachments/assets/0ad263b3-692a-4da3-ba34-835a4c8deb19)  

Ảnh 4:  
Mở bảng DKMH trong chế độ thiết kế (Design).
Thêm các cột: id_dk, maLopHP, maSV, DiemThi, PhanTramThi.
Thiết lập kiểu dữ liệu và tùy chọn Allow Nulls cho từng cột.
Lưu bảng và đóng cửa sổ thiết kế.  
![Screenshot (66)](https://github.com/user-attachments/assets/de4af9f8-f886-4d26-823d-192309c9bca1)  

Ảnh 5:  
Mở bảng DKMH trong chế độ thiết kế.
Mở trình quản lý Foreign Key Relationships
Thêm ràng buộc mới và đặt tên FK_Diem_id_dk.
Chọn bảng chính DKMH và bảng ngoại Diem.
Liên kết khóa chính id_dk với khóa ngoại id_dk.
Nhấn OK để lưu ràng buộc  
![Screenshot (67)](https://github.com/user-attachments/assets/7f025f11-94b3-4b02-9e0c-a967092b2c44)  

Ảnh 6:  
Mở bảng DKMH trong chế độ thiết kế.
Mở trình quản lý Foreign Key Relationships.
Thêm ràng buộc mới và đặt tên FK_DKMH_maLopHP.
Chọn bảng chính LopHP và bảng ngoại DKMH.
Liên kết khóa chính maLopHP với khóa ngoại maLopHP.
Nhấn OK để lưu ràng buộc.   
![Screenshot (68)](https://github.com/user-attachments/assets/e0423584-1431-455b-b90f-b985c91ba0f4)  

Ảnh 7:  
Mở bảng DKMH trong chế độ thiết kế
Mở trình quản lý Foreign Key Relationships
Thêm ràng buộc mới và đặt tên FK_DKMH_maSV
Chọn bảng chính SinhVien và bảng ngoại DKMH
Liên kết khóa chính maSV với khóa ngoại maSV
Nhấn OK để lưu ràng buộc 
![Screenshot (69)](https://github.com/user-attachments/assets/5d41f353-fa69-4199-a12b-21d732f84150)  

Ảnh 8:  
Mở bảng Diem trong chế độ thiết kế
Mở trình quản lý Foreign Key Relationships
Thêm ràng buộc mới và đặt tên FK_Diem_id_dk
Chọn bảng chính DKMH và bảng ngoại Diem
Liên kết khóa chính id_dk với khóa ngoại id_dk
Nhấn OK để lưu ràng buộc 
![Screenshot (70)](https://github.com/user-attachments/assets/f44d9edf-41b3-40f2-a184-d4d43fd2389c)  

Ảnh 9:  
Nhấp chuột phải vào cột id_dk
Chọn Indexes/Keys... để thiết lập khóa chính hoặc chỉ mục
![Screenshot (71)](https://github.com/user-attachments/assets/95c2d907-bc77-48ce-8e24-1b765ec62c16)  

Ảnh 10:  
Truy cập Object Explorer, mở database QLSV
Mở bảng dbo.Diem trong chế độ thiết kế
Nhấp chuột phải vào cột id_dk, chọn Indexes/Keys...
Thiết lập chỉ mục id_dk với thứ tự sắp xếp Ascending
Nhấn OK để lưu thay đổi  
![Screenshot (72)](https://github.com/user-attachments/assets/11f9c3c4-a9a0-42c2-828a-9e47dfe9bd5e)  

Ảnh 11:   
Truy cập Object Explorer, mở database QLSV
Mở bảng dbo.Diem trong chế độ thiết kế
Nhấp chuột phải vào cột id, chọn Indexes/Keys...
Thiết lập chỉ mục id với thứ tự sắp xếp Ascending
Nhấn OK để lưu thay đổi  
![Screenshot (73)](https://github.com/user-attachments/assets/c66f038c-715e-47ae-8b35-3a16318f2c47)  

Ảnh 12:  
Truy cập Object Explorer, mở database QLSV
Viết câu lệnh INSERT INTO để thêm dữ liệu vào các bảng
Nhấn Execute để thực thi truy vấn
Xác nhận thông báo Query executed successfully  
![Screenshot (74)](https://github.com/user-attachments/assets/9f7eb448-1782-425b-b2dd-5c9537598b20)  

Ảnh 13:  
Nhập dữ liệu vào bảng LopHP, DKMH, Diem bằng lệnh INSERT INTO
Truy vấn dữ liệu với SELECT kết hợp JOIN để lấy thông tin sinh viên, lớp học phần và điểm
Nhấn Execute để thực thi câu lệnh
Kiểm tra kết quả hiển thị trong bảng Results  
![Screenshot (75)](https://github.com/user-attachments/assets/62378323-3134-44a7-9886-e125adef98b1)  

Ảnh 14:  








































 
