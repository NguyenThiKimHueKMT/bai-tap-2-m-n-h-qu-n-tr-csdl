USE [QLSV]
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
