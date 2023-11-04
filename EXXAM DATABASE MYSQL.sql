create database Ungdungthuongmaidientu;
use Ungdungthuongmaidientu;
create table Danhmucsanpham(
Madm varchar(4) primary key,
Tendm varchar(100) not null,
Motadm text not null,
Trangthai bit not null
);
create table Sanpham(
MaSP varchar(4) primary key,
TenSP varchar(100) unique not null,
Gianhap int not null,
Giaxuat int not null,
Tieude text not null,
Mota text not null,
Soluong int not null,
Trangthai varchar(20) not null,
Madm varchar(4) not null,
foreign key (Madm) references Danhmucsanpham(Madm)
);
create table Nguoidung(
MaND int auto_increment primary key,
TenDN varchar(100) unique not null,
MatKhau varchar(100) not null,
TenKH varchar(100) not null,
Email varchar(100) not null,
Sdt varchar(15) not null,
Diachi text not null,
Ngaysinh datetime not null
);
create table Hoadon(
MaHD int auto_increment primary key,
Ngaytao datetime not null,
Manguoidung int not null,
Trangthai varchar(20) not null,
foreign key (Manguoidung) references Nguoidung(MaND)
);
create table Hoadonchitiet ( 
MaHDCT int auto_increment primary key,
MaHD int not null,
MaSP varchar(4) not null,
GiaSP int not null,
Soluong int not null,
Tong int not null,
foreign key (MaHD) references Hoadon(MaHD),
foreign key (MaSP) references Sanpham(MaSP)
);
create table Binhluan (
MaBL int auto_increment primary key,
MaNDBL int not null,
MaSP varchar(4) not null,
NoidungBL text not null,
NgayBL datetime not null,
Trangthai varchar(20) not null,
foreign key (MaNDBL) references Nguoidung(MaND),
foreign key (MaSP) references Sanpham (MaSP)
);
/*Them du lieu*/
insert into Danhmucsanpham(Madm,Tendm,Motadm,Trangthai)
values ("0001","AAA","OK0",1);
insert into Danhmucsanpham(Madm,Tendm,Motadm,Trangthai)
values ("0002","BBB","OK1",1);
insert into Danhmucsanpham(Madm,Tendm,Motadm,Trangthai)
values ("0003","CCC","OK2",1);
insert into Danhmucsanpham(Madm,Tendm,Motadm,Trangthai)
values ("0004","DDD","OK3",1);
insert into Danhmucsanpham(Madm,Tendm,Motadm,Trangthai)
values ("0005","EEE","OK4",1);
insert into Sanpham(MaSP,TenSP,Gianhap,Giaxuat,Tieude,Mota,Soluong,Trangthai,Madm)
values ("0001","HangA",100000,150000,"Tieude","Mota",1,"bán","0001");
insert into Sanpham(MaSP,TenSP,Gianhap,Giaxuat,Tieude,Mota,Soluong,Trangthai,Madm)
values ("0002","HangB",350000,1500000,"Tieude2","Mota2",10,"không bán","0002");
insert into Sanpham(MaSP,TenSP,Gianhap,Giaxuat,Tieude,Mota,Soluong,Trangthai,Madm)
values ("0003","HangC",700000,1505000,"Tieude3","Mota3",100,"hết hàng","0003");
insert into Sanpham(MaSP,TenSP,Gianhap,Giaxuat,Tieude,Mota,Soluong,Trangthai,Madm)
values ("0004","HangD",10095000,15095000,"Tieude4","Mota4",1000,"bán","0004");
insert into Sanpham(MaSP,TenSP,Gianhap,Giaxuat,Tieude,Mota,Soluong,Trangthai,Madm)
values ("0005","HangE",10088000,15088000,"Tieude5","Mota8",10000,"bán","0005");
insert into Nguoidung(TenDN ,MatKhau ,TenKH ,Email ,Sdt ,Diachi,Ngaysinh)
values("Nguoidung","123456","Khach hang","Quyngai1@gmail.com","019001","VietNam",'2000-01-01');
insert into Nguoidung(TenDN ,MatKhau ,TenKH ,Email ,Sdt ,Diachi,Ngaysinh)
values("Nguoidung2","1234567","Khach hang2","Quyngai12@gmail.com","0190012","VietNam",'2001-01-01');
insert into Nguoidung(TenDN ,MatKhau ,TenKH ,Email ,Sdt ,Diachi,Ngaysinh)
values("Nguoidung3","1234568","Khach hang3","Quyngai13@gmail.com","01900123","VietNam",'2003-01-01');
insert into Nguoidung(TenDN ,MatKhau ,TenKH ,Email ,Sdt ,Diachi,Ngaysinh)
values("Nguoidung4","1234569","Khach hang4","Quyngai14@gmail.com","019001234","VietNam",'2005-01-01');
insert into Nguoidung(TenDN ,MatKhau ,TenKH ,Email ,Sdt ,Diachi,Ngaysinh)
values("Nguoidung5","12345610","Khach hang5","Quyngai51@gmail.com","0190012345","VietNam",'2009-01-01');
insert into Hoadon(Ngaytao ,Manguoidung ,Trangthai)
values ('2023-10-15',1, 'Đang đặt');
insert into Hoadon(Ngaytao ,Manguoidung ,Trangthai)
values ('2023-10-17',2, 'Đã duyệt');
insert into Hoadon(Ngaytao ,Manguoidung ,Trangthai)
values ('2023-10-19',3, 'Đang chuyển hàng');
insert into Hoadon(Ngaytao ,Manguoidung ,Trangthai)
values ('2023-10-25',4, 'Đã nhận hàng');
insert into Hoadon(Ngaytao ,Manguoidung ,Trangthai)
values ('2023-11-15',5, 'Hoàn tất');
insert into Hoadonchitiet ( MaHD ,MaSP ,GiaSP ,Soluong ,Tong) 
values(1, "0001", 300, 1, 300);
insert into Hoadonchitiet ( MaHD ,MaSP ,GiaSP ,Soluong ,Tong) 
values(2, "0002", 300, 10, 3000);
insert into Hoadonchitiet ( MaHD ,MaSP ,GiaSP ,Soluong ,Tong) 
values(3, "0003", 800, 100, 80000);
insert into Hoadonchitiet ( MaHD ,MaSP ,GiaSP ,Soluong ,Tong) 
values(4, "0004", 900, 1000, 9000000);
insert into Hoadonchitiet ( MaHD ,MaSP ,GiaSP ,Soluong ,Tong) 
values(5, "0005", 700, 10000, 70000000);
insert into Binhluan (MaNDBL,MaSP ,NoidungBL,NgayBL,Trangthai )
values (1, "0001", 'Bình luận 1', '2023-10-20', 'Đã được duyệt');
insert into Binhluan (MaNDBL,MaSP ,NoidungBL,NgayBL,Trangthai )
values (2, "0002", 'Bình luận 2', '2023-10-30', 'Đang bình luận');
insert into Binhluan (MaNDBL,MaSP ,NoidungBL,NgayBL,Trangthai )
values (3, "0003", 'Bình luận 3', '2023-11-05', 'Đã được duyệt');
insert into Binhluan (MaNDBL,MaSP ,NoidungBL,NgayBL,Trangthai )
values (4, "0004", 'Bình luận 4', '2023-11-15', 'Đang bình luận');
insert into Binhluan (MaNDBL,MaSP ,NoidungBL,NgayBL,Trangthai )
values (5, "0005", 'Bình luận 5', '2023-11-25', 'Đã được duyệt');
/*Cập nhật du lieu*/
UPDATE Sanpham SET TenSP = 'Thịt chó' WHERE MaSP = 1;
UPDATE Danhmucsanpham SET Tendm = 'Meats' WHERE Madm = 1;
UPDATE Nguoidung SET TenDN = 'tendangnhap' WHERE MaND = 1;
UPDATE Hoadon SET Trangthai = 'Update Đang đặt' WHERE MaHD = 1;
UPDATE Hoadonchitiet SET GiaSP = 2000 WHERE MaHD = 1;
UPDATE Binhluan SET NoidungBL = 'Update binh luan' WHERE MaNDBL = 1;
/*Thực hiện các truy vấn*/
/*A*/
SELECT sp.MaSP, sp.TenSP, sp.GiaXuat, sp.TieuDe, sp.TrangThai, dm.TenDM
FROM SanPham sp
JOIN DanhMucSanPham dm ON sp.MaDM = dm.MaDM;
/*B*/
select * from Sanpham where substring(TenSP,2,1) = "a";
/*C*/
SELECT * FROM SanPham WHERE GiaNhap IN (100000, 350000, 700000);
/*D*/
SELECT * FROM SanPham WHERE GiaNhap BETWEEN 100000 AND 500000 ORDER BY GiaNhap ASC;
/*E*/
SELECT nd.TenKH, bl.NoidungBL, bl.NgayBL, sp.TenSP
FROM BinhLuan bl
JOIN NguoiDung nd ON bl.MaNDBL = nd.MaND
JOIN SanPham sp ON bl.MaSP = sp.MaSP
ORDER BY bl.NgayBL DESC;
/*F*/
SELECT sp.MaSP, sp.TenSP, COUNT(hdct.MaHDCT) AS SoLuongBan
FROM HoaDonChiTiet hdct
JOIN SanPham sp ON hdct.MaSP= sp.MaSP
JOIN HoaDon hd ON hdct.MaHD = hd.MaHD
WHERE hd.NgayTao BETWEEN '2023-10-01' AND '2023-10-31'
GROUP BY sp.MaSP
ORDER BY SoLuongBan DESC
LIMIT 3;
/*G*/
SELECT hd.MaHD, hd.NgayTao, hd.MaNguoiDung, hd.Trangthai, SUM(cthd.GiaSP * cthd.Soluong) AS TongTien
FROM HoaDon hd
JOIN hoadonchitiet cthd ON hd.MaHD = cthd.MaHD
GROUP BY hd.MaHD, hd.NgayTao, hd.MaNguoiDung, hd.Trangthai
ORDER BY TongTien DESC
LIMIT 1;
/*H*/
SELECT dm.MaDM, dm.TenDM, COUNT(sp.MaSP) AS SoLuongSP
FROM SanPham sp
JOIN DanhMucSanPham dm ON sp.MaDM = dm.MaDM
GROUP BY dm.MaDM, dm.TenDM;
/*I*/
SELECT hd.MaNguoiDung, nd.TenKH, nd.Email, nd.SDT, SUM(cthd.GiaSP * cthd.Soluong) AS TongTienMuaHang
FROM HoaDon hd
JOIN Hoadonchitiet cthd ON hd.MaHD = cthd.MaHD
JOIN NguoiDung nd ON hd.MaNguoiDung = nd.MaND
GROUP BY hd.MaNguoiDung, nd.TenKH, nd.Email, nd.SDT
ORDER BY TongTienMuaHang DESC
LIMIT 1;

