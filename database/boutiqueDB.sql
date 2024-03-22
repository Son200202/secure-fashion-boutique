USE [boutique]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[MaCTSP] [int] NOT NULL,
	[MaDH] [int] NOT NULL,
	[Gia] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_CHIITETHOADON_1] PRIMARY KEY CLUSTERED 
(
	[MaCTSP] ASC,
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAP]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUNHAP](
	[MaPhieuNhap] [int] NOT NULL,
	[MaChiTietSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Gia] [float] NOT NULL,
 CONSTRAINT [PK_CHITIETPHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETSANPHAM]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETSANPHAM](
	[MaChiTietSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[MaSize] [int] NOT NULL,
 CONSTRAINT [PK_CHITETSANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DANHMUCSANPHAM]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUCSANPHAM](
	[MaDanhMuc] [int] NOT NULL,
	[TenDanhMuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DANHMUCSANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [varchar](10) NULL,
	[MaKH] [varchar](10) NOT NULL,
	[ThoiGian] [date] NOT NULL,
	[SDTKH] [varchar](12) NOT NULL,
	[DiaChi] [nvarchar](70) NOT NULL,
	[GhiChu] [ntext] NOT NULL,
	[HinhThucThanhToan] [int] NOT NULL,
	[TinhTrangDonHang] [int] NOT NULL,
	[TongTien] [float] NOT NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIOHANG]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIOHANG](
	[MaKH] [varchar](10) NOT NULL,
	[MaChiTietSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC,
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HINHTHUCTHANHTOAN]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HINHTHUCTHANHTOAN](
	[MaHTTT] [int] IDENTITY(1,1) NOT NULL,
	[KieuTT] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_HINHTHUCTHANHTOAN] PRIMARY KEY CLUSTERED 
(
	[MaHTTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [varchar](10) NOT NULL,
	[Ho] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](30) NOT NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [ntext] NOT NULL,
	[SDT] [varchar](11) NOT NULL,
	[MaTK] [varchar](10) NOT NULL,
	[Anh] [varchar](1000) NULL,
	[Phai] [bit] NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAUSANPHAM]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAUSANPHAM](
	[MaMau] [int] NOT NULL,
	[TenMau] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_MAUSANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[SDT] [varchar](11) NOT NULL,
	[DiaChi] [nvarchar](225) NOT NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [varchar](10) NOT NULL,
	[Ho] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](30) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[CCCD] [varchar](15) NOT NULL,
	[DiaChi] [ntext] NOT NULL,
	[SDT] [varchar](11) NOT NULL,
	[MaTK] [varchar](10) NOT NULL,
	[Anh] [varchar](1000) NULL,
	[Phai] [bit] NOT NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MAPN] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGian] [date] NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[MaNCC] [int] NOT NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [int] NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[MoTa] [ntext] NULL,
	[Gia] [float] NOT NULL,
	[GiamGia] [float] NULL CONSTRAINT [DF_SANPHAM_GiamGia]  DEFAULT ((0)),
	[MaDanhMuc] [int] NOT NULL,
	[Phai] [bit] NOT NULL,
	[HinhAnh] [nvarchar](500) NOT NULL,
	[MaMau] [int] NOT NULL,
	[Style] [nvarchar](50) NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIZESANPHAM]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZESANPHAM](
	[MaSize] [int] IDENTITY(1,1) NOT NULL,
	[TenSize] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_SIZESANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[MaTK] [varchar](10) NOT NULL,
	[MatKhau] [varchar](100) NOT NULL,
	[MaVaiTro] [varchar](10) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRANGTHAIDONHANG]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANGTHAIDONHANG](
	[MaTTDH] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TRANGTHAIDONHANG] PRIMARY KEY CLUSTERED 
(
	[MaTTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VAITRO]    Script Date: 12/24/2022 9:42:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VAITRO](
	[MaVT] [varchar](10) NOT NULL,
	[TenVT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CHUCVU] PRIMARY KEY CLUSTERED 
(
	[MaVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (1, 100, 2, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (2, 100, 2, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (3, 100, 2, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (4, 100, 3, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (5, 100, 3, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (6, 100, 3, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (7, 100, 4, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (8, 100, 4, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (9, 100, 4, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (10, 100, 5, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (11, 100, 5, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (12, 100, 5, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (13, 100, 6, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (14, 100, 6, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (16, 100, 6, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (17, 100, 7, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (18, 100, 7, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (19, 100, 7, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (20, 100, 8, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (21, 100, 8, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (22, 100, 8, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (23, 100, 9, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (24, 100, 9, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (25, 100, 9, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (26, 100, 10, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (27, 100, 10, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (28, 100, 10, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (29, 100, 11, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (30, 100, 11, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (31, 100, 11, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (32, 100, 12, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (33, 100, 12, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (34, 100, 12, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (35, 100, 13, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (36, 100, 13, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (37, 100, 13, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (38, 100, 14, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (39, 100, 14, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (40, 100, 14, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (41, 100, 15, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (42, 100, 15, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (43, 100, 15, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (44, 100, 16, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (45, 100, 16, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (46, 100, 16, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (47, 100, 17, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (48, 100, 17, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (49, 100, 17, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (50, 100, 18, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (51, 100, 18, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (52, 100, 18, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (53, 100, 19, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (54, 100, 19, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (55, 100, 19, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (56, 100, 20, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (57, 100, 20, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (58, 100, 20, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (59, 100, 21, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (60, 100, 21, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (61, 100, 21, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (62, 100, 22, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (63, 100, 22, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (64, 100, 22, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (65, 100, 23, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (66, 100, 23, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (67, 100, 23, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (68, 100, 24, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (69, 100, 24, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (70, 100, 24, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (71, 100, 25, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (72, 100, 25, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (73, 100, 25, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (74, 100, 26, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (75, 100, 26, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (76, 100, 26, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (77, 100, 27, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (78, 100, 27, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (79, 100, 27, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (80, 100, 28, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (81, 100, 28, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (82, 100, 28, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (83, 100, 29, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (84, 100, 29, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (85, 100, 29, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (89, 100, 31, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (90, 100, 31, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (91, 100, 31, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (92, 100, 32, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (93, 100, 32, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (94, 100, 32, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (95, 100, 33, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (96, 100, 33, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (97, 100, 33, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (98, 100, 34, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (99, 100, 34, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (100, 100, 34, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (101, 100, 35, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (102, 100, 35, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (103, 100, 35, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (104, 100, 36, 1)
GO
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (105, 100, 36, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (106, 100, 36, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (107, 100, 37, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (108, 100, 37, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (109, 100, 37, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (110, 100, 38, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (111, 100, 38, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (112, 100, 38, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (113, 100, 39, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (114, 100, 39, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (115, 100, 39, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (116, 100, 40, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (117, 100, 40, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (118, 100, 40, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (119, 100, 41, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (121, 100, 41, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (122, 100, 42, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (123, 100, 42, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (124, 100, 42, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (125, 100, 43, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (126, 100, 43, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (127, 100, 43, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (128, 100, 44, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (129, 100, 44, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (130, 100, 44, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (131, 100, 45, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (132, 100, 45, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (133, 100, 45, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (134, 100, 46, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (135, 100, 46, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (136, 100, 46, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (137, 100, 47, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (138, 100, 47, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (139, 100, 47, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (140, 100, 48, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (141, 100, 48, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (142, 100, 48, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (143, 100, 49, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (144, 100, 49, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (145, 100, 49, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (146, 100, 50, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (147, 100, 50, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (148, 100, 50, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (149, 100, 51, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (150, 100, 51, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (151, 100, 51, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (152, 100, 52, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (153, 100, 52, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (154, 100, 52, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (155, 100, 53, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (156, 100, 53, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (157, 100, 53, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (158, 100, 54, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (159, 100, 54, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (160, 100, 54, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (161, 100, 55, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (162, 100, 55, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (163, 100, 55, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (164, 100, 56, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (165, 100, 56, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (166, 100, 56, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (167, 100, 57, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (168, 100, 57, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (169, 100, 57, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (170, 100, 58, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (171, 100, 58, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (172, 100, 58, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (173, 100, 59, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (174, 100, 59, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (175, 100, 59, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (176, 100, 60, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (177, 100, 60, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (178, 100, 60, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (179, 100, 61, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (180, 100, 61, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (181, 100, 61, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (182, 100, 62, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (183, 100, 62, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (184, 100, 62, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (185, 100, 63, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (186, 100, 63, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (187, 100, 63, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (188, 100, 64, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (189, 100, 64, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (190, 100, 64, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (191, 100, 65, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (192, 100, 65, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (193, 100, 65, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (194, 100, 66, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (195, 100, 66, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (196, 100, 66, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (197, 100, 67, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (198, 100, 67, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (199, 100, 67, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (200, 100, 68, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (201, 100, 68, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (202, 100, 68, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (203, 100, 69, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (204, 100, 69, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (205, 100, 69, 3)
GO
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (209, 100, 71, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (211, 100, 71, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (212, 100, 71, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (213, 100, 72, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (214, 100, 72, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (215, 100, 72, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (216, 100, 73, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (217, 100, 73, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (218, 100, 73, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (219, 100, 74, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (220, 100, 41, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (221, 100, 74, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (222, 100, 75, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (223, 100, 75, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (224, 100, 75, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (225, 100, 76, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (226, 100, 76, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (227, 100, 76, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (228, 100, 77, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (229, 100, 77, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (230, 100, 77, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (231, 100, 78, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (232, 100, 78, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (233, 100, 78, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (234, 100, 79, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (235, 100, 79, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (236, 100, 79, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (237, 100, 80, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (238, 100, 80, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (239, 100, 80, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (240, 100, 81, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (241, 100, 81, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (242, 100, 81, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (243, 100, 82, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (244, 100, 82, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (245, 100, 82, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (246, 100, 83, 1)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (247, 100, 83, 2)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (248, 100, 83, 3)
INSERT [dbo].[DANHMUCSANPHAM] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'Áo Thun')
INSERT [dbo].[DANHMUCSANPHAM] ([MaDanhMuc], [TenDanhMuc]) VALUES (3, N'Áo Vest')
INSERT [dbo].[DANHMUCSANPHAM] ([MaDanhMuc], [TenDanhMuc]) VALUES (4, N'Áo Sơ Mi')
INSERT [dbo].[DANHMUCSANPHAM] ([MaDanhMuc], [TenDanhMuc]) VALUES (5, N'Áo Khoác')
INSERT [dbo].[DANHMUCSANPHAM] ([MaDanhMuc], [TenDanhMuc]) VALUES (9, N'Quần Short')
INSERT [dbo].[DANHMUCSANPHAM] ([MaDanhMuc], [TenDanhMuc]) VALUES (10, N'Đồ Bộ')
INSERT [dbo].[DANHMUCSANPHAM] ([MaDanhMuc], [TenDanhMuc]) VALUES (11, N'Quần Jeans')
INSERT [dbo].[DANHMUCSANPHAM] ([MaDanhMuc], [TenDanhMuc]) VALUES (12, N'Đồ Kaki')
INSERT [dbo].[DANHMUCSANPHAM] ([MaDanhMuc], [TenDanhMuc]) VALUES (14, N'Phụ Kiện')
SET IDENTITY_INSERT [dbo].[HINHTHUCTHANHTOAN] ON 

INSERT [dbo].[HINHTHUCTHANHTOAN] ([MaHTTT], [KieuTT]) VALUES (1, N'ATM')
INSERT [dbo].[HINHTHUCTHANHTOAN] ([MaHTTT], [KieuTT]) VALUES (2, N'Thanh toán khi nhận hàng')
SET IDENTITY_INSERT [dbo].[HINHTHUCTHANHTOAN] OFF
INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [NgaySinh], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'KH1', N'Nguyen', N'Thuong', CAST(N'2022-04-26' AS Date), N'34343', N'0388888888', N'TK8', N'16537125244262_cate.jpg', 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [NgaySinh], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'KH2', N'nguyen quan', N'Đức', CAST(N'2022-04-27' AS Date), N'23424554', N'234', N'TK9', NULL, 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [NgaySinh], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'KH3', N'Nguyễn Trung', N'Đức', CAST(N'2022-05-18' AS Date), N'Q9 TP HCM', N'098762824', N'TK10', N'165397978112879600032_963455200692780_3918348468581564416_o.jpg', 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [NgaySinh], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'KH4', N'nguyen quan', N'ds', CAST(N'2022-04-27' AS Date), N'434', N'243', N'TK14', N'79532365_963455060692794_6893693599825788928_o.jpg', 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [NgaySinh], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'KH5', N'Nguyễn', N'Thường', CAST(N'2022-05-13' AS Date), N'97 Man Thiện', N'123321', N'TK17', NULL, 1)
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (1, N'White')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (2, N'Black')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (3, N'Red')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (4, N'Pink')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (5, N'Blue')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (7, N'Gray')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (8, N'Beige')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (9, N'Navy')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (10, N'Brown')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (11, N'Cream')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (12, N'Yellow')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (13, N'Slive')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (14, N'Orange')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (15, N'Green')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (5, N'Shop 249', N'12345', N'81 Phạm Văn Đồng')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (6, N'CTY TNHH Lê Văn', N'123', N'123 Xô Viết Nghệ Tĩnh')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (7, N'Nguyễn Xuân Thường', N'3345', N'97 Man Thiện')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV1', N'Nguyễn', N'Đức', CAST(N'2000-04-19' AS Date), N'2342543542', N'Q9 TP hcm', N'0967727201', N'TK1', N'165396922333379532365_963455060692794_6893693599825788928_o.jpg', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV10', N'Nguyen', N'Thuong', CAST(N'2022-05-04' AS Date), N'43', N'3r3r', N'0988888888', N'TK13', N'1654163363594nikeairforce1.jpg', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV11', N'Nguyễn', N'Thường', CAST(N'2022-05-15' AS Date), N'123123', N'97 Man Thiện', N'12345678', N'TK15', N'278976008_674178603688264_2468058955624321585_n.jpg', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV12', N'Nguyễn', N'Thường', CAST(N'2022-05-09' AS Date), N'123123', N'97 Man Thiện', N'13443', N'TK16', NULL, 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV13', N'Nguyễn', N'Nhân viên', CAST(N'2022-05-31' AS Date), N'243987654', N'q9 hcm', N'098764324', N'TK18', N'1654181657536nikeairforce1.jpg', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV14', N'Nguyễn', N'Thường11', CAST(N'2000-01-05' AS Date), N'123456123', N'97 Man Thiện', N'21312312', N'TK19', N'1654238304689Screenshot 2022-05-22 145746.png', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV2', N'Nguyễn', N'ds', CAST(N'2022-04-04' AS Date), N'12334', N'ha noii', N'2312314', N'TK2', N'1654183051463nikeairforce1.jpg', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV3', N'dwdwd', N'32r', CAST(N'2022-05-02' AS Date), N'2342443', N'q9 hcm', N'342', N'TK3', NULL, 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV4', N'nguyen quan', N'fwe', CAST(N'2022-05-04' AS Date), N'2342443', N'123132', N'0987642434', N'TK4', NULL, 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV5', N'Nguyễn qua', N'ds', CAST(N'2022-05-19' AS Date), N'2342443', N'2e3', N'3232344', N'TK5', NULL, 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV6', N'Nguyễn', N'ds', CAST(N'2022-04-26' AS Date), N'23', N'23e23e32', N'232233', N'TK6', NULL, 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV7', N'nguyen khach', N'Đức', CAST(N'2022-05-10' AS Date), N'3443', N'1423', N'3443433', N'TK7', NULL, 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV8', N'nguyen quan', N'ds', CAST(N'2022-04-29' AS Date), N'2434', N'423', N'2342342', N'TK11', NULL, 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV9', N'df', N'bgd', CAST(N'2022-05-05' AS Date), N'345', N'5', N'54545', N'TK12', NULL, 1)
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] ON 

INSERT [dbo].[PHIEUNHAP] ([MAPN], [ThoiGian], [MaNV], [MaNCC], [TongTien]) VALUES (1, CAST(N'2022-05-29' AS Date), N'NV1', 5, 1100000)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [ThoiGian], [MaNV], [MaNCC], [TongTien]) VALUES (2, CAST(N'2022-06-03' AS Date), N'NV10', 5, 18800000)
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] OFF
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (2, N'Áo Len Nâu', NULL, 680000, 0, 2, 0, N'https://cdn.shopify.com/s/files/1/1236/1344/files/25-3-1_2048x2048.jpg?v=1585124927', 2, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (3, N'Áo Khoác Hoodie', NULL, 360000, 0, 2, 0, N'https://cf.shopee.vn/file/sg-11134201-22110-ypnufi3w1bkv43', 1, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (4, N'Áo Khoác Hoodie', NULL, 360000, 0, 2, 0, N'https://cf.shopee.vn/file/sg-11134201-22110-w3yobm3w1bkvb4', 7, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (5, N'Áo Khoác Hoodie', NULL, 360000, 0, 2, 0, N'https://cf.shopee.vn/file/sg-11134201-22110-nx7phl3w1bkv95', 9, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (6, N'Áo Khoác Hoodie', NULL, 360000, 0, 2, 0, N'https://cf.shopee.vn/file/sg-11134201-22110-tekpvm3w1bkvf4', 2, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (7, N'Áo khoác dây kéo HOODIE ZIP', NULL, 480000, 0, 2, 0, N'https://cf.shopee.vn/file/9a5ed747d8c17f3b3149b83c6a5ac3ee', 1, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (8, N'Áo khoác dây kéo HOODIE ZIP', NULL, 520000, 0, 2, 0, N'https://cf.shopee.vn/file/367894f4c31b65649d6b15e2069be2ff', 7, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (9, N'Áo Crewneck', NULL, 320000, 0, 2, 0, N'https://i.etsystatic.com/25196565/r/il/1df9a7/4029095587/il_570xN.4029095587_7rtf.jpg', 8, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (10, N'Áo Crewneck', NULL, 320000, 0, 2, 0, N'https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2Fb6%2Fb4%2Fb6b42e24a0b4dfe7640508b34b094dcb839c5175.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5Bmen_hoodiessweatshirts_sweatshirts%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]', 9, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (11, N'Áo HOODIE', NULL, 320000, 0, 2, 0, N'https://cf.shopee.vn/file/0716c8cbefc51c2523b4aaf7dbae67a1', 2, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (12, N'Áo HOODIE', NULL, 200000, 0, 4, 0, N'https://cf.shopee.vn/file/c51a09c80ac4cc3a67fd388f78f3afe1', 1, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (13, N'Áo Sơ mi', NULL, 200000, 0, 4, 0, N'https://img.ltwebstatic.com/images3_pi/2022/03/10/1646877137875e0abd278a579adc807bcd35dccc87.webp', 7, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (14, N'Áo Sơ mi', NULL, 200000, 0, 4, 0, N'https://img.ltwebstatic.com/images3_pi/2022/03/10/16468771417b8aa9cac44fdbbbe31bcf9fbc9a1acf.webp', 8, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (15, N'Áo Sơ mi', NULL, 200000, 0, 4, 0, N'https://img.ltwebstatic.com/images3_pi/2022/03/10/1646877147757f5f3761e9d5e47a74731771714da6.webp', 9, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (16, N'Áo Sơ mi', NULL, 200000, 0, 4, 0, N'https://img.ltwebstatic.com/images3_pi/2021/10/22/1634865752388d798868c7159cd241f1cc07ee2ac5.webp', 1, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (17, N'Áo Sơ mi', NULL, 800000, 0, 4, 0, N'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/451094/item/goods_00_451094.jpg?width=1600&impolicy=quality_75', 1, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (18, N'Áo Sơ mi', NULL, 200000, 0, 4, 0, N'https://cf.shopee.vn/file/808179324463d3a185c10a61c5c48a0e', 2, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (19, N'Áo Sơ mi', NULL, 200000, 0, 4, 0, N'https://img.ltwebstatic.com/images3_pi/2022/06/08/165467592747b3189d70d14a46358ccbe8f68861b2_thumbnail_900x.webp', 7, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (20, N'Áo Sơ mi', NULL, 200000, 0, 4, 0, N'https://img.ltwebstatic.com/images3_pi/2022/06/08/165467592497964b1d9167280441c3234466875fa8_thumbnail_900x.webp', 10, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (21, N'Áo Sơ mi', NULL, 200000, 0, 4, 0, N'https://img.ltwebstatic.com/images3_pi/2022/06/16/1655344613bb492bd2ceb011e5f65267a39da1c3c2_thumbnail_405x552.webp', 11, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (22, N'Áo Sơ mi', NULL, 200000, 0, 4, 0, N'https://lzd-img-global.slatic.net/g/p/8e6e149cf64702c752cb62ae59ddd07c.jpg_720x720q80.jpg_.webp', 3, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (23, N'Áo Crewneck', NULL, 150000, 0, 2, 0, N'https://images.squarespace-cdn.com/content/v1/5b110bd3e7494059bae4691c/1548370773156-UNDX42OOGQ94UXGOIKTF/crewneck-front.jpg?format=1000w', 5, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (24, N'Áo Crewneck', NULL, 150000, 0, 2, 0, N'https://img.ltwebstatic.com/images3_pi/2022/07/13/1657697142ef785c356a5802a430fa1cd49409d36f_thumbnail_405x552.webp', 12, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (25, N'Áo Crewneck', NULL, 150000, 0, 2, 0, N'https://img.ltwebstatic.com/images3_pi/2022/03/28/1648444076ec5695bdfdd52590f311990d42703765_thumbnail_405x552.webp', 14, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (26, N'Áo Crewneck', NULL, 150000, 0, 2, 0, N'https://cf.shopee.co.id/file/e5f29e85e0d86bdb8cb1d6654be36042', 7, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (27, N'Áo sơ mi nữ Viên lá sen', NULL, 500000, 0, 11, 0, N'https://img.ltwebstatic.com/images3_pi/2022/05/09/16520678450b5451acaa0d743b6d96c49f7105063e.webp', 12, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (28, N'SHEIN MOD Áo sơ mi nữ Xù Cắt ra Thắt nơ', NULL, 500000, 0, 11, 0, N'https://img.ltwebstatic.com/images3_pi/2022/09/21/1663742235ed01dd5d52722b790db24525312414f9_thumbnail_900x.webp', 10, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (29, N'Áo sơ mi nữ Cắt ra Xù Buộc lại màu trơn Boho', NULL, 500000, 0, 11, 0, N'https://img.ltwebstatic.com/images3_pi/2022/06/27/165630818966f1890c23fab7478e22b42a7771c9f3_thumbnail_900x.webp', 8, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (31, N'Áo sơ mi nữ Tương phản lông thú giả màu trơn', NULL, 1100000, 0, 11, 0, N'https://img.ltwebstatic.com/images3_pi/2022/09/23/1663901590bddbde0df1e967ce564f49c19bec9373_thumbnail_900x.webp', 8, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (32, N'Quần Jeans Nữ Skinny Túi Vuông Co Giãn 4 Chiều', NULL, 550000, 0, 12, 0, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jean-nu-qjn5094-xdm-6-yodyvn.jpg?v=1669887727770', 2, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (33, N'Quần Jeans Nữ Baggy Cạp Chun Mềm Mại', NULL, 500000, 0, 12, 0, N'https://bizweb.dktcdn.net/100/438/408/products/quan-jeans-nu-baggy-cap-chun-mem-mai-qjn5096-den-yodyvn-1.jpg?v=1670655253077', 5, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (34, N'Quần Jeans Skinny thêu túi', NULL, 530000, 0, 12, 0, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5068-xah-7.jpg?v=1671075281787', 9, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (35, N'Quần Jeans nữ ống đứng', NULL, 600000, 0, 12, 0, N'https://bizweb.dktcdn.net/100/438/408/products/qjn5098-xdm-7.jpg?v=1663312151657', 13, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (36, N'Quần Jeans Giấy Nữ Baggy Cạp 5cm', NULL, 500000, 0, 2, 0, N'https://bizweb.dktcdn.net/100/438/408/products/qjn4046-xah-3.jpg?v=1669170558400', 2, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (37, N'Đầm mini cổ sơ mi', NULL, 450000, 0, 5, 0, N'https://product.hstatic.net/1000003969/product/xanh_jndlu046_2_20221019115727_e5032a96804c40319731c229ea5cd929_grande.jpeg', 3, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (38, N'Đầm sơmi tay ngắn lưng thun', NULL, 450000, 0, 5, 0, N'https://product.hstatic.net/1000003969/product/cam_jndlu047_1_20221102155423_00c711a116e54b8d94c6c0d20fccdbad_grande.jpeg', 12, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (39, N'Đầm midi 2 dây', NULL, 450000, 0, 5, 0, N'https://product.hstatic.net/1000003969/product/trang_jndlu043_7_20221122092801_e8cbd23f491a4ca4a02aebb27a6e3fc4_master.jpeg', 5, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (40, N'Đầm ngắn 2 dây cài khuy', NULL, 450000, 0, 5, 0, N'https://product.hstatic.net/1000003969/product/nau_jndlu050_8_20221129172749_7450daf01e544f87ac0a4d2d83d7bcab_grande.jpeg', 15, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (41, N'Áo Hoodie', NULL, 450000, 0, 5, 0, N'https://product.hstatic.net/200000255805/product/essentials-ssense-exclusive-beige-pullover-hoodie_968cab5ff0d444b18613be4bae219235_master.jpeg', 8, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (42, N'Áo Sweater', NULL, 450000, 0, 5, 0, N'https://ae01.alicdn.com/kf/H4ea807ea6bac4cb091ebe6adcbbf7de6j/2021-Ph-N-M-i-Crop-o-Len-Ph-i-L-ng-Cardigan-H-n-Qu.jpg_640x640.jpg', 3, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (43, N'Áo Sweater', NULL, 450000, 0, 5, 0, N'https://salt.tikicdn.com/cache/280x280/ts/product/1b/8d/50/12d07979aedac68f6e72af9b1ed01bc7.jpg', 14, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (44, N'Áo Sweater', NULL, 450000, 0, 5, 0, N'https://lzd-img-global.slatic.net/g/p/1e6db170e82069f11c413525c6ce1755.jpg_720x720q80.jpg_.webp', 4, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (45, N'Áo Sweater', NULL, 450000, 0, 5, 0, N'https://ae01.alicdn.com/kf/H6e4d4a44a072451db0eb2d6824772a20c/Suntin-Ins-Vintage-Xanh-Kh-a-K-o-G-n-o-Len-Cardigan-N-Thu-Xu.jpg_Q90.jpg_.webp', 15, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (46, N'Áo Sweater', NULL, 455000, 0, 5, 0, N'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/11/ao-cardigan-13-de-marzo-x-pop-mart-beige-canned-coffee-mau-be-size-s-63871d11a6a43-30112022160625.jpg', 11, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (47, N'Áo Cardigan', NULL, 550000, 0, 5, 0, N'https://cf.shopee.vn/file/8a23e7cccab52009fae314efd82b1ee1', 2, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (48, N'Áo Cardigan', NULL, 990000, 0, 5, 0, N'https://dosi-in.com/file/detailed/139/dosiin-swe-swe-cardigan-cream-139692139692.jpeg?w=670&h=670&fit=fill&fm=webp', 11, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (49, N'Áo Cardigan', NULL, 550000, 0, 5, 0, N'https://monotikcdn.com/1920x1920/in/1/jpeg/c4/e9/4d5e3d901cc5587374d420e6acd0', 13, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (50, N'Áo Cardigan', NULL, 990000, 0, 5, 0, N'https://i.etsystatic.com/5235755/r/il/28e088/1533793351/il_fullxfull.1533793351_oaxv.jpg', 13, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (51, N'Áo Sports', NULL, 3500000, 0, 5, 0, N'https://ae01.alicdn.com/kf/HTB142sjoZnI8KJjSsziq6z8QpXag/FENGXUELANG-Softshell-o-Kho-c-Ph-N-c-a-o-Gi-i-B-ng-D.jpg_Q90.jpg_.webp', 5, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (52, N'Áo Sports', NULL, 3500000, 0, 5, 0, N'https://img.ltwebstatic.com/images3_pi/2021/10/16/163436231223f3feb43d9edac7a44d3402d3160ea9.webp', 2, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (53, N'Quần Sports', NULL, 2500000, 0, 9, 0, N'https://product.hstatic.net/1000284478/product/50bks_3fspa0223_1_99392dc5087c4adba1675fca4a2089c1_grande.jpg', 2, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (54, N'Quần Sports', NULL, 2500000, 0, 9, 0, N'https://sneakerdaily.vn/wp-content/uploads/2021/07/quan-short-nu-mlb-coolfield-la-dodgers-blue-31spia131-07s-1.jpg', 5, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (55, N'Quần Sports', NULL, 2500000, 0, 9, 0, N'https://cdn-images.kiotviet.vn/4teen/5ffda6ee17934e50b5bdd5b710c01b1b.jpg', 10, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (56, N'Quần Sports', NULL, 2500000, 0, 9, 0, N'https://lzd-img-global.slatic.net/g/p/b87813b8e95815666c197eeb1460a24b.jpg_720x720q80.jpg_.webp', 13, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (57, N'Quần Sports', NULL, 2500000, 0, 9, 0, N'https://lzd-img-global.slatic.net/g/p/e933d505e5224ceba57abc496cd21e33.jpg_720x720q80.jpg_.webp', 15, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (58, N'Quần Simple', NULL, 2550000, 0, 9, 0, N'https://media3.scdn.vn/img3/2019/3_30/U6ozYD_simg_b5529c_250x250_maxb.jpg', 9, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (59, N'Quần Simple', NULL, 2550000, 0, 9, 0, N'https://img01.ztat.net/article/spp-media-p1/d0ab5fb5537a4e798bd8fdfbd7d60700/0061ed6562434887a56377d7ec808e17.jpg?imwidth=762&filter=packshot', 8, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (60, N'Quần Simple', NULL, 2550000, 0, 9, 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZPxCN7-mR2_WC7x1u8G7SKFaHeJttU31sHQ&usqp=CAU', 1, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (61, N'Quần Simple', NULL, 2550000, 0, 9, 0, N'https://cf.shopee.vn/file/1e4931ea8798e446b8821b0cc6481b2e', 2, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (62, N'Suit Two', NULL, 1550000, 0, 3, 0, N'https://ae01.alicdn.com/kf/HTB1ZfS4a.OWBKNjSZKzq6xfWFXaz/Ph-H-p-V-i-Ph-N-o-B-Thu-ng-Th-i-Trang-Ph-H.jpg_Q90.jpg_.webp', 2, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (63, N'Suit Two', NULL, 1550000, 0, 3, 0, N'https://www.dhresource.com/0x0/f2/albu/g22/M00/D7/F1/rBVaE2JF2QeAfxKiAACj9Pl1Hlk728.jpg', 9, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (64, N'Suit Three', NULL, 1550000, 0, 3, 0, N'https://i.pinimg.com/736x/df/12/4d/df124d3ef67aac0978a5c09324081797.jpg', 9, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (65, N'Suit Three', NULL, 1550000, 0, 3, 0, N'https://i.pinimg.com/736x/16/34/03/163403669cec3b70ae37d778cce7ad74.jpg', 13, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (66, N'Suit Three', NULL, 1600000, 0, 3, 0, N'https://i.etsystatic.com/31326629/r/il/13f12c/3562637799/il_570xN.3562637799_nkdb.jpg', 2, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (67, N'Vest', NULL, 1300000, 0, 3, 0, N'https://bucket.nhanh.vn/store2/78944/ps/20220804/04082022100851_4a73fa72dff82ffa20942c8a105c3ff5.jpg', 2, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (68, N'Vest', NULL, 1350000, 0, 3, 0, N'https://lzd-img-global.slatic.net/g/p/3e1edb418d9191e73624dd4d3ab1cfed.jpg_1200x1200q80.jpg_.webp', 7, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (69, N'Vest', NULL, 1700000, 0, 3, 0, N'https://salt.tikicdn.com/cache/280x280/ts/product/7b/9c/70/d3d0032236539e3534ee43e71a526616.jpg', 2, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (71, N'Wallet', NULL, 350000, 0, 14, 0, N'https://cdn.chiaki.vn/unsafe/0x900/left/top/smart/filters:quality(90)/https://chiaki.vn/upload/product/2022/10/vi-dai-charles-keith-tassel-detail-black-634d0b5937c1b-17102022145921.jpg', 2, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (72, N'Wallet', NULL, 500000, 0, 14, 0, N'https://media.karousell.com/media/photos/products/2022/8/21/riviera_branded_black_long_wal_1661058889_48f6706e_progressive.jpg', 2, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (73, N'Wallet', NULL, 250000, 0, 14, 0, N'https://sieuthihangmy.com.vn/storage/media/3sCaHVrl1YLc0KuSwRuAwvZVnoNRmvFwjw6hbH6g.jpg', 10, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (74, N'Belt', NULL, 80000, 0, 14, 0, N'https://cf.shopee.vn/file/ade0102534799e4a9430e4af7be44851_tn', 2, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (75, N'Belt', NULL, 80000, 0, 14, 0, N'https://cf.shopee.vn/file/ade0102534799e4a9430e4af7be44851_tn', 2, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (76, N'Socks', NULL, 80000, 0, 14, 0, N'https://kata.vn/userfiles/product/12025-dai-dien.jpg', 3, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (77, N'Socks', NULL, 80000, 0, 14, 0, N'https://product.hstatic.net/1000042622/product/ta123-20_9734c637c7ec4f488be8161c845bbfba_master.jpg', 5, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (78, N'Socks', NULL, 80000, 0, 14, 0, N'https://i.pinimg.com/originals/cf/4f/77/cf4f771eecbd32ffcd049b51b1d14293.jpg', 12, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (79, N'Socks', NULL, 80000, 0, 14, 0, N'https://lzd-img-global.slatic.net/g/ff/kf/Sf452558442504e38b85267f5594bf600P.jpg_720x720q80.jpg_.webp', 1, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (80, N'Socks', NULL, 80000, 0, 14, 0, N'https://cf.shopee.vn/file/0afc01400bd497c0a47ad3a60cf35b2d', 15, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (81, N'Socks', NULL, 80000, 0, 14, 0, N'https://cf.shopee.vn/file/d9e528acb46dbe287eb76c1fa9978698', 1, N'active')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (82, N'Socks', NULL, 80000, 0, 14, 0, N'https://judanzy.com/assets/images/navy%20tube%20socks%20.jpg', 9, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (83, N'Socks', NULL, 80000, 0, 14, 0, N'https://cdn.shopify.com/s/files/1/1287/7907/products/thewovensockcream_1200x.jpg?v=1635218116', 11, N'minimalist')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (84, N'Giày cao gót Korean Black', NULL, 450000, 0, 14, 0, N'https://salt.tikicdn.com/cache/w1200/ts/product/53/ca/42/d60236aa5d137e829f0f28396297d562.jpg', 1, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (85, N'Giày cao gót Korean White', NULL, 450000, 0, 14, 0, N'https://salt.tikicdn.com/cache/750x750/ts/product/7c/8f/bd/b4719e971126bfd9c2af085a9e8d11dc.jpg.webp', 1, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (86, N'Đầm đen nhỏ vai nơ', NULL, 550000, 0, 2, 0, N'https://cf.shopee.vn/file/32872f0464a8a21d6e46a346911e9f33', 1, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (87, N'Đầm dài nữ phong cách KOREAN', NULL, 850000, 0, 2, 0, N'https://cf.shopee.vn/file/8620a3edef4604d26ab09ab454bdd6f0', 1, N'elegant')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau], [Style]) VALUES (88, N'Áo Sơ mi hoa cổ chữ V HONGKONG Style', NULL, 650000, 0, 2, 0, N'https://cf.shopee.vn/file/3e961e848d3ad5b24464d17687247885', 1, N'elegant')
SET IDENTITY_INSERT [dbo].[SIZESANPHAM] ON 

INSERT [dbo].[SIZESANPHAM] ([MaSize], [TenSize]) VALUES (1, N'M')
INSERT [dbo].[SIZESANPHAM] ([MaSize], [TenSize]) VALUES (2, N'L')
INSERT [dbo].[SIZESANPHAM] ([MaSize], [TenSize]) VALUES (3, N'XL')
INSERT [dbo].[SIZESANPHAM] ([MaSize], [TenSize]) VALUES (4, N'XXL')
SET IDENTITY_INSERT [dbo].[SIZESANPHAM] OFF
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK1', N'4297F44B13955235245B2497399D7A93', N'QL', N'quanly@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK10', N'68ADB7C1811F11BBEA919D4D4EEBFDB2', N'KH', N'khachhang@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK11', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'fefer@gfg.gf', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK12', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'erger@gn.fs', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK13', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'nhanviwefen143@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK14', N'E10ADC3949BA59ABBE56E057F20F883E', N'KH', N'ggdf@gmail.com', 0)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK15', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'aloalo@gmi.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK16', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'aloal232o@gmi.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK17', N'E10ADC3949BA59ABBE56E057F20F883E', N'KH', N'aloal23211o@gmi.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK18', N'4297F44B13955235245B2497399D7A93', N'NV', N'mymemory2409@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK19', N'7AA3B7BF7651C509573E8B077D9D86BB', N'NV', N'nxthuong01191@gmail.com', 2)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK2', N'4297F44B13955235245B2497399D7A93', N'NV', N'nhanvien@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK3', N'D41D8CD98F00B204E9800998ECF8427E', N'NV', N'nhanvien143@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK4', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'nhanvieewn14@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK5', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'ntrung43@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK6', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'nhanvie32n143@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK7', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'fefer@gmail.om', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK8', N'E10ADC3949BA59ABBE56E057F20F883E', N'KH', N'nxthuong1901@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK9', N'E10ADC3949BA59ABBE56E057F20F883E', N'KH', N'khachhang111@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[TRANGTHAIDONHANG] ON 

INSERT [dbo].[TRANGTHAIDONHANG] ([MaTTDH], [TrangThai]) VALUES (1, N'Đơn mới')
INSERT [dbo].[TRANGTHAIDONHANG] ([MaTTDH], [TrangThai]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[TRANGTHAIDONHANG] ([MaTTDH], [TrangThai]) VALUES (3, N'Đang giao')
INSERT [dbo].[TRANGTHAIDONHANG] ([MaTTDH], [TrangThai]) VALUES (4, N'Đã giao')
INSERT [dbo].[TRANGTHAIDONHANG] ([MaTTDH], [TrangThai]) VALUES (5, N'Đã hủy')
SET IDENTITY_INSERT [dbo].[TRANGTHAIDONHANG] OFF
INSERT [dbo].[VAITRO] ([MaVT], [TenVT]) VALUES (N'KH', N'khach hang')
INSERT [dbo].[VAITRO] ([MaVT], [TenVT]) VALUES (N'NV', N'nhan vien')
INSERT [dbo].[VAITRO] ([MaVT], [TenVT]) VALUES (N'QL', N'Quản lý')
SET ANSI_PADDING ON

GO
/****** Object:  Index [SDT_KH_DN]    Script Date: 12/24/2022 9:42:20 AM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [SDT_KH_DN] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_MATK_KH]    Script Date: 12/24/2022 9:42:20 AM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [UQ_MATK_KH] UNIQUE NONCLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SDT_NV_DN]    Script Date: 12/24/2022 9:42:20 AM ******/
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [SDT_NV_DN] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_MATK_NV]    Script Date: 12/24/2022 9:42:20 AM ******/
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [UQ_MATK_NV] UNIQUE NONCLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UNIQUE_EMAIL]    Script Date: 12/24/2022 9:42:20 AM ******/
ALTER TABLE [dbo].[TAIKHOAN] ADD  CONSTRAINT [UNIQUE_EMAIL] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_CHITETSANPHAM] FOREIGN KEY([MaCTSP])
REFERENCES [dbo].[CHITIETSANPHAM] ([MaChiTietSP])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_CHITETSANPHAM]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_DONHANG] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DONHANG] ([MaDH])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_DONHANG]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPHIEUNHAP_CHITETSANPHAM] FOREIGN KEY([MaChiTietSP])
REFERENCES [dbo].[CHITIETSANPHAM] ([MaChiTietSP])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [FK_CHITIETPHIEUNHAP_CHITETSANPHAM]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPHIEUNHAP_PHIEUNHAP] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PHIEUNHAP] ([MAPN])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [FK_CHITIETPHIEUNHAP_PHIEUNHAP]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHITETSANPHAM_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CHITETSANPHAM_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHITETSANPHAM_SIZESANPHAM] FOREIGN KEY([MaSize])
REFERENCES [dbo].[SIZESANPHAM] ([MaSize])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CHITETSANPHAM_SIZESANPHAM]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_HINHTHUCTHANHTOAN] FOREIGN KEY([HinhThucThanhToan])
REFERENCES [dbo].[HINHTHUCTHANHTOAN] ([MaHTTT])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_HOADON_HINHTHUCTHANHTOAN]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_TRANGTHAIDONHANG] FOREIGN KEY([TinhTrangDonHang])
REFERENCES [dbo].[TRANGTHAIDONHANG] ([MaTTDH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_HOADON_TRANGTHAIDONHANG]
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG_CHITETSANPHAM] FOREIGN KEY([MaChiTietSP])
REFERENCES [dbo].[CHITIETSANPHAM] ([MaChiTietSP])
GO
ALTER TABLE [dbo].[GIOHANG] CHECK CONSTRAINT [FK_GIOHANG_CHITETSANPHAM]
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[GIOHANG] CHECK CONSTRAINT [FK_GIOHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_TAIKHOAN] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TAIKHOAN] ([MaTK])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHANG_TAIKHOAN]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_TAIKHOAN] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TAIKHOAN] ([MaTK])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_TAIKHOAN]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHANVIEN]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_DANHMUCSANPHAM] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DANHMUCSANPHAM] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_DANHMUCSANPHAM]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_MAUSANPHAM] FOREIGN KEY([MaMau])
REFERENCES [dbo].[MAUSANPHAM] ([MaMau])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_MAUSANPHAM]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_CHUCVU] FOREIGN KEY([MaVaiTro])
REFERENCES [dbo].[VAITRO] ([MaVT])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_CHUCVU]
GO
