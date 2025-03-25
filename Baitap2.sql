
-- Tạo cơ sở dữ liệu với vị trí lưu trữ cụ thể
CREATE DATABASE QLSV
ON PRIMARY 
( 
    NAME = QLSV,
    FILENAME = N'D:\học tap\HQTCSDL\QLSV.mdf',
    SIZE = 64MB, 
    MAXSIZE = UNLIMITED, 
    FILEGROWTH = 64MB 
)
LOG ON 
( 
    NAME = QLSV_log,
    FILENAME = N'D:\học tap\HQTCSDL\QLSV_log.ldf',
    SIZE = 64MB, 
    MAXSIZE = UNLIMITED, 
    FILEGROWTH = 64MB 
);
GO

-- Sử dụng cơ sở dữ liệu vừa tạo
USE QLSV;
GO

-- Tạo bảng Khoa
CREATE TABLE Khoa (
    maKhoa CHAR(10) PRIMARY KEY,
    tenKhoa NVARCHAR(100) NOT NULL
);

-- Tạo bảng Bộ Môn
CREATE TABLE BoMon (
    maBM CHAR(10) PRIMARY KEY,
    tenBM NVARCHAR(100) NOT NULL,
    maKhoa CHAR(10),
    FOREIGN KEY (maKhoa) REFERENCES Khoa(maKhoa) ON DELETE CASCADE
);

-- Tạo bảng Giáo Viên
CREATE TABLE GiaoVien (
    magv CHAR(10) PRIMARY KEY,
    hoten NVARCHAR(100) NOT NULL,
    NgaySinh DATE,
    maBM CHAR(10),
    FOREIGN KEY (maBM) REFERENCES BoMon(maBM) ON DELETE SET NULL
);

-- Tạo bảng Sinh Viên
CREATE TABLE SinhVien (
    masv CHAR(10) PRIMARY KEY,
    hoten NVARCHAR(100) NOT NULL,
    NgaySinh DATE
);

-- Tạo bảng Lớp
CREATE TABLE Lop (
    maLop CHAR(10) PRIMARY KEY,
    tenLop NVARCHAR(100) NOT NULL
);

-- Tạo bảng GVCN (Giáo Viên Chủ Nhiệm)
CREATE TABLE GVCN (
    maLop CHAR(10),
    hanmagv CHAR(10),
    HK CHAR(10),
    PRIMARY KEY (maLop, hanmagv, HK),
    FOREIGN KEY (maLop) REFERENCES Lop(maLop) ON DELETE CASCADE,
    FOREIGN KEY (hanmagv) REFERENCES GiaoVien(magv) ON DELETE CASCADE
);

-- Tạo bảng LopSV (Sinh Viên thuộc Lớp)
CREATE TABLE LopSV (
    maLop CHAR(10),
    maSV CHAR(10),
    ChucVu NVARCHAR(50),
    PRIMARY KEY (maLop, maSV),
    FOREIGN KEY (maLop) REFERENCES Lop(maLop) ON DELETE CASCADE,
    FOREIGN KEY (maSV) REFERENCES SinhVien(masv) ON DELETE CASCADE
);

-- Tạo bảng Môn Học
CREATE TABLE MonHoc (
    mamon CHAR(10) PRIMARY KEY,
    Tenmon NVARCHAR(100) NOT NULL,
    STC INT CHECK (STC > 0) -- Số tín chỉ phải lớn hơn 0
);

-- Tạo bảng Lớp Học Phần
CREATE TABLE LopHP (
    maLopHP CHAR(10) PRIMARY KEY,
    TenLopHP NVARCHAR(100) NOT NULL,
    HK CHAR(10),
    maMon CHAR(10),
    maGV CHAR(10),
    FOREIGN KEY (maMon) REFERENCES MonHoc(mamon) ON DELETE CASCADE,
    FOREIGN KEY (maGV) REFERENCES GiaoVien(magv) ON DELETE SET NULL
);

-- Tạo bảng Đăng Ký Môn Học
CREATE TABLE DKMH (
    maLopHP CHAR(10),
    maSV CHAR(10),
    DiemTP FLOAT CHECK (DiemTP BETWEEN 0 AND 10), -- Điểm thành phần từ 0 đến 10
    DiemThi FLOAT CHECK (DiemThi BETWEEN 0 AND 10), -- Điểm thi từ 0 đến 10
    PhanTramThi FLOAT CHECK (PhanTramThi BETWEEN 0 AND 100), -- Phần trăm thi từ 0 đến 100
    PRIMARY KEY (maLopHP, maSV),
    FOREIGN KEY (maLopHP) REFERENCES LopHP(maLopHP) ON DELETE CASCADE,
    FOREIGN KEY (maSV) REFERENCES SinhVien(masv) ON DELETE CASCADE
);

