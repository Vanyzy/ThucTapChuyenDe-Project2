USE K22CNTT4_LeDoanQuocVan_2210900078
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 10/17/2024 3:42:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[CTMaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaDon] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
	[ThanhTien] [decimal](18, 0) NULL,
	[PhuongThucThanhToan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CTMaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 10/17/2024 3:42:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[Madon] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrang] [int] NULL,
	[ThanhToan] [int] NULL,
	[DiaChiNhanHang] [nvarchar](100) NULL,
	[MaNguoiDung] [int] NULL,
	[TongTien] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 10/17/2024 3:42:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 10/17/2024 3:42:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 10/17/2024 3:42:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/17/2024 3:42:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,
	[MoTa] [ntext] NULL,
	[MaLoai] [int] NULL,
	[MaNCC] [int] NULL,
	[AnhSP] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/17/2024 3:42:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Dienthoai] [varchar](50) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([CTMaDon], [MaDon], [MaSP], [SoLuong], [DonGia], [ThanhTien], [PhuongThucThanhToan]) VALUES (1, 1, 1, 2, CAST(190000 AS Decimal(18, 0)), CAST(380000 AS Decimal(18, 0)), 1)
INSERT [dbo].[ChiTietDonHang] ([CTMaDon], [MaDon], [MaSP], [SoLuong], [DonGia], [ThanhTien], [PhuongThucThanhToan]) VALUES (2, 2, 3, 1, CAST(350000 AS Decimal(18, 0)), CAST(350000 AS Decimal(18, 0)), 1)
INSERT [dbo].[ChiTietDonHang] ([CTMaDon], [MaDon], [MaSP], [SoLuong], [DonGia], [ThanhTien], [PhuongThucThanhToan]) VALUES (3, 3, 2, 3, CAST(290000 AS Decimal(18, 0)), CAST(870000 AS Decimal(18, 0)), 1)
INSERT [dbo].[ChiTietDonHang] ([CTMaDon], [MaDon], [MaSP], [SoLuong], [DonGia], [ThanhTien], [PhuongThucThanhToan]) VALUES (4, 4, 2, 3, CAST(290000 AS Decimal(18, 0)), CAST(870000 AS Decimal(18, 0)), 1)
INSERT [dbo].[ChiTietDonHang] ([CTMaDon], [MaDon], [MaSP], [SoLuong], [DonGia], [ThanhTien], [PhuongThucThanhToan]) VALUES (5, 5, 1, 1, CAST(190000 AS Decimal(18, 0)), CAST(190000 AS Decimal(18, 0)), 1)
INSERT [dbo].[ChiTietDonHang] ([CTMaDon], [MaDon], [MaSP], [SoLuong], [DonGia], [ThanhTien], [PhuongThucThanhToan]) VALUES (6, 6, 1, 1, CAST(190000 AS Decimal(18, 0)), CAST(190000 AS Decimal(18, 0)), 1)
INSERT [dbo].[ChiTietDonHang] ([CTMaDon], [MaDon], [MaSP], [SoLuong], [DonGia], [ThanhTien], [PhuongThucThanhToan]) VALUES (7, 10, 2, 1, CAST(290000 AS Decimal(18, 0)), CAST(290000 AS Decimal(18, 0)), 1)
INSERT [dbo].[ChiTietDonHang] ([CTMaDon], [MaDon], [MaSP], [SoLuong], [DonGia], [ThanhTien], [PhuongThucThanhToan]) VALUES (8, 10, 1, 1, CAST(190000 AS Decimal(18, 0)), CAST(190000 AS Decimal(18, 0)), 1)
INSERT [dbo].[ChiTietDonHang] ([CTMaDon], [MaDon], [MaSP], [SoLuong], [DonGia], [ThanhTien], [PhuongThucThanhToan]) VALUES (9, 10, 32, 1, CAST(190000 AS Decimal(18, 0)), CAST(190000 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([Madon], [NgayDat], [TinhTrang], [ThanhToan], [DiaChiNhanHang], [MaNguoiDung], [TongTien]) VALUES (1, CAST(N'2024-11-14T00:00:00.000' AS DateTime), 1, 1, N'Nha Trang', 2, CAST(730000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([Madon], [NgayDat], [TinhTrang], [ThanhToan], [DiaChiNhanHang], [MaNguoiDung], [TongTien]) VALUES (2, CAST(N'2024-11-14T00:00:00.000' AS DateTime), 1, 1, N'Hà Nội', 2, CAST(730000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([Madon], [NgayDat], [TinhTrang], [ThanhToan], [DiaChiNhanHang], [MaNguoiDung], [TongTien]) VALUES (3, CAST(N'2024-11-14T00:00:00.000' AS DateTime), 1, 2, N'Hà Nội', 5, CAST(870000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([Madon], [NgayDat], [TinhTrang], [ThanhToan], [DiaChiNhanHang], [MaNguoiDung], [TongTien]) VALUES (4, CAST(N'2024-11-14T00:00:00.000' AS DateTime), 1, 1, N'Hà Nội', 5, CAST(870000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([Madon], [NgayDat], [TinhTrang], [ThanhToan], [DiaChiNhanHang], [MaNguoiDung], [TongTien]) VALUES (5, CAST(N'2024-11-14T00:00:00.000' AS DateTime), NULL, 1, N'Cần Thơ', 6, CAST(190000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([Madon], [NgayDat], [TinhTrang], [ThanhToan], [DiaChiNhanHang], [MaNguoiDung], [TongTien]) VALUES (6, CAST(N'2024-11-14T00:00:00.000' AS DateTime), 1, 1, N'Cần Thơ', 8, CAST(1390000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([Madon], [NgayDat], [TinhTrang], [ThanhToan], [DiaChiNhanHang], [MaNguoiDung], [TongTien]) VALUES (7, CAST(N'2024-11-14T00:00:00.000' AS DateTime), 1, 1, N'Nha Trang', 8, CAST(1390000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([Madon], [NgayDat], [TinhTrang], [ThanhToan], [DiaChiNhanHang], [MaNguoiDung], [TongTien]) VALUES (8, CAST(N'2024-11-14T00:00:00.000' AS DateTime), 1, 1, N'Nha Trang', 8, CAST(1390000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([Madon], [NgayDat], [TinhTrang], [ThanhToan], [DiaChiNhanHang], [MaNguoiDung], [TongTien]) VALUES (9, CAST(N'2024-11-14T00:00:00.000' AS DateTime), 1, 1, N'Nha Trang', 8, CAST(1390000 AS Decimal(18, 0)))
INSERT [dbo].[DonHang] ([Madon], [NgayDat], [TinhTrang], [ThanhToan], [DiaChiNhanHang], [MaNguoiDung], [TongTien]) VALUES (10, CAST(N'2024-10-17T15:30:53.140' AS DateTime), NULL, 1, N'', 1, CAST(670000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiHang] ON 

INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (1, N'Váy đầm')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (2, N'Áo Polo')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (3, N'Quần Jean')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (4, N'Túi Xách')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (5, N'Giày Thể Thao')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (6, N'Áo Thun')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (7, N'Quần Short')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (8, N'Đầm Maxi')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (9, N'Áo Khoác')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (10, N'Balo')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (11, N'Mũ Nón')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (12, N'Áo Sơ Mi')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (13, N'Giày Cao Gót')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (14, N'Quần Tây')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (15, N'Váy Ngắn')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (16, N'Tất Vớ')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (17, N'Áo Hoodie')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (18, N'Quần Legging')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (19, N'Kính Mát')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (20, N'Bikini')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (21, N'Giày Da')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (22, N'Váy Midi')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (23, N'Áo Len')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (24, N'Áo Khoác Dù')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (25, N'Khăn Choàng')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (26, N'Áo Lót')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (27, N'Đồ Bộ')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (28, N'Áo Khoác Jeans')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (29, N'Giày Sneaker')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (30, N'Váy Dài')
SET IDENTITY_INSERT [dbo].[LoaiHang] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (1, N'Lovito')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (2, N'Chanel')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (3, N'Gucci')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (4, N'Dior')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (5, N'Burberry')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (6, N'Louis Vuitton')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (7, N'Prada')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (8, N'H&M')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (9, N'Zara')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (10, N'Uniqlo')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (11, N'Nike')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (12, N'Adidas')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (13, N'Puma')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (14, N'Under Armour')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (15, N'New Balance')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (16, N'Fila')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (17, N'Levis')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (18, N'GAP')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (19, N'Bershka')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (20, N'Mango')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (21, N'Supreme')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (22, N'Converse')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (23, N'Reebok')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (24, N'Vans')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (25, N'Calvin Klein')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (26, N'Armani')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (27, N'Guess')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (28, N'Tommy Hilfiger')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (29, N'Ralph Lauren')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC]) VALUES (30, N'DKNY')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Adminstrator')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Member')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (1, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 1, 1, N'product1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (2, N'Áo Polo Thêu Unisex Nam Nữ Oversize', CAST(290000 AS Decimal(18, 0)), 70, N'Được chăm chút từ chất liệu, form dáng, đường may, hình in cho đến khâu đóng gói và hậu mãi, chiếc áo polo xinh xẻo này sẽ làm hài lòng cả những vị khách khó tính nhất', 2, 4, N'product2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (3, N'Quần Jean Skinny Nữ', CAST(350000 AS Decimal(18, 0)), 30, N'Quần jean skinny với chất vải co giãn tốt, form dáng ôm sát cơ thể, phù hợp cho nhiều hoàn cảnh.', 3, 7, N'product3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (4, N'Túi Xách Da Đeo Chéo', CAST(450000 AS Decimal(18, 0)), 20, N'Túi xách da thời trang, phù hợp cho cả nam và nữ, dễ dàng kết hợp với nhiều loại trang phục.', 4, 3, N'product4.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (5, N'Giày Thể Thao Nữ', CAST(500000 AS Decimal(18, 0)), 50, N'Giày thể thao với chất liệu vải thoáng khí, đế cao su chống trượt, mang lại sự thoải mái khi di chuyển.', 5, 2, N'product5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (6, N'Áo Thun Cổ Tròn Nam', CAST(200000 AS Decimal(18, 0)), 40, N'Áo thun cổ tròn với chất liệu cotton mềm mại, thấm hút mồ hôi tốt, thích hợp cho mùa hè.', 6, 8, N'product6.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (7, N'Quần Short Jeans Nữ', CAST(280000 AS Decimal(18, 0)), 25, N'Quần short jeans trẻ trung, năng động, phù hợp cho các hoạt động ngoài trời.', 7, 5, N'product7.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (8, N'Đầm Maxi Dài Nữ', CAST(600000 AS Decimal(18, 0)), 15, N'Đầm maxi dài với thiết kế thanh lịch, tôn dáng, phù hợp cho các buổi dạ tiệc.', 8, 6, N'product8.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (9, N'Áo Khoác Bomber Nam', CAST(700000 AS Decimal(18, 0)), 18, N'Áo khoác bomber với chất liệu dù, thiết kế năng động, phù hợp cho thời tiết se lạnh.', 9, 9, N'product9.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (10, N'Balo Laptop Chống Thấm', CAST(350000 AS Decimal(18, 0)), 22, N'Balo laptop chống thấm nước, thiết kế nhiều ngăn tiện lợi, phù hợp cho sinh viên và nhân viên văn phòng.', 10, 4, N'product10.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (11, N'Mũ Lưỡi Trai Nữ', CAST(150000 AS Decimal(18, 0)), 35, N'Mũ lưỡi trai với thiết kế thời trang, chất liệu vải thoáng mát, phù hợp cho các hoạt động ngoài trời.', 11, 11, N'product11.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (12, N'Áo Sơ Mi Dài Tay Nam', CAST(400000 AS Decimal(18, 0)), 28, N'Áo sơ mi dài tay với chất liệu vải thoáng mát, thiết kế lịch sự, phù hợp cho công sở.', 12, 3, N'product12.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (13, N'Giày Cao Gót Nữ', CAST(600000 AS Decimal(18, 0)), 10, N'Giày cao gót với thiết kế sang trọng, chất liệu da mềm mại, giúp tôn lên vóc dáng phái đẹp.', 13, 12, N'product13.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (14, N'Quần Tây Công Sở Nam', CAST(500000 AS Decimal(18, 0)), 12, N'Quần tây công sở với chất liệu vải cao cấp, thiết kế lịch lãm, phù hợp cho môi trường công sở.', 14, 10, N'product14.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (15, N'Váy Ngắn Dạ Hội Nữ', CAST(700000 AS Decimal(18, 0)), 8, N'Váy ngắn dạ hội với thiết kế quyến rũ, chất liệu vải mềm mại, giúp tôn lên vóc dáng phái đẹp.', 15, 2, N'product15.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (16, N'Tất Vớ Nam', CAST(80000 AS Decimal(18, 0)), 50, N'Tất vớ với chất liệu cotton mềm mại, co giãn tốt, thấm hút mồ hôi, phù hợp cho mọi hoạt động.', 16, 13, N'product16.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (17, N'Áo Hoodie Nam Nữ Unisex', CAST(450000 AS Decimal(18, 0)), 45, N'Áo hoodie với thiết kế unisex, chất liệu nỉ ấm áp, phù hợp cho cả nam và nữ.', 17, 9, N'product17.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (18, N'Quần Legging Tập Gym Nữ', CAST(350000 AS Decimal(18, 0)), 30, N'Quần legging với chất liệu co giãn tốt, thiết kế ôm sát cơ thể, phù hợp cho các hoạt động thể thao.', 18, 6, N'product18.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (19, N'Kính Mát Thời Trang', CAST(250000 AS Decimal(18, 0)), 40, N'Kính mát với thiết kế thời trang, chống tia UV, bảo vệ mắt khỏi ánh nắng mặt trời.', 19, 7, N'product19.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (20, N'Bikini 2 Mảnh Nữ', CAST(300000 AS Decimal(18, 0)), 20, N'Bikini 2 mảnh với thiết kế gợi cảm, chất liệu vải mềm mại, phù hợp cho các chuyến du lịch biển.', 20, 5, N'product20.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (21, N'Giày Da Công Sở Nam', CAST(700000 AS Decimal(18, 0)), 15, N'Giày da công sở với thiết kế lịch lãm, chất liệu da cao cấp, phù hợp cho môi trường công sở.', 21, 4, N'product21.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (22, N'Váy Midi Nữ', CAST(400000 AS Decimal(18, 0)), 18, N'Váy midi với thiết kế thanh lịch, chất liệu vải mềm mại, phù hợp cho các buổi dạo phố.', 22, 8, N'product22.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (23, N'Áo Len Dài Tay Nữ', CAST(300000 AS Decimal(18, 0)), 25, N'Áo len dài tay với chất liệu len mềm mại, thiết kế ấm áp, phù hợp cho mùa đông.', 23, 3, N'product23.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (24, N'Áo Khoác Dù Nam', CAST(500000 AS Decimal(18, 0)), 20, N'Áo khoác dù với thiết kế thời trang, chất liệu chống thấm nước, phù hợp cho các hoạt động ngoài trời.', 24, 10, N'product24.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (25, N'Khăn Choàng Cổ Nữ', CAST(200000 AS Decimal(18, 0)), 30, N'Khăn choàng cổ với chất liệu len mềm mại, thiết kế ấm áp, phù hợp cho mùa đông.', 25, 6, N'product25.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (26, N'Áo Lót Nữ', CAST(150000 AS Decimal(18, 0)), 40, N'Áo lót với chất liệu vải mềm mại, thiết kế ôm sát cơ thể, phù hợp cho mọi hoạt động hàng ngày.', 26, 11, N'product26.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (27, N'Đồ Bộ Mặc Nhà Nữ', CAST(350000 AS Decimal(18, 0)), 25, N'Đồ bộ mặc nhà với chất liệu cotton mềm mại, thiết kế thoải mái, phù hợp cho các hoạt động hàng ngày.', 27, 13, N'product27.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (28, N'Áo Khoác Jeans Nữ', CAST(600000 AS Decimal(18, 0)), 12, N'Áo khoác jeans với thiết kế năng động, chất liệu bền bỉ, phù hợp cho các buổi dạo phố.', 28, 12, N'product28.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (29, N'Giày Sneaker Nam', CAST(500000 AS Decimal(18, 0)), 22, N'Giày sneaker với thiết kế trẻ trung, chất liệu vải thoáng khí, phù hợp cho các hoạt động hàng ngày.', 29, 5, N'product29.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (30, N'Váy Dài Dự Tiệc Nữ', CAST(700000 AS Decimal(18, 0)), 8, N'Váy dài dự tiệc với thiết kế sang trọng, chất liệu vải mềm mại, phù hợp cho các buổi dạ tiệc.', 30, 2, N'product30.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (31, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 1, 1, N'product2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (32, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 1, 1, N'product1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (33, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 1, 1, N'product3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (34, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 1, 1, N'product4.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (35, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 1, 1, N'product5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (36, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 1, 1, N'product6.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (37, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 1, 1, N'product7.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (38, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 1, 1, N'product1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (39, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 3, 1, N'product8.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (40, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 3, 1, N'product9.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (41, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 3, 1, N'product6.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (42, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 3, 1, N'product5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (43, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 3, 1, N'product4.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (44, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 3, 1, N'product3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (45, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 3, 1, N'product2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (46, N'Váy 2 Dây Nữ Dáng Xòe', CAST(190000 AS Decimal(18, 0)), 10, N'Váy 2 dây được may với chất vải thân trên thun tăm gân, thân dưới chất tuyết mưa siêu mát và mềm mại, tôn dáng.', 3, 2, N'product1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (47, N'Áo Polo Thêu Unisex Nam Nữ Oversize', CAST(290000 AS Decimal(18, 0)), 70, N'Được chăm chút từ chất liệu, form dáng, đường may, hình in cho đến khâu đóng gói và hậu mãi, chiếc áo polo xinh xẻo này sẽ làm hài lòng cả những vị khách khó tính nhất', 2, 4, N'product2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (48, N'Áo Polo Thêu Unisex Nam Nữ Oversize', CAST(290000 AS Decimal(18, 0)), 70, N'Được chăm chút từ chất liệu, form dáng, đường may, hình in cho đến khâu đóng gói và hậu mãi, chiếc áo polo xinh xẻo này sẽ làm hài lòng cả những vị khách khó tính nhất', 2, 4, N'product12.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (49, N'Áo Polo Thêu Unisex Nam Nữ Oversize', CAST(290000 AS Decimal(18, 0)), 70, N'Được chăm chút từ chất liệu, form dáng, đường may, hình in cho đến khâu đóng gói và hậu mãi, chiếc áo polo xinh xẻo này sẽ làm hài lòng cả những vị khách khó tính nhất', 2, 4, N'product13.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (50, N'Áo Polo Thêu Unisex Nam Nữ Oversize', CAST(290000 AS Decimal(18, 0)), 70, N'Được chăm chút từ chất liệu, form dáng, đường may, hình in cho đến khâu đóng gói và hậu mãi, chiếc áo polo xinh xẻo này sẽ làm hài lòng cả những vị khách khó tính nhất', 2, 4, N'product14.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (51, N'Áo Polo Thêu Unisex Nam Nữ Oversize', CAST(290000 AS Decimal(18, 0)), 70, N'Được chăm chút từ chất liệu, form dáng, đường may, hình in cho đến khâu đóng gói và hậu mãi, chiếc áo polo xinh xẻo này sẽ làm hài lòng cả những vị khách khó tính nhất', 2, 4, N'product25.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [Soluong], [MoTa], [MaLoai], [MaNCC], [AnhSP]) VALUES (52, N'Áo Polo Thêu Unisex Nam Nữ Oversize', CAST(290000 AS Decimal(18, 0)), 70, N'Được chăm chút từ chất liệu, form dáng, đường may, hình in cho đến khâu đóng gói và hậu mãi, chiếc áo polo xinh xẻo này sẽ làm hài lòng cả những vị khách khó tính nhất', 2, 4, N'product16.jpg')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (1, N'Admin', N'admin@gmail.com', N'0902233445', N'123456', 1, N'Hải Phòng')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (2, N'Trần Thị Lụa', N'tranthilua@gmail.com', N'0987654321', N'123456', 2, N'Hồ Chí Minh')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (3, N'Hồ Thị Thanh Trang', N'trang.htt.63ttql@ntu.edu.vn', N'0901122334', N'123456', 2, N'Hà Nội')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (4, N'Hồ Thị Thanh Trang', N'trangho254@gmail.com', N'0123456789', N'123456', 2, N'Khánh Hòa')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (5, N'Lê Văn C', N'levanc@gmail.com', N'0903344556', N'123456', 2, N'Đà Nẵng')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (6, N'Nguyễn Thị D', N'nguyenthid@gmail.com', N'0904455667', N'123456', 2, N'Bình Dương')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (7, N'Trần Văn E', N'tranvane@gmail.com', N'0905566778', N'123456', 2, N'Đồng Nai')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (8, N'Hoàng Thị F', N'hoangthif@gmail.com', N'0906677889', N'123456', 2, N'Cần Thơ')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (9, N'Phạm Văn G', N'phamvang@gmail.com', N'0907788990', N'123456', 2, N'Quảng Ninh')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (10, N'Nguyễn Thị H', N'nguyenthih@gmail.com', N'0908899001', N'123456', 2, N'An Giang')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (11, N'Bùi Văn I', N'buivani@gmail.com', N'0909900012', N'123456', 2, N'Kiên Giang')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (12, N'Vũ Thị J', N'vuthij@gmail.com', N'0910012345', N'123456', 2, N'Lâm Đồng')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (13, N'Trần Văn K', N'tranvank@gmail.com', N'0911123456', N'123456', 2, N'Tây Ninh')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (14, N'Nguyễn Thị L', N'nguyenthil@gmail.com', N'0912234567', N'123456', 2, N'Bắc Ninh')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (15, N'Lê Văn M', N'levanm@gmail.com', N'0913345678', N'123456', 2, N'Vĩnh Phúc')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (16, N'Phạm Thị N', N'phamthin@gmail.com', N'0914456789', N'123456', 2, N'Hậu Giang')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (17, N'Trần Văn O', N'tranvano@gmail.com', N'0915567890', N'123456', 2, N'Nghệ An')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (18, N'Nguyễn Thị P', N'nguyenthilp@gmail.com', N'0916678901', N'123456', 2, N'Thừa Thiên Huế')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (19, N'Bùi Văn Q', N'buivanq@gmail.com', N'0917789012', N'123456', 2, N'Bình Phước')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (20, N'Vũ Thị R', N'vuthir@gmail.com', N'0918890123', N'123456', 2, N'Nam Định')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (21, N'Trần Văn S', N'tranvans@gmail.com', N'0919901234', N'123456', 2, N'Quảng Bình')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (22, N'Nguyễn Thị T', N'nguyenthit@gmail.com', N'0920012345', N'123456', 2, N'Tuyên Quang')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (23, N'Lê Văn U', N'levanu@gmail.com', N'0921123456', N'123456', 2, N'Lào Cai')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (24, N'Phạm Thị V', N'phamthiv@gmail.com', N'0922234567', N'123456', 2, N'Điện Biên')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (25, N'Trần Văn W', N'tranvanw@gmail.com', N'0923345678', N'123456', 2, N'Sơn La')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (26, N'Nguyễn Thị X', N'nguyenthix@gmail.com', N'0924456789', N'123456', 2, N'Lạng Sơn')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (27, N'Bùi Văn Y', N'buivany@gmail.com', N'0925567890', N'123456', 2, N'Bắc Giang')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (28, N'Vũ Thị Z', N'vuthiz@gmail.com', N'0926678901', N'123456', 2, N'Hòa Bình')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (29, N'Trần Văn AA', N'tranvanaa@gmail.com', N'0927789012', N'123456', 2, N'Kon Tum')
INSERT [dbo].[TaiKhoan] ([MaNguoiDung], [HoTen], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (30, N'Nguyễn Thị BB', N'nguyenthibb@gmail.com', N'0928890123', N'123456', 2, N'Ninh Bình')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
ALTER TABLE [dbo].[LoaiHang] ADD  DEFAULT (NULL) FOR [TenLoai]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_cthd_hd] FOREIGN KEY([MaDon])
REFERENCES [dbo].[DonHang] ([Madon])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_cthd_hd]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_cthd_sp] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_cthd_sp]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_hd_tk] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[TaiKhoan] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_hd_tk]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_sp_loai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiHang] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_sp_loai]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_sp_ncc] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_sp_ncc]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_tk_pq] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_tk_pq]
GO
/****** Object:  StoredProcedure [dbo].[SanPham_TimKiem]    Script Date: 10/17/2024 3:42:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SanPham_TimKiem]
	@TenSP nvarchar(100) = NULL,
	@TenLoai nvarchar(100) = NULL,
	@TenNCC nvarchar(100) = NULL
AS
BEGIN
	DECLARE @SqlStr NVARCHAR(4000),
			@ParamList NVARCHAR(2000)

	SET @SqlStr = '
       SELECT SP.*, LH.TenLoai, NCC.TenNCC
       FROM SanPham SP
			JOIN LoaiHang LH ON SP.MaLoai = LH.MaLoai
			JOIN NhaCungCap NCC ON SP.MaNCC = NCC.MaNCC
       WHERE 1 = 1
       '

	IF @TenSP IS NOT NULL
		SET @SqlStr = @SqlStr + ' AND SP.TenSP LIKE @TenSP'

	IF @TenLoai IS NOT NULL
		SET @SqlStr = @SqlStr + ' AND LH.TenLoai LIKE @TenLoai'

	IF @TenNCC IS NOT NULL
		SET @SqlStr = @SqlStr + ' AND NCC.TenNCC LIKE @TenNCC'

	-- Khai báo danh sách tham số để truyền vào SP_EXECUTESQL
	SET @ParamList = N'@TenSP NVARCHAR(100), @TenLoai NVARCHAR(100), @TenNCC NVARCHAR(100)'

	-- Thêm ký tự '%' cho các tham số tìm kiếm
	SET @TenSP = ISNULL('%' + @TenSP + '%', '%')
	SET @TenLoai = ISNULL('%' + @TenLoai + '%', '%')
	SET @TenNCC = ISNULL('%' + @TenNCC + '%', '%')

	EXEC sp_executesql @SqlStr, @ParamList, @TenSP, @TenLoai, @TenNCC
END
GO
