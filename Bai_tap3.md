![Screenshot (90)](https://github.com/user-attachments/assets/73e21993-86b3-42d1-b2ce-9fa16c196220)![Screenshot (89)](https://github.com/user-attachments/assets/5a385506-19c7-4747-93b3-c6b5c96ed8a7)![Screenshot (85)](https://github.com/user-attachments/assets/49181f54-8f8b-45d8-aa39-f9ca49e8b976)BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:
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
Mở Object Explorer, mở rộng mục Databases và chọn QLSV.
Chuột phải vào Database Diagrams, chọn New Database Diagram.
Thực thi lệnh SQL để:
Thêm dữ liệu vào bảng LopHP, DKMH, và Diem.
Tính điểm thành phần (DiemThanhPhan) bằng cách chia DiemThi cho 100.
Xem kết quả trong cửa sổ Results (hiển thị dữ liệu sinh viên SV01 với điểm đã tính).  
![Screenshot (76)](https://github.com/user-attachments/assets/f0abd3f6-292a-433e-8c36-94d9c5f7f1d3)  

Ảnh 15:  
Mở Object Explorer, mở rộng mục Databases và chọn QLSV.
Chuột phải vào Database Diagrams, chọn New Database Diagram.
Hộp thoại Add Table xuất hiện, hiển thị danh sách các bảng trong cơ sở dữ liệu.
Chọn bảng BoMon và Diem.
Nhấn nút Add để thêm bảng vào sơ đồ  
![Screenshot (77)](https://github.com/user-attachments/assets/8acdd8c5-b4d3-4ac3-8cf9-0444497aaac5)  

Ảnh 16:  
Mở Object Explorer, mở rộng mục Databases và chọn QLSV.
Chuột phải vào Database Diagrams, chọn New Database Diagram.
Thêm các bảng cần thiết từ danh sách vào sơ đồ.
Các bảng được hiển thị với các quan hệ khóa ngoại được kết nối.
Sơ đồ cơ sở dữ liệu được tạo thành công và hiển thị trên màn hình.  
![Screenshot (78)](https://github.com/user-attachments/assets/68db489c-1997-4831-8185-31eda944813b)   

Ảnh 17:  
Trong Object Explorer, chuột phải vào cơ sở dữ liệu QLSV.
Chọn Tasks.
Chọn Generate Scripts... để tạo tập lệnh SQL cho cơ sở dữ liệu.  
![Screenshot (79)](https://github.com/user-attachments/assets/06eedda7-c248-468c-b0c0-b7cb3d849a0e)  

Ảnh 18:  
Nhấn Next để bắt đầu quá trình tạo tập lệnh.
Chọn các đối tượng cơ sở dữ liệu cần tạo tập lệnh.
Thiết lập các tùy chọn tạo tập lệnh.
Xem lại các lựa chọn.
Tạo tập lệnh và lưu lại.  
![Screenshot (80)](https://github.com/user-attachments/assets/a82f278e-09d0-47b9-8871-f05f9daaf2b7)  

Ảnh 19:  
Chọn "Script entire database and all database objects" nếu muốn sao lưu toàn bộ cơ sở dữ liệu.
Hoặc chọn "Select specific database objects" để chỉ định các đối tượng cần sao lưu.
Nhấn Next để tiếp tục.  
![Screenshot (81)](https://github.com/user-attachments/assets/c40dcba7-b34d-46ec-9d33-a7f463ab924f)   

Ảnh 20:   
Nhấn Advanced, chọn Types of data to script, sau đó chọn Schema only nếu chỉ muốn xuất cấu trúc.
Nhấn OK để lưu cài đặt, rồi tiếp tục với Next.  
![Screenshot (82)](https://github.com/user-attachments/assets/5c03bba6-ac3e-415b-8b3f-eb546146c68e)  

Ảnh 21:  
Chọn Save as script file, nhập đường dẫn và tên file.
Chọn Single script file, đánh dấu Overwrite existing file.
Nhấn Next để tiếp tục.  
![Screenshot (83)](https://github.com/user-attachments/assets/5e55e174-7e61-4bdd-bfe2-acc03ccfa791)  

Ảnh 22:  
Xác nhận lại các tùy chọn đã chọn, kiểm tra thông tin về nguồn, tệp lưu trữ và cài đặt.
Nhấn Next để tiếp tục.  
![Screenshot (84)](https://github.com/user-attachments/assets/008652c2-dcac-4138-8dba-13987f2f0b6a)  

Ảnh 23:  
Xác nhận quá trình tạo script đã hoàn tất với trạng thái Success.
Nhấn Finish để kết thúc.   
![Screenshot (85)](https://github.com/user-attachments/assets/2a263f2e-eceb-44ed-aa6f-370ae0ba7368)  

Ảnh 24:  
Nhấp chuột phải vào database QLSV trong Object Explorer
Chọn Tasks → Generate Scripts... để bắt đầu tạo script cho database  
![Screenshot (86)](https://github.com/user-attachments/assets/828fce28-5740-4a60-97b9-8f01d5dba19f)  

Ảnh 25:  
Nhấn Next để bắt đầu quá trình tạo script cho database.  
![Screenshot (87)](https://github.com/user-attachments/assets/6c8e10a4-5dc5-4ac9-a484-d4799964bed7)  

Ảnh 26:  
Chọn database cần tạo script (QLSV).
Nhấp chuột phải vào database → Chọn Tasks → Generate Scripts.
Chọn đối tượng để tạo script, nhưng trong ảnh, danh sách bảng không hiển thị, có thể do quyền hoặc cấu hình.
Tiếp tục các bước thiết lập và lưu script, nếu danh sách bảng hiển thị đúng.
Có thể cần kiểm tra quyền hoặc đảm bảo database có bảng trước khi tiếp tục.  
![Screenshot (88)](https://github.com/user-attachments/assets/061c35df-8d3d-4d5c-8c7a-d793fc219f86)  

Ảnh 27:  
Chọn database cần tạo script (QLSV).
Nhấp chuột phải vào database → Chọn Tasks → Generate Scripts.
Chọn đối tượng để tạo script, sau đó chọn Set Scripting Options.
Nhấp vào Advanced để mở tùy chọn nâng cao.
Thiết lập Types of data to script thành Data only hoặc tùy chỉnh khác.
Nhấn OK để lưu cài đặt và tiếp tục các bước còn lại.   
![Screenshot (89)](https://github.com/user-attachments/assets/70c542db-2d37-4924-bc0e-ad12262a21aa)  

Ảnh 28:  
Chọn Set Scripting Options trong quá trình tạo script.
Chọn Save as script file để lưu script dưới dạng tệp.
Chọn Single script file và đặt tên tệp tại đường dẫn mong muốn.
Tích chọn Overwrite existing file nếu muốn ghi đè tệp cũ.
Chọn định dạng Unicode text hoặc ANSI text.
Nhấn Next để tiếp tục các bước còn lại.  
![Screenshot (90)](https://github.com/user-attachments/assets/7246938a-4992-490f-9439-2cf3d14c3140)  

Ảnh 29:  
Xem lại các tùy chọn đã thiết lập trong quá trình tạo script.
Kiểm tra thông tin server, database, đối tượng được script và đường dẫn lưu tệp.
Xác nhận các tùy chọn về script dữ liệu và cấu trúc bảng.
Nhấn Next để tiếp tục quá trình tạo script.  
![Screenshot (91)](https://github.com/user-attachments/assets/39bbb348-f9bd-4d27-a85e-8b80f3d86eca)  

Ảnh 30:  
Quá trình tạo script đã hoàn tất.
Tất cả các đối tượng trong cơ sở dữ liệu đã được chuẩn bị thành công.
Script đã được lưu vào tệp theo đường dẫn đã chọn.
Nhấn Finish để kết thúc quá trình.  
![Screenshot (92)](https://github.com/user-attachments/assets/c5397cec-8fed-4601-8940-23fd611f35dc)   





















































































































 
