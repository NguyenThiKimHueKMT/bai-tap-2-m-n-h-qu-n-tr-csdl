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




[Uploading bai_tap3_datda.sql…]()USE [QLSV]
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K01       ', N'CNTT')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K02       ', N'Kinh tế')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K03       ', N'Ngoại ngữ')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM01      ', N'Khoa học Máy tính', N'K01       ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM02      ', N'Hệ thống Thông tin', N'K01       ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM03      ', N'Tài chính', N'K02       ')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV01      ', N'Nguyễn Văn A', CAST(N'1980-01-15' AS Date), N'BM01      ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV02      ', N'Trần Thị B', CAST(N'1975-07-20' AS Date), N'BM02      ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV03      ', N'Lê Văn C', CAST(N'1982-11-10' AS Date), N'BM03      ')
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L01       ', N'Khoa học máy tính 1')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L02       ', N'Hệ thống thông tin 1')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L03       ', N'Tài chính 1')
GO
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'L01       ', N'GV01      ', N'HK1       ')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'L02       ', N'GV02      ', N'HK1       ')
INSERT [dbo].[GVCN] ([maLop], [magv], [HK]) VALUES (N'L03       ', N'GV03      ', N'HK1       ')
GO
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH01      ', N'Lập trình C++', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH02      ', N'Cơ sở dữ liệu', 4)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'MH03      ', N'Kinh tế vi mô', 3)
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP01     ', N'Lớp C++ HK1', N'HK1       ', N'MH01      ', N'GV01      ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP02     ', N'Lớp CSDL HK1', N'HK1       ', N'MH02      ', N'GV02      ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP03     ', N'Lớp Kinh tế HK1', N'HK1       ', N'MH03      ', N'GV03      ')
GO
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV01      ', N'Phạm Văn D', CAST(N'2000-02-25' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV02      ', N'Hoàng Thị E', CAST(N'2001-06-30' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV03      ', N'Đỗ Minh F', CAST(N'1999-09-12' AS Date))
GO
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L01       ', N'SV01      ', N'Lớp trưởng')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L02       ', N'SV02      ', N'Bí thư')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L03       ', N'SV03      ', N'Thành viên')
GO
SET IDENTITY_INSERT [dbo].[DKMH] ON 

INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (1, N'LHP01     ', N'SV01      ', 8.5, 50)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (2, N'LHP02     ', N'SV02      ', 7, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (3, N'LHP03     ', N'SV03      ', 9, 40)
SET IDENTITY_INSERT [dbo].[DKMH] OFF
GO
SET IDENTITY_INSERT [dbo].[Diem] ON 

INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (1, 1, 8)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (2, 2, 7.5)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (3, 3, 9.2)
SET IDENTITY_INSERT [dbo].[Diem] OFF
GO





[Uploading bai_tap3_schema.sql…]()USE [master]
GO
/****** Object:  Database [QLSV]    Script Date: 3/28/2025 6:00:39 PM ******/
CREATE DATABASE [QLSV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSV', FILENAME = N'D:\học tap\HQTCSDL\QLSV.mdf' , SIZE = 65536KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSV_log', FILENAME = N'D:\học tap\HQTCSDL\QLSV_log.ldf' , SIZE = 65536KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLSV] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSV] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSV] SET RECOVERY FULL 
GO
ALTER DATABASE [QLSV] SET  MULTI_USER 
GO
ALTER DATABASE [QLSV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLSV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLSV', N'ON'
GO
ALTER DATABASE [QLSV] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLSV] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLSV]
GO
/****** Object:  Table [dbo].[BoMon]    Script Date: 3/28/2025 6:00:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoMon](
	[maBM] [char](10) NOT NULL,
	[tenBM] [nvarchar](100) NOT NULL,
	[maKhoa] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[maBM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 3/28/2025 6:00:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_dk] [int] NULL,
	[diem] [float] NULL,
 CONSTRAINT [PK__Diem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DKMH]    Script Date: 3/28/2025 6:00:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DKMH](
	[id_dk] [int] IDENTITY(1,1) NOT NULL,
	[maLopHP] [char](10) NULL,
	[maSV] [char](10) NULL,
	[DiemThi] [float] NULL,
	[PhanTramThi] [float] NULL,
 CONSTRAINT [PK__DKMH] PRIMARY KEY CLUSTERED 
(
	[id_dk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 3/28/2025 6:00:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[magv] [char](10) NOT NULL,
	[hoten] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NULL,
	[maBM] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[magv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GVCN]    Script Date: 3/28/2025 6:00:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GVCN](
	[maLop] [char](10) NOT NULL,
	[magv] [char](10) NOT NULL,
	[HK] [char](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[magv] ASC,
	[HK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 3/28/2025 6:00:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[maKhoa] [char](10) NOT NULL,
	[tenKhoa] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 3/28/2025 6:00:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[maLop] [char](10) NOT NULL,
	[tenLop] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHP]    Script Date: 3/28/2025 6:00:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHP](
	[maLopHP] [char](10) NOT NULL,
	[TenLopHP] [nvarchar](100) NOT NULL,
	[HK] [char](10) NULL,
	[maMon] [char](10) NULL,
	[maGV] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLopHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopSV]    Script Date: 3/28/2025 6:00:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopSV](
	[maLop] [char](10) NOT NULL,
	[maSV] [char](10) NOT NULL,
	[ChucVu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 3/28/2025 6:00:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[mamon] [char](10) NOT NULL,
	[Tenmon] [nvarchar](100) NOT NULL,
	[STC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mamon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 3/28/2025 6:00:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[masv] [char](10) NOT NULL,
	[hoten] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BoMon]  WITH CHECK ADD FOREIGN KEY([maKhoa])
REFERENCES [dbo].[Khoa] ([maKhoa])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK__Diem__id_dk] FOREIGN KEY([id_dk])
REFERENCES [dbo].[DKMH] ([id_dk])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK__Diem__id_dk]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK__DKMH__maLopHP] FOREIGN KEY([maLopHP])
REFERENCES [dbo].[LopHP] ([maLopHP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK__DKMH__maLopHP]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK__DKMH__maSV] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([masv])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK__DKMH__maSV]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD FOREIGN KEY([maBM])
REFERENCES [dbo].[BoMon] ([maBM])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD FOREIGN KEY([magv])
REFERENCES [dbo].[GiaoVien] ([magv])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD FOREIGN KEY([maGV])
REFERENCES [dbo].[GiaoVien] ([magv])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD FOREIGN KEY([maMon])
REFERENCES [dbo].[MonHoc] ([mamon])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([masv])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD CHECK  (([diem]>=(0) AND [diem]<=(10)))
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD CHECK  (([DiemThi]>=(0) AND [DiemThi]<=(10)))
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD CHECK  (([PhanTramThi]>=(0) AND [PhanTramThi]<=(100)))
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD CHECK  (([STC]>(0)))
GO
USE [master]
GO
ALTER DATABASE [QLSV] SET  READ_WRITE 
GO


















































































































 
