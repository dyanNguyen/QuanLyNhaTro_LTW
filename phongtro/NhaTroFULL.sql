USE [NhaTro]
GO
/****** Object:  Table [dbo].[BangGiaTien]    Script Date: 23/05/2016 1:32:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangGiaTien](
	[MaGia] [nvarchar](50) NOT NULL,
	[MaKV] [nvarchar](50) NULL,
	[GiaTien] [numeric](18, 0) NULL,
 CONSTRAINT [PK_BangGiaTien] PRIMARY KEY CLUSTERED 
(
	[MaGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUNHA]    Script Date: 23/05/2016 1:32:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUNHA](
	[MaND] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[TTIN] [nvarchar](50) NULL,
 CONSTRAINT [PK_NGUOIDUNG] PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 23/05/2016 1:32:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [int] IDENTITY(1,1) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
	[DonGia] [numeric](18, 0) NULL,
	[DonViTinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHTRO]    Script Date: 23/05/2016 1:32:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHTRO](
	[MaKT] [nvarchar](50) NOT NULL,
	[MaPT] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgeNghiep] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[image] [image] NULL,
	[TrangthaiTro] [bit] NULL,
	[ChuNha] [bit] NULL,
 CONSTRAINT [PK_KHACHTRO] PRIMARY KEY CLUSTERED 
(
	[MaKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHUVUC]    Script Date: 23/05/2016 1:32:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUVUC](
	[MaKV] [nvarchar](50) NOT NULL,
	[TenKV] [nvarchar](50) NULL,
	[TANG] [nvarchar](50) NULL,
	[DAY] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHUVUC] PRIMARY KEY CLUSTERED 
(
	[MaKV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NGUOINHA]    Script Date: 23/05/2016 1:32:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOINHA](
	[MANN] [nvarchar](50) NOT NULL,
	[MK] [nvarchar](50) NULL,
	[TT] [nvarchar](50) NULL,
 CONSTRAINT [PK_NGUOINHA] PRIMARY KEY CLUSTERED 
(
	[MANN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuChi]    Script Date: 23/05/2016 1:32:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuChi](
	[MaPC] [int] IDENTITY(1,1) NOT NULL,
	[MaPT] [nvarchar](50) NULL,
	[NgayChi] [datetime] NULL,
	[SoTien] [numeric](18, 0) NULL,
	[LyDo] [nvarchar](100) NULL,
 CONSTRAINT [PK_PhieuChi] PRIMARY KEY CLUSTERED 
(
	[MaPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHONGTRO]    Script Date: 23/05/2016 1:32:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONGTRO](
	[MaPT] [nvarchar](50) NOT NULL,
	[MaKV] [nvarchar](50) NULL,
	[MaBangGia] [nvarchar](50) NULL,
	[TenPhong] [nvarchar](50) NULL,
	[SLToiDa] [int] NULL,
	[TrangThai] [bit] NULL,
	[TrangThaiThue] [bit] NULL,
	[SoNguoiHienTai] [int] NULL,
 CONSTRAINT [PK_PHONGTRO] PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QLTHUTIEN]    Script Date: 23/05/2016 1:32:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QLTHUTIEN](
	[MaThu] [int] IDENTITY(1,1) NOT NULL,
	[MaDV] [int] NULL,
	[MaPT] [nvarchar](50) NULL,
	[MaKT] [nvarchar](50) NULL,
	[Soluong] [int] NULL,
	[NgayThu] [datetime] NULL,
 CONSTRAINT [PK_QUANLITHUTIEN] PRIMARY KEY CLUSTERED 
(
	[MaThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QUANLITHUEPHONG]    Script Date: 23/05/2016 1:32:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANLITHUEPHONG](
	[MaPhieuThue] [int] IDENTITY(1,1) NOT NULL,
	[MaKT] [nvarchar](50) NULL,
	[NgayThue] [datetime] NULL,
	[TrangThai] [bit] NULL,
	[TienDatCoc] [numeric](18, 0) NULL,
 CONSTRAINT [PK_QUANLITHUEPHONG] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[THIETBI]    Script Date: 23/05/2016 1:32:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THIETBI](
	[MaTB] [int] IDENTITY(1,1) NOT NULL,
	[MaPT] [nvarchar](50) NULL,
	[TenTB] [nvarchar](50) NULL,
	[NhanHieu] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[TinhTrang] [bit] NULL,
	[NgayMua] [datetime] NULL,
	[Gia] [nvarchar](50) NULL,
 CONSTRAINT [PK_THIETBI] PRIMARY KEY CLUSTERED 
(
	[MaTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TRAPHONG]    Script Date: 23/05/2016 1:32:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRAPHONG](
	[MaTraPhong] [int] IDENTITY(1,1) NOT NULL,
	[MaKT] [nvarchar](50) NULL,
	[TenKT] [nvarchar](50) NULL,
	[NgayTra] [datetime] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TRAPHONG] PRIMARY KEY CLUSTERED 
(
	[MaTraPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[BangGiaTien] ([MaGia], [MaKV], [GiaTien]) VALUES (N'MG01', N'KV01', CAST(1000000 AS Numeric(18, 0)))
INSERT [dbo].[BangGiaTien] ([MaGia], [MaKV], [GiaTien]) VALUES (N'MG02', N'KV02', CAST(5000000 AS Numeric(18, 0)))
INSERT [dbo].[CHUNHA] ([MaND], [MatKhau], [TTIN]) VALUES (N'123', N'123', NULL)
SET IDENTITY_INSERT [dbo].[DichVu] ON 

INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia], [DonViTinh]) VALUES (1, N'Internet', CAST(30000 AS Numeric(18, 0)), N'VND')
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia], [DonViTinh]) VALUES (2, N'Điện', CAST(50000 AS Numeric(18, 0)), N'VND')
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia], [DonViTinh]) VALUES (3, N'Nước', CAST(80000 AS Numeric(18, 0)), N'VND')
SET IDENTITY_INSERT [dbo].[DichVu] OFF
INSERT [dbo].[KHACHTRO] ([MaKT], [MaPT], [HoTen], [CMND], [GioiTinh], [NgeNghiep], [DiaChi], [SDT], [image], [TrangthaiTro], [ChuNha]) VALUES (N'KT001', N'PT001', N'Nguyễn Lan Anh', N'381630174', N'Nam', N'Sinh Viên', N'Châu Thành- Ti?n Giang', N'0939928207', NULL, 1, 1)
INSERT [dbo].[KHACHTRO] ([MaKT], [MaPT], [HoTen], [CMND], [GioiTinh], [NgeNghiep], [DiaChi], [SDT], [image], [TrangthaiTro], [ChuNha]) VALUES (N'KT002', N'PT002', N'55353', N'42424', N'Nữ', N'sd', N'fsd', N'35225', NULL, 0, 0)
INSERT [dbo].[KHUVUC] ([MaKV], [TenKV], [TANG], [DAY]) VALUES (N'KV01', N'Khu vực 1', NULL, NULL)
INSERT [dbo].[KHUVUC] ([MaKV], [TenKV], [TANG], [DAY]) VALUES (N'KV02', N'Khu vực 2', NULL, NULL)
INSERT [dbo].[NGUOINHA] ([MANN], [MK], [TT]) VALUES (N'1', N'1', NULL)
SET IDENTITY_INSERT [dbo].[PhieuChi] ON 

INSERT [dbo].[PhieuChi] ([MaPC], [MaPT], [NgayChi], [SoTien], [LyDo]) VALUES (1, N'PT001', CAST(0x0000A60E00000000 AS DateTime), CAST(20000 AS Numeric(18, 0)), N'dfvgx')
INSERT [dbo].[PhieuChi] ([MaPC], [MaPT], [NgayChi], [SoTien], [LyDo]) VALUES (2, N'PT002', CAST(0x0000A60E00000000 AS DateTime), CAST(450000 AS Numeric(18, 0)), N'Hu qu?t')
SET IDENTITY_INSERT [dbo].[PhieuChi] OFF
INSERT [dbo].[PHONGTRO] ([MaPT], [MaKV], [MaBangGia], [TenPhong], [SLToiDa], [TrangThai], [TrangThaiThue], [SoNguoiHienTai]) VALUES (N'PT001', N'KV01', N'MG01', N'Phòng 1', 5, 1, 1, NULL)
INSERT [dbo].[PHONGTRO] ([MaPT], [MaKV], [MaBangGia], [TenPhong], [SLToiDa], [TrangThai], [TrangThaiThue], [SoNguoiHienTai]) VALUES (N'PT002', N'KV01', N'MG01', N'Phòng 2', 5, 1, 0, NULL)
INSERT [dbo].[PHONGTRO] ([MaPT], [MaKV], [MaBangGia], [TenPhong], [SLToiDa], [TrangThai], [TrangThaiThue], [SoNguoiHienTai]) VALUES (N'PT003', N'KV01', N'MG01', N'Phòng 3', 5, 1, 0, NULL)
INSERT [dbo].[PHONGTRO] ([MaPT], [MaKV], [MaBangGia], [TenPhong], [SLToiDa], [TrangThai], [TrangThaiThue], [SoNguoiHienTai]) VALUES (N'PT004', N'KV01', N'MG01', N'Phòng 4', 5, 1, 0, NULL)
INSERT [dbo].[PHONGTRO] ([MaPT], [MaKV], [MaBangGia], [TenPhong], [SLToiDa], [TrangThai], [TrangThaiThue], [SoNguoiHienTai]) VALUES (N'PT005', N'KV01', N'MG01', N'Phòng 5', 5, 1, 0, NULL)
INSERT [dbo].[PHONGTRO] ([MaPT], [MaKV], [MaBangGia], [TenPhong], [SLToiDa], [TrangThai], [TrangThaiThue], [SoNguoiHienTai]) VALUES (N'PT006', N'KV02', N'MG02', N'Phòng 6', 10, 1, 0, NULL)
INSERT [dbo].[PHONGTRO] ([MaPT], [MaKV], [MaBangGia], [TenPhong], [SLToiDa], [TrangThai], [TrangThaiThue], [SoNguoiHienTai]) VALUES (N'PT007', N'KV02', N'MG02', N'Phòng 7', 10, 1, 0, NULL)
INSERT [dbo].[PHONGTRO] ([MaPT], [MaKV], [MaBangGia], [TenPhong], [SLToiDa], [TrangThai], [TrangThaiThue], [SoNguoiHienTai]) VALUES (N'PT008', N'KV02', N'MG02', N'Phòng 8', 10, 1, 0, NULL)
INSERT [dbo].[PHONGTRO] ([MaPT], [MaKV], [MaBangGia], [TenPhong], [SLToiDa], [TrangThai], [TrangThaiThue], [SoNguoiHienTai]) VALUES (N'PT009', N'KV02', N'MG02', N'Phòng 9', 10, 1, 0, NULL)
INSERT [dbo].[PHONGTRO] ([MaPT], [MaKV], [MaBangGia], [TenPhong], [SLToiDa], [TrangThai], [TrangThaiThue], [SoNguoiHienTai]) VALUES (N'PT010', N'KV02', N'MG02', N'Phòng 10', 10, 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[QLTHUTIEN] ON 

INSERT [dbo].[QLTHUTIEN] ([MaThu], [MaDV], [MaPT], [MaKT], [Soluong], [NgayThu]) VALUES (86, 1, N'PT002', N'KT002', 3, CAST(0x0000A61700000000 AS DateTime))
INSERT [dbo].[QLTHUTIEN] ([MaThu], [MaDV], [MaPT], [MaKT], [Soluong], [NgayThu]) VALUES (87, 2, N'PT002', N'KT002', 3, CAST(0x0000A61700000000 AS DateTime))
INSERT [dbo].[QLTHUTIEN] ([MaThu], [MaDV], [MaPT], [MaKT], [Soluong], [NgayThu]) VALUES (88, 3, N'PT002', N'KT002', 1, CAST(0x0000A61700000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[QLTHUTIEN] OFF
SET IDENTITY_INSERT [dbo].[QUANLITHUEPHONG] ON 

INSERT [dbo].[QUANLITHUEPHONG] ([MaPhieuThue], [MaKT], [NgayThue], [TrangThai], [TienDatCoc]) VALUES (21, N'KT002', CAST(0x0000A5F900000000 AS DateTime), 1, CAST(353535 AS Numeric(18, 0)))
INSERT [dbo].[QUANLITHUEPHONG] ([MaPhieuThue], [MaKT], [NgayThue], [TrangThai], [TienDatCoc]) VALUES (22, N'KT001', CAST(0x0000A5F900000000 AS DateTime), 1, CAST(500000 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[QUANLITHUEPHONG] OFF
SET IDENTITY_INSERT [dbo].[THIETBI] ON 

INSERT [dbo].[THIETBI] ([MaTB], [MaPT], [TenTB], [NhanHieu], [SoLuong], [TinhTrang], [NgayMua], [Gia]) VALUES (124, N'PT001', N'Máy gi?c', N'', 1, 1, CAST(0x0000A60A00000000 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[THIETBI] OFF
SET IDENTITY_INSERT [dbo].[TRAPHONG] ON 

INSERT [dbo].[TRAPHONG] ([MaTraPhong], [MaKT], [TenKT], [NgayTra], [GhiChu]) VALUES (55, N'KT002', N'55353', CAST(0x0000A61700000000 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[TRAPHONG] OFF
ALTER TABLE [dbo].[BangGiaTien]  WITH CHECK ADD  CONSTRAINT [FK_BangGiaTien_KHUVUC] FOREIGN KEY([MaKV])
REFERENCES [dbo].[KHUVUC] ([MaKV])
GO
ALTER TABLE [dbo].[BangGiaTien] CHECK CONSTRAINT [FK_BangGiaTien_KHUVUC]
GO
ALTER TABLE [dbo].[KHACHTRO]  WITH CHECK ADD  CONSTRAINT [FK_KHACHTRO_PHONGTRO] FOREIGN KEY([MaPT])
REFERENCES [dbo].[PHONGTRO] ([MaPT])
GO
ALTER TABLE [dbo].[KHACHTRO] CHECK CONSTRAINT [FK_KHACHTRO_PHONGTRO]
GO
ALTER TABLE [dbo].[PhieuChi]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChi_PHONGTRO] FOREIGN KEY([MaPT])
REFERENCES [dbo].[PHONGTRO] ([MaPT])
GO
ALTER TABLE [dbo].[PhieuChi] CHECK CONSTRAINT [FK_PhieuChi_PHONGTRO]
GO
ALTER TABLE [dbo].[PHONGTRO]  WITH CHECK ADD  CONSTRAINT [FK_PHONGTRO_KHUVUC1] FOREIGN KEY([MaKV])
REFERENCES [dbo].[KHUVUC] ([MaKV])
GO
ALTER TABLE [dbo].[PHONGTRO] CHECK CONSTRAINT [FK_PHONGTRO_KHUVUC1]
GO
ALTER TABLE [dbo].[QLTHUTIEN]  WITH CHECK ADD  CONSTRAINT [FK_QLTHUTIEN_DichVu] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
ALTER TABLE [dbo].[QLTHUTIEN] CHECK CONSTRAINT [FK_QLTHUTIEN_DichVu]
GO
ALTER TABLE [dbo].[QLTHUTIEN]  WITH CHECK ADD  CONSTRAINT [FK_QLTHUTIEN_KHACHTRO] FOREIGN KEY([MaKT])
REFERENCES [dbo].[KHACHTRO] ([MaKT])
GO
ALTER TABLE [dbo].[QLTHUTIEN] CHECK CONSTRAINT [FK_QLTHUTIEN_KHACHTRO]
GO
ALTER TABLE [dbo].[QUANLITHUEPHONG]  WITH CHECK ADD  CONSTRAINT [FK_QUANLITHUEPHONG_KHACHTRO] FOREIGN KEY([MaKT])
REFERENCES [dbo].[KHACHTRO] ([MaKT])
GO
ALTER TABLE [dbo].[QUANLITHUEPHONG] CHECK CONSTRAINT [FK_QUANLITHUEPHONG_KHACHTRO]
GO
ALTER TABLE [dbo].[THIETBI]  WITH CHECK ADD  CONSTRAINT [FK_THIETBI_PHONGTRO] FOREIGN KEY([MaPT])
REFERENCES [dbo].[PHONGTRO] ([MaPT])
GO
ALTER TABLE [dbo].[THIETBI] CHECK CONSTRAINT [FK_THIETBI_PHONGTRO]
GO
ALTER TABLE [dbo].[TRAPHONG]  WITH CHECK ADD  CONSTRAINT [FK_TRAPHONG_KHACHTRO] FOREIGN KEY([MaKT])
REFERENCES [dbo].[KHACHTRO] ([MaKT])
GO
ALTER TABLE [dbo].[TRAPHONG] CHECK CONSTRAINT [FK_TRAPHONG_KHACHTRO]
GO
