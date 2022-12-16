
create database donation;
USE donation;

create table donations(
id int NOT NULL AUTO_INCREMENT,
campaignId int not null,
userId int,
donorId int,
amount int,
currencyUnit varchar(10),
notes text,
payment nvarchar(20),
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);

create table donors(
id int NOT NULL AUTO_INCREMENT,
userId int,
isUser boolean,
name nvarchar(20),
firstName nvarchar(20),
lastName nvarchar(20),
middleName nvarchar(50), 
email varchar(30),
phone int,
address text,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);


create table campaigns(
id int NOT NULL AUTO_INCREMENT,
orgId int not null,
userId int,
categoryId int not null,
startDate date,
endDate date,
target bigint,
currencyUnit varchar(10),
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);


create table categories(
id int NOT NULL AUTO_INCREMENT,
title nvarchar(50),
des text,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);

create table users (
id int NOT NULL AUTO_INCREMENT,
role varchar(10) not null,
username varchar(30),
password varchar(30),
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
); 

create table orgs(
id int NOT NULL AUTO_INCREMENT,
userId int,
title nvarchar(50),
address nvarchar(250),
detail text,
linkWebsite text,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);


 create table imageOrgs(
id int NOT NULL AUTO_INCREMENT,
orgId int not null,
title nvarchar(50),
imageData text,
sort smallint,
typeImage varchar(10),
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);


create table inforUsers(
id int not null auto_increment,
userId int not null,
firstName nvarchar(30),
middleName nvarchar(50),
lastName nvarchar(30),
email nvarchar(50),
phone bigint,
address text,
bankAccountNumber varchar(15), 
bankName varchar(30), 
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);

create table articles(
id int NOT NULL AUTO_INCREMENT,
userId int,
campaignId int,
title nvarchar(200),
datePublish datetime,
imageData text,
desShort text,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);



create table comments(
id int NOT NULL AUTO_INCREMENT,
userId int,
articleId int,
content text,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);

create table sections(
id int not null auto_increment,
articleId int not null,
sort smallint,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);

create table contents(
id int not null auto_increment,
sectionId int not null,
imageContentId int,
title nvarchar(250),
des text,
sort smallint,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);

create table imageContents(
id int not null auto_increment,
title nvarchar(250),
imageData text,
sort smallint,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
primary key (id)
);




insert into users (role,username, password) value
('users','VienDanSo', '123456'),
('users','QuyTuThienHoaChiaSe', '123456'),
('users','VinaCapital', '123456'),
('users','SucManh', '123456'),
('users','HoaChiaSe', '123456'),
('users','TrungTamTuongLai', '123456'),
('users','OperationSmile', '123456'),
('users','UyBanMatTran', '123456'),
('users','BanTayNhanAi', '123456'),
('users','NangBuocTuoiTho', '123456'),
('users','TrungTamHoTroHocSinh', '123456'),
('users','ONE', '123456'),
('users','ChuThapDo', '123456'),
('users','Bluedragon', '123456'),
('users','dktinternational', '123456'),
('users','HoangMinh', '123456'),
('users','VanSon', '123456'),
('users','MinhPhuong', '123456'),
('users','NgocChinh', '123456'),
('users','VanTai', '123456'),
('users','TranPhu', '123456'),
('users','LamLam', '123456'),
('users','UyenLinh', '123456'),
('users','MyHanh', '123456'),
('users','SonCa', '123456'),
('users','TrungKhanh', '123456'),
('users','LanLan', '123456'),
('users','MinhHoang', '123456'),
('users','ThanhTam', '123456'),
('users','ngockhanh', '123456');

insert into users(role, username, password) value
('admin', 'admin','123456');


insert into orgs (userId, title, address, detail, linkWebsite) value 
(1, 'Viện Dân số, Sức khỏe và Phát triển (PHAD)', 
'ICON4 Tower, 243a Đ. La Thành, Láng Thượng, Đống Đa, Hà Nội 117222',
'<p>PHAD l&agrave; một tổ chức phi lợi nhuận về khoa học v&agrave; kỹ thuật l&agrave; th&agrave;nh vi&ecirc;n của Li&ecirc;n hiệp c&aacute;c Hội khoa học v&agrave; kỹ thuật Việt Nam (VUSTA). PHAD đề cao tinh thần hợp t&aacute;c trong c&ocirc;ng việc v&agrave; lu&ocirc;n c&ocirc; gắng để cung cấp c&aacute;c tư vấn độc lập, kh&aacute;ch quan, dựa tr&ecirc;n bằng chứng cho c&aacute;c nh&agrave; hoạch định ch&iacute;nh s&aacute;ch, c&aacute;c chuy&ecirc;n gia về y tế, khu vực tu nh&acirc;n v&agrave; c&ocirc;ng ch&uacute;ng.</p>
<p>Hoạt động của PHAD:</p>
<p><strong>Tư vấn &amp; Khuyến nghị ch&iacute;nh s&aacute;ch</strong></p>
<p>X&acirc;y dựng nghi&ecirc;n cứu dựa tr&ecirc;n c&aacute;c bằng chứng thực nghiệm</p>
<p>Ph&aacute;t triển c&aacute;c chương tr&igrave;nh can thiệp</p>
<p>Đ&aacute;nh gi&aacute; chương tr&igrave;nh &amp; dự &aacute;n</p>
<p>Đ&aacute;nh gi&aacute; t&aacute;c động kinh tế &ndash; x&atilde; hội</p>
<p>Nghi&ecirc;n cứu v&agrave; khuyến nghị ch&iacute;nh s&aacute;ch</p>
<p>Ph&aacute;t triển c&aacute;c t&agrave;i liệu truyền th&ocirc;ng</p>
<p><strong>IRB</strong>: Ph&ecirc; duyệt&nbsp;&nbsp;đề cương nghi&ecirc;n cứu theo ti&ecirc;u chuẩn đạo đức của NIH</p>
<p><strong>Can thiệp</strong>: Hỗ trợ trực tiếp nhằm n&acirc;ng cao sức khỏe người d&acirc;n, đặc biệt l&agrave; c&aacute;c nh&oacute;m d&acirc;n số c&oacute; ho&agrave;n cảnh kh&oacute; khăn</p>
<p><strong>Nghi&ecirc;n cứu</strong></p>
<p>X&acirc;y dựng c&acirc;u hỏi v&agrave; thiết kế nghi&ecirc;n cứu</p>
<p>Thu thập, xử l&yacute; v&agrave; ph&acirc;n t&iacute;ch số liệu</p>
<p>B&aacute;o c&aacute;o: c&aacute;c kết quả chủ yếu, c&aacute;c h&agrave;m &yacute; &amp; khuyến nghị</p>
<p><strong>Đ&agrave;o tạo v&agrave; n&acirc;ng cao năng lực</strong></p>
<p>Đ&aacute;nh gi&aacute; nhu cầu n&acirc;ng cao năng lực</p>
<p>N&acirc;ng cao năng lực: kỹ năng nghi&ecirc;n cứu, kỹ năng can thiệp, kỹ năng sống</p>
<p>Đ&agrave;o tạo về c&aacute;c chủ đề d&acirc;n số, sức khỏe v&agrave; ph&aacute;t triển</p>
<p><strong>Quan hệ đối t&aacute;c v&agrave; giao lưu</strong>: Hợp t&aacute;c v&agrave; giao lưu với c&aacute;c tổ chức trong v&agrave; ngo&agrave;i nước</p>',
'https://phad.vn/'
),
(2, 'Quỹ Từ Thiện Trăng Khuyết', 
'Lầu 2 - 38/6 Tân Cảng, P25, Bình Thạnh, TP. HCM',
'<p><strong>Tại sao Trăng Khuyết?</strong></p>
<p>Cuộc đời như một v&ograve;ng trăng, rồi ai cũng c&oacute; khi đầy, khi khuyết. Cũng như con trăng kia, khi mới sinh ra trăng sẽ khuyết b&ecirc;n tr&aacute;i, rồi khi gi&agrave; đi trăng lại khuyết dần b&ecirc;n phải. Ch&iacute;nh những l&uacute;c khuyết ấy, l&agrave; l&uacute;c ta cần lắm c&aacute;i sự chở che v&agrave; chăm s&oacute;c của những người th&acirc;n b&ecirc;n m&igrave;nh. Sẽ thật kh&ocirc;ng may cho ai đ&oacute;, nếu l&uacute;c khuyết kia ta chỉ đơn b&oacute;ng c&oacute; một m&igrave;nh.</p>
<p>+ C&oacute; những vầng trăng nhỏ th&igrave; thầm hỏi ch&uacute;ng t&ocirc;i rằng: đ&acirc;u sẽ l&agrave; nh&agrave; cho con kh&ocirc;n lớn? đ&acirc;u l&agrave; mẹ để đ&uacute;t cho con ăn? đ&acirc;u l&agrave; ba để d&igrave;u dắt con v&agrave;o đời?</p>
<p>+ Lại c&oacute; những vầng trăng gi&agrave; ngậm ng&ugrave;i kh&oacute;c than với ch&uacute;ng t&ocirc;i rằng: đ&acirc;u sẽ l&agrave; nh&agrave; để ngả c&aacute;i lưng gi&agrave;? đ&acirc;u sẽ l&agrave; cơm để th&agrave;nh c&aacute;i bữa qua ng&agrave;y? đ&acirc;u sẽ l&agrave; hậu sự l&uacute;c nhắm mắt, bu&ocirc;ng tay?</p>
<p>Ch&uacute;ng t&ocirc;i chỉ biết nắm lấy b&agrave;n tay ấy v&agrave; c&ugrave;ng họ viết về một ước mơ t&ecirc;n l&agrave; &ldquo;Trăng Khuyết&rdquo;. Trong ước mơ ấy, c&oacute; h&igrave;nh b&oacute;ng của một vầng trăng xanh đầy hi vọng, một b&agrave;n tay lớn n&acirc;ng đỡ v&agrave; chở che, một tr&aacute;i tim nh&acirc;n &aacute;i c&ugrave;ng gắn kết v&agrave; y&ecirc;u thương!</p>
<p><strong>Tầm nh&igrave;n</strong></p>
<p>Trăng Khuyết phấn đấu trở th&agrave;nh một tổ chức từ thiện Tập thể &ndash; Minh bạch &ndash; Đồng cảm &ndash; Ch&acirc;n th&agrave;nh &ndash; Truyền cảm hứng trong mảng từ thiện về nh&acirc;n đạo v&agrave; sự sống tại Việt Nam.</p>
<p><strong>Sứ mệnh</strong></p>
<p>Trăng Khuyết cố gắng v&agrave; nỗi lực hết m&igrave;nh với cam kết hai kh&ocirc;ng trong một x&atilde; hội hiện đại:</p>
<p>1/ Kh&ocirc;ng c&oacute; người gi&agrave; bị thiếu đ&oacute;i, thiếu chỗ ở, phải sinh sống v&agrave; xin ăn tr&ecirc;n đường phố;</p>
<p>2/ Kh&ocirc;ng c&oacute; trẻ em bị thiếu đ&oacute;i, bị bỏ rơi hoặc phải tự mưu sinh khi chưa đến tuổi trưởng th&agrave;nh;</p>
<p><strong>H&agrave;nh thiện</strong></p>
<p>Ch&uacute;ng t&ocirc;i x&aacute;c định r&otilde;: Trăng Khuyết l&agrave; một tổ chức đi sau trong mảng nh&acirc;n đạo v&agrave; sự sống, ch&uacute;ng t&ocirc;i kh&ocirc;ng tạo ra gi&aacute; trị mới khi chưa ho&agrave;n thiện được c&aacute;c gi&aacute; trị cũ:</p>
<p>+ Với những người đ&atilde; l&agrave;m tốt , Trăng Khuyết xin ph&eacute;p được: Chung tay &ndash; G&oacute;p sức &ndash; Kết nối v&agrave; Kế thừa</p>
<p>+ Với người l&agrave;m chưa tốt, Trăng Khuyết xin ph&eacute;p được: C&ugrave;ng học &ndash; C&ugrave;ng sửa &ndash; C&ugrave;ng soi x&eacute;t v&agrave; Điều chỉnh</p>
<p>Tuy nhi&ecirc;n, ch&uacute;ng t&ocirc;i cũng khẳng định r&otilde; Trăng Khuyết l&agrave; một tổ chức phi ch&iacute;nh phủ, phi t&ocirc;n gi&aacute;o v&agrave; phi lợi nhuận. Hoạt động theo m&ocirc; h&igrave;nh doanh nghiệp x&atilde; hội. Thực hiện đ&uacute;ng v&agrave; đủ v&agrave; c&aacute;c quyền v&agrave; tr&aacute;ch nhiệm hợp ph&aacute;p theo nghị định 96/2015/NĐ-CP.</p>
<p>&nbsp;<strong>Cơ cấu tổ chức</strong></p>
<p>Trăng Khuyết bao gồm 6 đội TNV hoạt động độc lập, c&oacute; sự hỗ trợ, gi&aacute;m s&aacute;t v&agrave; kiểm so&aacute;t ch&eacute;o lẫn nhau:&nbsp;</p>
<p>(1) Đội TNV đường phố,</p>
<p>(2) Đội Cứu trợ khẩn cấp</p>
<p>(3) Đội Chăm s&oacute;c m&aacute;i ấm</p>
<p>(4) Đội Vận h&agrave;nh v&agrave; hoạt động (VP)</p>
<p>(5) Đội Quản trị v&agrave; ph&aacute;t triển tổ chức (VP)</p>
<p>(6) Đội Minh bạch t&agrave;i ch&iacute;nh &amp; hiệu quả vận h&agrave;nh</p>
<p>Đồng thời, c&aacute;c kế hoạch v&agrave; định hướng của của Trăng Khuyết sẽ do Hội đồng Mạnh thường qu&acirc;n xem x&eacute;t, ph&ecirc; quyệt v&agrave; kiểm so&aacute;t.</p>',
'https://quytrangkhuyet.com/'
),
(3, 'Vinacapital foundation', 
'14E21 Đ. Thảo Điền, Thảo Điền, Thủ Đức, Thành phố Hồ Chí Minh 700000',
'<p>The VinaCapital Foundation (VCF) is a USA registered 501-c3 public charitable organization, licensed as an international non-governmental organization in Vietnam. Founded in 2006, VCF&rsquo;s mission is to create healthcare and education solutions to assist underserved and marginalized children and women. The work of VCF touches the lives of millions of Vietnamese in 63 provinces every year.&nbsp;</p>',
'https://vinacapitalfoundation.org/en/'
),
(4, 'Sức mạnh 2000', 
'P702 - 62 Bà Triệu Trung ương Đoàn',
'<p>Tiếp tục l&agrave; một &ldquo;MỤC TI&Ecirc;U VIỂN V&Ocirc;NG C&Oacute; CƠ SỞ&rdquo; của anh Ho&agrave;ng Hoa Trung, &ldquo;Sức mạnh 2000 &ndash; Tiền lẻ mỗi ng&agrave;y Triệu người chung tay X&acirc;y ngh&igrave;n trường mới&rdquo; ph&aacute;t động ng&agrave;y 27/02/2020 l&agrave; dự &aacute;n g&acirc;y quỹ tiếp theo của Dự &Aacute;n &Aacute;nh S&aacute;ng N&uacute;i Rừng ra đời năm 2009 dưới sự phối hợp, triển khai của Trung t&acirc;m t&igrave;nh nguyện Quốc gia.</p>
<p>Xuất ph&aacute;t từ &yacute; tưởng t&iacute;ch tiểu th&agrave;nh đại, chương tr&igrave;nh mang tr&ecirc;n m&igrave;nh sứ mệnh c&ugrave;ng to&agrave;n x&atilde; hội thay những trường tạm tại Việt Nam, x&acirc;y h&agrave;ng trăm c&acirc;y cầu &amp; nh&agrave; nh&acirc;n &aacute;i tới năm 2025.</p>',
'https://sucmanh2000.com/'
),
(5, 'Hoa chia sẻ', 
'TP. Hồ Chí Minh',
'<p>Quỹ Hoa Chia Sẻ l&agrave; một tổ chức từ thiện phi Ch&iacute;nh phủ (HCS); c&oacute; trụ sở tại : 117/11 Nguyễn Hữu Cảnh, Phường 22, Quận B&igrave;nh Thạnh, Tp.HCM, Việt Nam; c&oacute; fanpage:&nbsp;<a href="http://www.hoachiase.com/" rel="noreferrer noopener" target="_blank">www.facebook.com/hoachiase</a></p>
<p>Quỹ x&atilde; hội &ndash; từ thiện được th&agrave;nh lập ho&agrave;n to&agrave;n tự nguyện, v&agrave; Quỹ hoạt động kh&ocirc;ng v&igrave; lợi nhuận, tr&ecirc;n nguy&ecirc;n tắc tự tạo vốn, hoạt động nhằm mục đ&iacute;ch x&atilde; hội &ndash; từ thiện, trong đ&oacute; ưu ti&ecirc;n gi&uacute;p đỡ c&aacute;c gia đ&igrave;nh kh&oacute; khăn, gia đ&igrave;nh c&oacute; c&ocirc;ng với c&aacute;ch mạng v&agrave; hỗ trợ, khuyến kh&iacute;ch ph&aacute;t triển văn h&oacute;a, gi&aacute;o dục, y tế, thể dục thể thao, khoa học v&agrave; c&aacute;c mục đ&iacute;ch ph&aacute;t triển cộng đồng ph&ugrave; hợp quy định của ph&aacute;p luật. &nbsp;</p>
<h3>I. Hoa Chia Sẻ hoạt đ&ocirc;ng tr&ecirc;n 5 gi&aacute; trị cốt l&otilde;i v&agrave; lu&ocirc;n được đề cao</h3>
<ol>
    <li>T&Acirc;M: nh&acirc;n văn, thiện ch&iacute;, th&acirc;n &aacute;i.</li>
    <li>T&Iacute;N: đảm bảo thực thi đ&uacute;ng hoặc cao hơn c&aacute;c cam kết của m&igrave;nh.</li>
    <li>TR&Iacute;: s&aacute;ng tạo, d&aacute;m nghĩ d&aacute;m l&agrave;m; khuyến kh&iacute;ch t&igrave;m t&ograve;i, chủ động cải tiến để ứng dụng nhằm tạo ra gi&aacute; trị gia tăng cho c&aacute;c th&agrave;nh vi&ecirc;n li&ecirc;n quan.</li>
    <li>CH&Iacute;NH TRỰC: li&ecirc;m ch&iacute;nh, trung thực trong ứng xử v&agrave; tất cả giao dịch.</li>
    <li>TR&Acirc;N TRỌNG<strong>:&nbsp;</strong>tr&acirc;n trọng tất cả c&aacute;c đ&oacute;ng g&oacute;p. &nbsp;</li>
</ol>
<h3>II. Sứ mệnh của Hoa Chia Sẻ</h3>
<ul>
    <li><strong>SẺ CHIA</strong>: B&aacute;n hoa g&acirc;y quỹ từ thiện, nấu ch&aacute;o&hellip; gi&uacute;p đỡ những ho&agrave;n cảnh kh&oacute; khăn, sẻ chia tr&aacute;ch nhiệm cộng đồng l&agrave; sứ mệnh cốt l&otilde;i của Hoa Chia Sẻ.</li>
    <li><strong>CỘNG ĐỒNG:</strong> Chương tr&igrave;nh g&acirc;y quỹ từ thiện, ủng hộ cho c&aacute;c chương tr&igrave;nh v&igrave; cộng đồng.</li>
    <li><strong>PH&Aacute;T TRIỂN:</strong> Tạo dựng một m&ocirc;i trường hoạt động l&agrave;nh mạnh, ph&aacute;t triển th&agrave;nh vi&ecirc;n tham gia. &nbsp;</li>
</ul>
<h3>III. Tầm nh&igrave;n</h3>
<p>Trở th&agrave;nh biểu tượng truyền cảm hứng cho sự chia sẻ x&atilde; hội &nbsp;</p>',
'https://hoachiase.com/'
),
(6, 'Trung tâm tương lai', 
'457/7 Điện Biên Phủ, Phường 3, Quận 3, TPHCM',
'<p><strong>1. &nbsp; &nbsp;Ph&aacute;p nh&acirc;n:</strong></p>
<p>Trung t&acirc;m Gi&aacute;o dục sức khỏe v&agrave; Ph&aacute;t triển cộng đồng Tương Lai (Trung t&acirc;m Tương Lai) l&agrave; tổ chức phi ch&iacute;nh phủ, phi lợi nhuận Việt Nam được Li&ecirc;n hiệp c&aacute;c Hội Khoa học v&agrave; Kỹ thuật Việt Nam (VUSTA) ra quyết định th&agrave;nh lập th&aacute;ng 7 năm 2011 v&agrave; đ&atilde; đăng k&yacute; hoạt động với Bộ Khoa học v&agrave; C&ocirc;ng nghệ th&aacute;ng 8 năm 2011.</p>
<p><strong>2. &nbsp; &nbsp;C&aacute;c gi&aacute; trị:</strong></p>
<p><em>2.1. &nbsp;Chuy&ecirc;n nghiệp:</em> Ch&uacute;ng t&ocirc;i kh&ocirc;ng ngừng học hỏi v&agrave; r&egrave;n luyện chuy&ecirc;n m&ocirc;n ng&agrave;y c&agrave;ng thuần thục.</p>
<p>2.2. &nbsp;<em>Cam kết:</em> Ch&uacute;ng t&ocirc;i lu&ocirc;n tu&acirc;n thủ v&agrave; thực hiện đ&uacute;ng cam kết với nh&agrave; t&agrave;i trợ cũng như người hưởng lợi.</p>
<p><em>2.3.</em>&nbsp; <em>Tham gia:</em> Tất cả c&aacute;c hoạt động lu&ocirc;n c&oacute; sự tham gia của c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan đặc biệt sự tham gia của người hưởng lợi.</p>
<p><em>2.4.</em>&nbsp; <em>Ph&aacute;t triển bền vững:</em> Ch&uacute;ng t&ocirc;i lu&ocirc;n hướng đến c&aacute;c hoạt động đ&aacute;p ứng nhu cầu hiện tại v&agrave; cả tương lai cho người hưởng lợi</p>
<p><strong>3. &nbsp; &nbsp;Chức năng, nhiệm vụ:</strong></p>
<p><em>3.1.</em>&nbsp; Nghi&ecirc;n cứu, thực hiện c&aacute;c đề t&agrave;i, dự &aacute;n về c&acirc;n bằng giới, quyền trẻ em, di cư, bu&ocirc;n b&aacute;n phụ nữ trẻ em, ch&iacute;nh s&aacute;ch c&ocirc;ng, HIV/AIDS, chăm s&oacute;c sức khỏe, x&oacute;a đ&oacute;i giảm ngh&egrave;o v&agrave; ph&aacute;t triển cộng đồng.</p>
<p><em>3.2.</em>&nbsp; Thực hiện c&aacute;c dịch vụ khoa học v&agrave; c&ocirc;ng nghệ: tập huấn, đ&agrave;o tạo n&acirc;ng cao năng lực, chuyển giao c&ocirc;ng nghệ, tư vấn, truyền th&ocirc;ng, hội thảo hội nghị v&agrave; c&aacute;c dịch vụ khoa học c&ocirc;ng nghệ kh&aacute;c li&ecirc;n quan đến lĩnh vực c&acirc;n bằng giới, quyền trẻ em, di cư, bu&ocirc;n b&aacute;n phụ nữ trẻ em, ch&iacute;nh s&aacute;ch c&ocirc;ng, HIV/AIDS, chăm s&oacute;c sức khỏe, x&oacute;a đ&oacute;i giảm ngh&egrave;o v&agrave; ph&aacute;t triển cộng đồng.</p>
<p><em>3.3.</em>&nbsp; Hợp t&aacute;c với c&aacute;c tổ chức v&agrave; c&aacute; nh&acirc;n trong v&agrave; ngo&agrave;i nước để thực hiện c&aacute;c hoạt động hỗ trợ người yếu thế v&agrave; n&acirc;ng cao chất lượng cuộc sống của họ.</p>
<p>&nbsp; &nbsp; &nbsp; <strong>&nbsp; &nbsp;4. &nbsp; &nbsp;</strong><strong>C&aacute;c lĩnh vực hoạt động ch&iacute;nh:</strong></p>
<p>&nbsp; &nbsp; &nbsp; &nbsp;<em>&nbsp;4.1.</em>&nbsp; Tăng cường n&acirc;ng cao nhận thức về Quyền Trẻ em cho c&aacute;c mạng lưới l&agrave;m việc với Trẻ em - &nbsp;Thanh thiếu ni&ecirc;n v&agrave; tổ chức x&atilde; hội bằng nhiều h&igrave;nh thức kh&aacute;c nhau như: X&acirc;y dựng v&agrave; ph&aacute;t triển thư viện Ph&aacute;p luật tr&ecirc;n trang web; Diễn đ&agrave;n; Bản tin; Tham vấn; Tổ chức hội thảo, tập huấn; Thực hiện một số nghi&ecirc;n cứu li&ecirc;n quan đến Trẻ em &ndash; Thanh thiếu ni&ecirc;n v&agrave; th&agrave;nh lập c&aacute;c nh&oacute;m hỗ trợ; Ph&aacute;t h&agrave;nh một số t&agrave;i liệu hữu &iacute;ch về Quyền cho Trẻ em &ndash; Thanh thiếu ni&ecirc;n v&agrave; truyền th&ocirc;ng rộng r&atilde;i trong x&atilde; hội (c&aacute;c tổ chức nh&agrave; nước, CSO, NPO, c&aacute;c c&aacute; nh&acirc;n l&agrave;m việc với trẻ em&hellip;)</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp;<em>4.2.</em>&nbsp; Li&ecirc;n kết v&agrave; x&acirc;y dựng mạng lưới c&aacute;c tổ chức d&acirc;n sự x&atilde; hội, l&agrave;m chiếc cầu nối để qua đ&oacute; chuyển tải th&ocirc;ng tin, tăng năng lực cho c&aacute;c tổ chức tại TPHCM v&agrave; c&aacute;c tỉnh ph&iacute;a Nam.</p>
<p>&nbsp; &nbsp; &nbsp;<em>&nbsp; 4.3.</em>&nbsp; Li&ecirc;n kết với c&aacute;c mạng lưới truyền th&ocirc;ng qua đ&oacute; t&aacute;c động đến nhận thức cộng đồng x&atilde; hội về Quyền Trẻ em; Biện hộ th&uacute;c đẩy quyền cho Trẻ em &ndash; Thanh thiếu ni&ecirc;n v&agrave; cơ hội b&igrave;nh đẳng trong tiếp cận c&aacute;c dịch vụ x&atilde; hội.</p>
<p>&nbsp; &nbsp; &nbsp;&nbsp;<em>4.4.</em>&nbsp; Tăng cường hợp t&aacute;c đa phương/song phương g&oacute;p phần v&agrave;o việc n&acirc;ng cao nhận thức, tăng năng lực cho Trung t&acirc;m Tương Lai để ph&aacute;t triển bền vững.</p>',
'https://tuonglaicentre.org/'
),
(7, 'OperationSmile', 
'Tầng 4, 16 Ngô Quyền, Quận Hoàn Kiếm.',
'<p><strong>OPERATION SMILE KẾT NỐI NHỮNG TẤM L&Ograve;NG HẢO T&Acirc;M ĐỂ H&Agrave;N GẮN NỤ CƯỜI V&Agrave; THAY ĐỔI CUỘC ĐỜI CỦA C&Aacute;C TRẺ EM K&Eacute;M MAY MẮN TR&Ecirc;N TO&Agrave;N THẾ GIỚI.</strong></p>
<p>Operation Smile l&agrave; tổ chức nh&acirc;n đạo phi lợi nhuận hoạt động trong lĩnh vực chăm s&oacute;c sức khỏe cộng đồng, tập trung v&agrave;o việc thực hiện phẫu thuật miễn ph&iacute; cho c&aacute;c trẻ em sinh ra bị dị tật hở m&ocirc;i, h&agrave;m ếch v&agrave; c&aacute;c dị tật v&ugrave;ng h&agrave;m mặt kh&aacute;c tại c&aacute;c nước đang ph&aacute;t triển. Đ&acirc;y l&agrave; một trong những tổ chức l&acirc;u đời v&agrave; c&oacute; mạng lưới t&igrave;nh nguyện vi&ecirc;n lớn nhất với mục ti&ecirc;u cải thiện sức khỏe đời sống của trẻ em th&ocirc;ng qua c&aacute;c dịch vụ y tế miễn ph&iacute;, an to&agrave;n v&agrave; hiệu quả.</p>
<p>Operation Smile c&oacute; mặt tại Việt Nam l&agrave; một phần của nỗ lực trong qu&aacute; tr&igrave;nh b&igrave;nh thường h&oacute;a mối quan hệ giữa Việt Nam v&agrave; Hoa Kỳ. Từ năm 1989, Operation Smile đ&atilde; đem lại dịch vụ kh&aacute;m v&agrave; điều trị miễn ph&iacute; cho hơn 62,000 trẻ em Việt Nam, đem lại cuộc sống mới cho c&aacute;c em với nhiều hy vọng v&agrave; tốt đẹp. Tổ chức cũng tiến h&agrave;nh đ&agrave;o tạo h&agrave;ng ng&agrave;n chuy&ecirc;n vi&ecirc;n y tế trong nước nhằm n&acirc;ng cao năng lực v&agrave; cải thiện hệ thống y tế.</p>',
'https://operationsmile.org.vn/'
),
(8, 'Ủy ban mặt trận tổ quốc', 
'46 Tràng Thi - Quận Hoàn Kiếm - Hà Nội',
'<p>Kế thừa, ph&aacute;t huy truyền thống y&ecirc;u nước v&agrave; đo&agrave;n kết của d&acirc;n tộc ta. Đảng Cộng sản Việt Nam v&agrave; Chủ tịch Hồ Ch&iacute; Minh khẳng định: C&aacute;ch mạng l&agrave; sự nghiệp của quần ch&uacute;ng. Ngay từ khi mới ra đời, Đảng đ&atilde; chủ trương đo&agrave;n kết mọi lực lượng d&acirc;n tộc v&agrave; d&acirc;n chủ trong Mặt trận D&acirc;n tộc Thống nhất để c&ugrave;ng nhau chống kẻ th&ugrave; chung v&igrave; độc lập tự do của Tổ quốc.</p>
<p>Giữa l&uacute;c cao tr&agrave;o c&aacute;ch mạng đầu ti&ecirc;n do Đảng l&atilde;nh đạo m&agrave; đỉnh cao l&agrave; phong tr&agrave;o X&ocirc; viết Nghệ tĩnh đang diễn ra s&ocirc;i nổi v&agrave; rầm rộ trong cả nước, ng&agrave;y 18/11/1930, Ban Thường vụ Trung ương Đảng Cộng sản Đ&ocirc;ng dương ra chỉ thị về vấn đề th&agrave;nh lập Hội phản đế Đồng minh, h&igrave;nh thức đầu ti&ecirc;n của Mặt trận D&acirc;n tộc Thống nhất Việt nam.</p>
<p>Từ đ&oacute; tới nay, ở mỗi thời kỳ kh&aacute;c nhau c&oacute; những h&igrave;nh thức v&agrave; t&ecirc;n gọi tổ chức cụ thể kh&aacute;c nhau ph&ugrave; hợp với nhiệm vụ của từng thời kỳ c&aacute;ch mạng nhưng Mặt trận D&acirc;n tộc Thống nhất Việt nam nơi tập hợp c&aacute;c giai tầng trong x&atilde; hội v&igrave; những mục ti&ecirc;u lớn của d&acirc;n tộc lu&ocirc;n tồn tại v&agrave; ph&aacute;t triển, Đảng Cộng sản Việt Nam - người chủ xướng việc h&igrave;nh th&agrave;nh Mặt trận D&acirc;n tộc thống nhất trong thời hiện đại - vừa l&agrave; th&agrave;nh vi&ecirc;n t&iacute;ch cực của Mặt trận vừa bằng sự s&aacute;ng tạo, đ&uacute;ng dắn trong đường lối, ch&iacute;nh s&aacute;ch, sự gương mẫu phấn đấu v&igrave; lợi &iacute;ch chung của d&acirc;n tộc đ&atilde; được c&aacute;c th&agrave;nh vi&ecirc;n của Mặt trận thừa nhận vai tr&ograve; l&atilde;nh đạo.</p>
<p>Hiện nay, Mặt trận Tổ quốc Việt Nam l&agrave; h&igrave;nh thức tổ chức của Mặt trận D&acirc;n tộc Thống nhất Việt nam với mục ti&ecirc;u tập hợp v&agrave; ph&aacute;t huy sức mạnh của khối Đại đo&agrave;n kết to&agrave;n d&acirc;n phấn đấu cho một nước Việt Nam độc lập, tự do, hạnh ph&uacute;c, d&acirc;n gi&agrave;u, nước mạnh, x&atilde; hội c&ocirc;ng bằng văn minh.</p>',
'http://mattran.org.vn/'
),
(9,'Bàn Tay Nhân Ái',
'10510 Chapman Ave. Garden Grove, CA 92840',
'<p>Hội Từ Thiện B&Agrave;N TAY NH&Acirc;N &Aacute;I l&agrave; hội từ thiện bất vụ lợi do Ch&ugrave;a Quan &Acirc;m Orange County California thực hiện, được c&ocirc;ng nhận bởi sở thuế IRS.&nbsp;</p>
<p>Mọi đ&oacute;ng g&oacute;p cho Hội Từ Thiện B&agrave;n Tay Nh&acirc;n &Aacute;i đều được trừ thuế.&nbsp;</p>
<p>Những tài trợ của bạn đều được d&ugrave;ng để gi&uacute;p cho những vị cao ni&ecirc;n, ngh&egrave;o khổ, khuyết tật, v&ocirc; gia cư, v&agrave; những em nhỏ mồ c&ocirc;i tại qu&ecirc; nh&agrave;. &nbsp;</p>',
'https://www.bantaynhanai.org/'
),
(10,'Into The Arctic',
'10510 Chapman Ave. Garden Grove, CA 92840',
'<h2 style="text-align: center;">IN 2006, CORY TR&Eacute;PANIER SET OFF ON A QUEST TO PAINT, FILM, AND EXPLORE THE SPECTACULAR LANDSCAPES OF THE CANADIAN ARCTIC. TO CAPTURE THE BREADTH OF THIS REGION, CORY TR&Eacute;PANIER UNDERTOOK FIVE EXPEDITIONS TO PAINT THE FURTHEST REACHES OF THE NORTH.</h2>
<p>With a pack full of painting, filming, and camping gear, Tr&eacute;panier traversed over 60,000 kilometres, through 6 Arctic National Parks and 16 Arctic communities, and explored many more places in between. He travelled by plane, helicopter, ship, boat, canoe, and on foot, often with the Inuit, stripping back day-to-day accoutrements to the basics of hiking boots, food, and a tent, in order to immerse himself in his subject.</p>
<p>When completed, the INTO THE ARCTIC collection will number over 100 oil paintings and graphite sketches and 3 documentary films.&nbsp;</p>
<p>Through the INTO THE ARCTIC art, films, media stories, online content and public speaking, Tr&eacute;panier is inspiring others with the beauty of the Canadian Arctic, one of the most fragile regions of our planet, and conveying a timely and critical message about the need to consider our impacts on the North.</p>
<p><strong>INTO THE ARCTIC Exhibition Tour</strong></p>
<p>As the culmination of the project, Tr&eacute;panier&rsquo;s INTO THE ARCTIC Exhibition Tour is bringing an unprecedented collection of over 50 Arctic oil paintings and 3 films to to the public. The exhibition premiered at the Embassy of Canada in Washington D.C.,&nbsp;&nbsp;touring across North America and overseas to Monaco, where it opened at HSH Prince Albert II&rsquo;s Oceanographic Museum. The centrepiece of the collection is the 15 foot wide <em>Great Glacier</em>, one of the largest Arctic landscape paintings in Canada&rsquo;s history.</p>
<p>View the full tour itinerary and more details here: <a href="http://www.intothearctic.ca/exhibitiontour">www.intothearctic.ca/exhibitiontour</a></p>
<p><em>&ldquo;Like some of the great figures in polar exploration history, Cory Tr&eacute;panier combines the courage and adventurousness of an explorer with the exacting skill and powerful creative vision of an artist.&rdquo; &nbsp;</em></p>
<p>&ndash; John Geiger, Chief Executive Officer, The Royal Canadian Geographical Society/ Canadian Geographic Enterprises</p>
<p><em>&ldquo;Cory Tr&eacute;panier&rsquo;s passionate and accurate paintings of Arctic landscapes bridge the gap between Arctic science and public awareness. This is particularly important because the Canadian Arctic is changing rapidly due to accentuated human-induced climate warming.&rdquo;&nbsp;</em></p>
<p>&ndash; Vincent St. Louis, Ph.D., Professor, Researcher of Climate Change and Contaminant Cycling in the Canadian High Arctic, University of Alberta, Edmonton</p>',
'https://www.intothearctic.ca/'
),
(11,'Names for Change',
'',
'<h2 style="text-align: center;">WHY WE&apos;RE DOING THIS</h2>
<div>
    <p>Connecting everyone who comes through our doors with food, shelter and a future requires a whole lot of stuff.</p>
    <p>It&rsquo;s not sexy stuff. But it&rsquo;s important stuff. It&rsquo;s the stuff you might not even think about needing. Until you don&rsquo;t have it.</p>
    <p>We&rsquo;re selling naming rights to this stuff because we want you to see how critical every item is to helping us fight homelessness. And we want you to be part of that fight.</p>
    <p>So now the only question is, what will you lend your name to?</p>
</div>',
'https://www.namesforchange.org/'
),
(12,'ONE',
'United States',
'<p>ONE is a global movement campaigning to end extreme poverty and preventable disease by 2030, so that everyone, everywhere can lead a life of dignity and opportunity.</p>
<p>We believe the fight against poverty isn&rsquo;t about charity, but about justice and equality.</p>
<p>Whether lobbying political leaders in world capitals or running cutting-edge grassroots campaigns, ONE pressures governments to do more to fight extreme poverty and preventable disease, particularly in Africa, and empowers citizens to hold their governments to account.</p>
<p>ONE&rsquo;s supporters are crucial to this work. They come from every walk of life and from across the political spectrum. They&rsquo;re artists and activists, faith and business leaders, students and scientists. They take action day in, day out &mdash; organising, mobilising, educating, and advocating so that people will have the chance not just to survive, but to thrive.</p>
<p>ONE teams in Abuja, Berlin, Brussels, Dakar, Johannesburg, London, New York, Ottawa, Paris and Washington DC, educate and lobby governments to shape policy solutions that save and improve millions of lives &mdash; and which every year are under threat from cuts and other priorities.</p>
<p>Co-founded by Bono and other activists, ONE is strictly nonpartisan. ONE is not a grant-making organisation and does not solicit funding from the public or receive government funds. ONE is funded almost entirely by foundations, individual philanthropists and corporate partners.</p>',
'https://www.one.org/us/'
),
(13,'Hội Chữ thập đỏ Việt Nam',
'82, Nguyễn Du, Quận Hai Bà Trưng, Hà Nội',
'<p>Hội Chữ thập đỏ Việt Nam l&agrave; tổ chức x&atilde; hội nh&acirc;n đạo của quần ch&uacute;ng, do Chủ tịch Hồ Ch&iacute; Minh s&aacute;ng lập ng&agrave;y 23/11/1946 v&agrave; Người l&agrave;m Chủ tịch danh dự đầu ti&ecirc;n của Hội.</p>
<p>Hội tập hợp mọi người Việt Nam, kh&ocirc;ng ph&acirc;n biệt th&agrave;nh phần d&acirc;n tộc, t&ocirc;n gi&aacute;o, nam nữ để l&agrave;m c&ocirc;ng t&aacute;c nh&acirc;n đạo.</p>
<p>Mục đ&iacute;ch cao cả của Hội l&agrave; nh&acirc;n đạo, ho&agrave; b&igrave;nh, hữu nghị, g&oacute;p phần thực hiện mục ti&ecirc;u d&acirc;n gi&agrave;u, nước mạnh, d&acirc;n chủ, c&ocirc;ng bằng, văn minh. Hội chăm lo hỗ trợ về vật chất v&agrave; tinh thần cho những người kh&oacute; khăn, nạn nh&acirc;n chiến tranh, nạn nh&acirc;n thi&ecirc;n tai, thảm họa; tham gia chăm s&oacute;c sức khỏe ban đầu cho nh&acirc;n d&acirc;n; vận động c&aacute;c tổ chức, c&aacute; nh&acirc;n tham gia c&aacute;c hoạt động nh&acirc;n đạo do Hội tổ chức.</p>
<p>Hội l&agrave; th&agrave;nh vi&ecirc;n của Mặt trận Tổ quốc Việt Nam, th&agrave;nh vi&ecirc;n của Phong tr&agrave;o Chữ thập đỏ, Trăng lưỡi liềm đỏ quốc tế, hoạt động trong phạm vi cả nước, theo Hiến ph&aacute;p v&agrave; ph&aacute;p luật của nước Cộng ho&agrave; x&atilde; hội chủ nghĩa Việt Nam, Luật hoạt động Chữ thập đỏ, Nghị định số 03/2011/NĐ-CP, ng&agrave;y 7 th&aacute;ng 01 năm 2011 của Ch&iacute;nh phủ quy định chi tiết v&agrave; biện ph&aacute;p thi h&agrave;nh Luật hoạt động chữ thập đỏ, Điều lệ Hội v&agrave; 7 nguy&ecirc;n tắc cơ bản của Phong tr&agrave;o<strong><i>&nbsp;</i></strong>Chữ thập đỏ, Trăng lưỡi liềm đỏ quốc tế: Nh&acirc;n đạo, V&ocirc; tư, Trung lập, Độc lập, Tự nguyện, Thống nhất, To&agrave;n cầu.</p>',
'http://redcross.org.vn/'
),
(14,'BlueDragons',
'PO Box 297, International Post Office, Hanoi, Vietnam',
'<div><div><div><div><div><h2>What is Blue Dragon Children&rsquo;s Foundation?</h2><p>Since our small beginnings in 2003, Blue Dragon has become a powerful force for change on the streets of Vietnam, both in the bustling cities and in rural areas where poverty is widespread.</p>                    <p>Blue Dragon offers children and families in crisis the chance to turn their lives around, providing practical solutions to the daily problems that are keeping poverty alive.</p>                </div>            </div>        </div>    </div></div><div>    <div>        <div>            <div>                <div>                    <h2>The Problem</h2>                    <p>For children in Vietnam who are born into poverty, there is little hope for the chance of a better life.</p>                    <p>More than 66% of the population lives in rural areas, where rice farming is the major industry and whole families earn as little as $1 &ndash; $2 a day.</p>                    <p>Children growing up in extreme poverty often have no choice but to quit school and move far from home, exposing them to dangers such as trafficking, homelessness, sexual exploitation, drug abuse, and illness.</p>                </div>            </div>        </div>    </div></div><div>    <div>        <div>            <div>                <div></div>            </div>        </div>        <div>            <div>                <div>                    <h2>The Solution</h2>                    <p>Blue Dragon believes that every child deserves exceptional care so they can grow and flourish.</p>                    <p><a href="https://www.bluedragon.org/our-work/">Our services</a> are holistic, including rescue and crisis care for young people in immediate danger; shelter; <a href="https://www.bluedragon.org/our-work/legal-advocacy/">legal advocacy</a>; and long term support to return to school and training.&nbsp;</p>                    <p>While taking care of each child&rsquo;s immediate needs we invest in community development and long-term change on a systemic scale. Everything we learn from our individual cases feeds into our work on law reform, policy development, and training programs.&nbsp;</p>                </div>            </div>        </div>    </div></div><div> 
<div><div><div><div><h2>Who Do We Help?</h2><p>Blue Dragon helps kids in crisis throughout Vietnam. We work with 
<a href="https://www.bluedragon.org/our-work/step-ahead-program/">street kids</a>, runaway children, 
<a href="https://www.bluedragon.org/our-work/project-x-program">victims of human trafficking</a>, <a href="https://www.bluedragon.org/our-work/step-ahead-program/">children with disabilities</a>, young rural-urban migrants, kids affected by drugs and HIV/AIDS, homeless families, child prisoners, and the rural poor.</p>                    <p>We are there for every child who needs us to see them through a crisis, and we work with them until they no longer need our assistance.</p></div></div>',
'https://www.bluedragon.org/'
),
(15,'dktinternational',
'1001 Connecticut Ave. NW Suite 800 Washington, DC 20036',
'<p>DKT International is a registered, non-profit organization founded in 1989 to focus the power of social marketing on some of the largest countries with the greatest needs for family planning, HIV/AIDS prevention and safe abortion. By doing so, DKT has achieved tremendous health impact, and done it cost-efficiently. Although we work mostly in the private sector, we also support the public sector, often partnering with government health facilities to reach the total market.</p>
                    <p><strong>Scale:&nbsp;</strong>DKT is one of the largest private providers of family planning products in the world, having generated over 54 million couple years of protection (CYPs) in 2021. Five of the ten largest contraceptive social marketing programs in the world are DKT programs. As of 2021, DKT has offices in 28 countries, with a sales presence in 90 countries.</p>
                    <p><strong>Business-oriented NGO:&nbsp;</strong>DKT is an NGO that thinks like a business: We use business skills to address social ills, namely maternal and child mortality and HIV/AIDS. We create brands of contraceptives and other health products to&nbsp;advertise and sell as consumer goods. We have found that this approach inspires more people to use contraception, as many people prefer to access these services through the private sector.</p>
                    <p><strong>Significant cost-recovery:&nbsp;</strong>We&nbsp;recover a significant portion of our expenses through sales: Revenue from products and services covers approximately&nbsp;70% of our operating costs. This insulates us from changing political climates and donor funding priorities, and gives us increased autonomy.&nbsp;Each year, our donor cost per CYP hovers around the $2.00 mark.&nbsp;This low cost per CYP&nbsp;is made possible through our most sustainable programs &mdash; including&nbsp;Brazil,&nbsp;Indonesia,&nbsp;Mexico&nbsp;and the&nbsp;Philippines &mdash; as well as our low overhead costs.</p>
                    <p><strong>Focus on transparency:&nbsp;</strong>We are relentlessly transparent, both in our results and finances. At the bottom of every page on this website, you will find a link to &ldquo;Commitment to Transparency&rdquo; and &ldquo;Financial Statements.&rdquo; We have a page on &ldquo;Results&rdquo; on this website (find it under &ldquo;Resources&rdquo;). Check us out and let us know at info@dktinternational.org if you have questions or ideas on how we can be more transparent.</p>
                    <h2>Mission</h2>
                    <p>Through dynamic social marketing, DKT provides couples with affordable and safe options for family planning and HIV/AIDS prevention.</p>
                    <p>DKT works to:</p>
                    <ul>
                        <li>Increase the availability and affordability of a full spectrum of modern birth control methods</li>
                        <li>Strengthen the supply chain to increase availability of contraception and improve method mix variety</li>
                        <li>Increase demand and inspire new contraceptive users through advertising and educational campaigns</li>
                    </ul>
                    <h2>Vision</h2>
                    <p>DKT is an innovative and adventurous social marketing enterprise that improves people&rsquo;s lives.</p>
                    <h2>The Name DKT</h2>
                    <p>DKT International is named in honor of D.K. (Deep) Tyagi, who served as assistant commissioner of Family Planning for the Government of India. Mr. Tyagi was&nbsp;the architect&nbsp;of an extensive&nbsp;communication and behavior change program that introduced modern methods of family planning to hundreds of millions of Indians. Although he died at the young age of 41, Mr. Tyagi&nbsp;made a major contribution to his country&rsquo;s family planning efforts.</p>
                    <p>It was he who was largely responsible for the design and dissemination of a massive communication program that brought awareness and knowledge of family planning to hundreds of millions of Indians. &nbsp;He began his work at a time (1966) when modern contraceptives methods were virtually unknown in rural India. &nbsp;His success in saturating the country with simple, attractive messages and designs (including the Red Triangle, which is now in use in several other countries) overcame age-old communication barriers and greatly increased public awareness of birth control.</p>
                    <p>As an Indian with close ties with his own village in Uttar Pradesh, he saw a basic incongruity between national family planning goals and traditional aspirations of rural Indians and his work did much to bridge this gap.</p>',
'https://www.dktinternational.org/'
);

 
 
 
 insert into imageOrgs(orgId, title, imageData, sort, typeImage) value 
('1', '', 
'https://drive.google.com/uc?export=view&id=14pfrL6R9PCffGyxqzJjncDk7gWOle3DL',
1,
'logo'
),
('2', '', 
'https://drive.google.com/uc?export=view&id=1fpTPetJ2aS8hO4EZArcWKp_ohEuhV4HC',
1,
'logo'
),
('3', '', 
'https://drive.google.com/uc?export=view&id=1jLlN5GZJiElnM0NUX134R2ftZugJ_L4E',
1,
'logo'
),
('4', '', 
'https://drive.google.com/uc?export=view&id=18PEGKnUgd0LUibxRkIClLGjUv_2hSnHb',
1,
'logo'
),('5', '', 
'https://drive.google.com/uc?export=view&id=1ZNMDp2HPJWijIQqTqVzg0CqVpwxfAADo',
1,
'logo'
),('6', '', 
'https://drive.google.com/uc?export=view&id=1q9UK2JgtDAUQUgRuFKir-eiFKxlaKKfi',
1,
'logo'
),
('7', '', 
'https://drive.google.com/uc?export=view&id=1pMRY64kiI-Gss9_WDhLPYz5Z_EKTWUfa',
1,
'logo'
),
('8', '', 
'https://drive.google.com/uc?export=view&id=1fu9HKrwRRY8eggLcmExRQHrtCyHCRUhV',
1,
'logo'
),
('9', '', 
'https://drive.google.com/uc?export=view&id=1qWYmfn7JWUYWjvWlgbVugvp0uB7EWQdI',
1,
'logo'
),
('10', '', 
'https://drive.google.com/uc?export=view&id=1zRTeNjkBuTM-rW_IxJSEDRgqWxqVJwKS',
1,
'logo'
),
('11', '', 
'https://drive.google.com/uc?export=view&id=1zRTeNjkBuTM-rW_IxJSEDRgqWxqVJwKS',
1,
'logo'
),
('12', '', 
'https://drive.google.com/uc?export=view&id=1dB_C488m-zCb0CVQ1OaRcupeoEPKLlxp',
1,
'logo'
),
('13', '', 
'https://drive.google.com/uc?export=view&id=1N0JGlb1OUM2RG87AVduYiUho4HFXtHJI',
1,
'logo'
),
('14', '', 
'https://drive.google.com/uc?export=view&id=1A-7HX1gfvkE5Uhqrx_hweWiwB558wwDY',
1,
'logo'
),
('15', '', 
'https://drive.google.com/uc?export=view&id=1A-7HX1gfvkE5Uhqrx_hweWiwB558wwDY',
1,
'logo'
);

insert into donors(userId, isUser, name, firstName, lastName, middleName, 
email, phone, address) value
(16, true, null, null, null, null,null, null, null),
(17, true, null, null, null, null,null, null, null),
(18, true, null, null, null, null,null, null, null),
(19, true, null, null, null, null,null, null, null),
(20, true, null, null, null, null,null, null, null),
(21, true, null, null, null, null,null, null, null),
(22, true, null, null, null, null,null, null, null),
(23, true, null, null, null, null,null, null, null),
(24, true, null, null, null, null,null, null, null),
(25, true, null, null, null, null,null, null, null),
(26, true, null, null, null, null,null, null, null),
(27, true, null, null, null, null,null, null, null),
(28, true, null, null, null, null,null, null, null),
(29, true, null, null, null, null,null, null, null),
(30, true, null, null, null, null,null, null, null);



insert into inforUsers
(userId, firstName, middleName, lastName, email, phone, address, bankAccountNumber, bankName)
values 
(16,'Hoàng', 'Minh', 'Văn', 
'hoangminh@gmail.com', '0987569897',
'28 Cầu Giấy, Hà Nội', '0000300600430', 'MB Bank'),
(17,'Hoàng', 'Sơn', 'Văn', 
'vanson@gmail.com', '0965786699',
'40 Đống Đa, Hà Nội','0000300600430', 'MB Bank'),
(18,'Nguyễn', 'Phương', 'Minh', 
'minhphuong@gmail.com', '0965786699',
'32, Nam Từ Liêm, Hà Nội' ,'0000300600430', 'MB Bank'),
(19,'Nguyễn', 'Trinh', 'Ngọc', 
'ngoctrinh@gmail.com', '0782323232',
'45, Ba Đình, Hà Nội' ,'0000300600430', 'MB Bank'),
(20,'Lê', 'Tài', 'Văn', 
'vantai@gmail.com', '06855886887',
'58, Ba Đình, Hà Nội' ,'0000300600430', 'MB Bank'),
(21,'Trần', 'Phú', '', 
'tranphu@gmail.com', '0242563232',
'24, Hà Đông, Hà Nội' ,'0000300600430', 'MB Bank'),
(22,'Đinh', 'Lâm', 'Lam', 
'lamlam@gmail.com', '0243463232',
'24, Hà Đông, Hà Nội' ,'0000300600430', 'MB Bank'),
(23,'Trần', 'Phú', '', 
'tranphu@gmail.com', '0242563232',
'26, Hoàng Mai, Hà Nội' ,'0000300600430', 'MB Bank'),
(24,'Nguyễn', 'Hạnh', 'Mỹ', 
'myhanh@gmail.com', '0242563232',
'28, Tây Hồ, Hà Nội' ,'0000300600430', 'MB Bank'),
(25,'Lê', 'Ca', 'Sơn', 
'tranphu@gmail.com', '08786756545',
'99, Hà Đông, Hà Nội' ,'0000300600430', 'MB Bank'),
(26,'Đinh', 'Khánh', 'Trung', 
'trungkhanh@gmail.com', '09587878090',
'86, Thanh Xuân, Hà Nội' ,'0000300600430', 'MB Bank'),
(27,'Nguyễn', 'Lan', 'Lan', 
'lanlan@gmail.com', '0565787980',
'66, LongBien, Hà Nội' ,'0000300600430', 'MB Bank'),
(28,'Lê', 'Hoàng', 'Minh', 
'minhhoang@gmail.com', '0756980809',
'59, Ba Vì, Hà Nội','0000300600430', 'MB Bank'),
(29,'Hoàng', 'Tâm', 'Thanh', 
'thanhtam@gmail.com', '06767565659',
'35, Đan Phượng, Hà Nội' ,'0000300600430', 'MB Bank'),
(30,'Nguyễn', 'Chi', 'Quỳnh', 
'quynhchi@gmail.com', '0565780809',
'59, Ba Vì, Hà Nội' ,'0000300600430', 'MB Bank');


insert into categories(title, des) value
('Vì Trẻ Em', ''),
('Người già, người khuyết tật',''),
('Bệnh hiểm nghèo',''),
('Hoàn cảnh khó khăn',''),
('Hỗ trợ Giáo dục',''),
('Đầu tư cơ sở vật chất',''),
('Cứu trợ động vật',''),
('Bảo vệ môi trường','');


insert into campaigns(orgId, userId, categoryId, startDate, endDate, target, currencyUnit) value 
(7, 1, 1, 
'2022-01-01', '2022-01-12', 200000000, 'VND'),
(2, 2, 2, 
'2022-02-01', '2022-03-08', 200000000, 'VND'),
(3, 3, 2, 
'2022-02-01', '2022-03-08', 200000000, 'VND'),
(4, 4, 3, 
'2022-03-01', '2022-03-15', 200000000, 'VND'),
(5, 5, 1, 
'2022-02-02', '2022-03-30', 200000000, 'VND'),
(6, 6, 2, 
'2022-05-23', '2022-06-12', 200000000, 'VND'),
(7, 7, 4, 
'2022-03-26', '2022-04-10', 200000000, 'VND'),
(8, 8, 3, 
'2022-05-23', '2022-06-12', 200000000, 'VND'),
(9, 9, 1, 
'2022-05-23', '2022-06-12', 200000000, 'VND'),
(10, 10, 2, 
'2022-05-23', '2022-06-12', 200000000, 'VND'),
(11, 11, 3, 
'2022-05-23', '2022-06-12', 200000000, 'VND'),
(12, 12, 4, 
'2022-05-23', '2022-06-12', 200000000, 'VND'),
(13, 13, 1, 
'2022-05-23', '2022-06-12', 200000000, 'VND'),
(14, 14, 3, 
'2022-05-23', '2022-06-12', 200000000, 'VND'),
(15, 15, 2, 
'2022-05-23', '2022-06-12', 200000000, 'VND');




insert into articles(userId, campaignId, title, datePublish, imageData, desShort) value
(31, null,'Các em bé bản xa không còn phải học trong nhà gỗ dựng tạm chật hẹp', 
'2022-11-30',  'https://drive.google.com/uc?export=view&id=1UZ1HHZMjm6TqUFlqiDCBnWnlnO91UYFm',
'Nhận thấy các em học trò nghèo tại bản Lọng Xày (tỉnh Sơn La) cần gấp một mái trường mới an toàn hơn, cộng đồng Heo Đất MoMo đã cùng nhau quyên góp thành công hơn 1 triệu Heo Vàng.'),
(31, null,'Khám sàng lọc tim miễn phí thành công cho gần 1.600 trẻ em tại tỉnh Gia Lai', 
'2022-11-30','https://drive.google.com/uc?export=view&id=11pqZGyd2_1nXWf7lyjYEIsByDwRX3sOe', 
'Nhờ khoản tài trợ của cộng đồng MoMo thông qua chiến dịch gây quỹ Hỗ trợ chi phí khám sàng lọc bệnh tim bẩm sinh cho trẻ em'),
(31, null,'Trường mới tặng thầy trò vùng xa tỉnh Điện Biên đã hoàn thiện', 
'2022-11-30', 'https://drive.google.com/uc?export=view&id=1jrPasPkKho3ucJ_qE3Yg3spvGHsJXVQu',
'Giờ đây, thầy trò điểm trường Ca Tâu không cần phải lo lắng về vấn đề mưa gió trường dột nát nữa'),
(31, null,'Công viên dành riêng cho thú cưng đầu tiên tại Hà Nội', 
'2022-11-30', 'https://drive.google.com/uc?export=view&id=1uRK5OEjqzUvIPuNWbIq1laxoSK9qlbmb',
'Công viên cách trung tâm thành phố 10-15 km, được mở cửa miễn phí.' ),
(31, null,'Các em nhỏ bản Kéo Bó không còn phải đi mượn lớp học tạm', 
'2022-11-30', 'https://drive.google.com/uc?export=view&id=1LIb6EFmyt-Oodh52TJy7LtUBQ-4eq4bU',
'Nhờ các bác chủ trại đã chăm chỉ nuôi Heo, đi bộ, thực hiện sống tốt tích cực quyên góp và thành quả hơn 1.360.000 Heo Vàng'),
(31, null,'Ước mơ lớp học khang trang của nhiều trẻ em và thầy cô giáo của xã Nậm Chà', 
'2022-11-30', 'https://drive.google.com/uc?export=view&id=13Dp-Wncv58wbqoNqHSs4-z52yBQC3HBZ',
'Ngày 13/4/2022 vừa qua, thầy cô điểm trường Phiêng Lằn, xã Nậm Chà, huyện Nậm Nhùn, tỉnh Lai Châu vô cùng hạnh phúc khi trường mới được hoàn thành'),
(31, null,'Vun đắp ước mơ học hành cho các em nhỏ tại Sơn La', 
'2022-11-30', 'https://drive.google.com/uc?export=view&id=1DfPNpCjGS540lwjdGRtQ693MmMqUjmwg',
'Trải qua 15 năm dãi nắng, dầm mưa, lớp học tạm của các em nhỏ ở điểm Huổi Co (Sông Mã, Sơn La) cũng đã bị mối mọt, những tấm gỗ ghép đã xuống cấp trầm trọng'),
(31, null,'Biến ước mơ một lớp học mới của trẻ điểm trường Mầm non bản Cương Chính thành hiện thực', 
'2022-11-30', 'https://drive.google.com/uc?export=view&id=1gT2rsQQUCElpDRVp4tHM93UfctlHYxPH',
'Vừa qua, thầy cô và các em nhỏ tại điểm trường bản Cương Chính, huyện Sông Mã, tỉnh Sơn La vô cùng hạnh phúc khi ngôi trường mới được hoàn thành'),
(31, null,'Hoàn thành ngôi trường thương yêu cho các em nhỏ tại bản Huổi Dên (Điện Biên)', 
'2022-11-30', 'https://drive.google.com/uc?export=view&id=11Ccxm-W_gcXiNr1ZeOQxuSMkmR4cq8qL',
'Xót xa trước những thiệt thòi của các bé “mầm non” bản Huổi Chỏn B – tỉnh Điện Biên' ),
(31, null,'Mang đến trái tim khỏe mạnh cho 8 em nhỏ', 
'2022-11-30', 'https://drive.google.com/uc?export=view&id=1KtrhTtSNzJg4j_JVgqd9nSa7dEEHUn7v',
'Nhờ có sự giúp sức của các mạnh thường quân thông qua kênh quyên góp MoMo vào chiến dịch gây quỹ' ),
(31, null,'Vì một tương lai tốt đẹp hơn cho các em học sinh', 
'2022-11-30', 'https://drive.google.com/uc?export=view&id=13FvoeeJpfpOKVEDY3hsekQhQ9tNPYJh2',
'Thương cho bà con và các em học sinh nghèo tại huyện Vĩnh Lợi, tỉnh Bạc Liêu, vừa qua MoMo đã cùng Trung tâm Tương Lai gây quỹ thành công 30 triệu đồng' ),
(31, null,'Trao học bổng khuyến khích tinh thần học tập cho các em học sinh tỉnh Bến Tre', '
2022-11-30', 'https://drive.google.com/uc?export=view&id=1eBEXj67YD__2vvCEV31glcE5U-6TdFMa',
'Đại diện Trung tâm Tương Lai đã có dịp ghé thăm trường và trao học bổng cho 15 em học sinh' ),
(31, null,'Chắp cánh ước mơ cho các em học trò nghèo miền Trung', 
'2022-11-30', 'https://drive.google.com/uc?export=view&id=1EKZKwsGMGHx0edUDthWvVWIuRTm5Ms_j',
'Toàn bộ số tiền ủng hộ của cộng đồng MoMo đợt này đã được trao cho 15 trẻ em có hoàn cảnh đặc biệt tại trường THCS Ông Ích Đường (Đà Nẵng)' ),
(31, null,'15 suất học bổng trao tặng các em học sinh nghèo tại biên giới', 
'2022-11-30', 'https://drive.google.com/uc?export=view&id=1eXvRydKLHlaFv6SXwrCXSdPp8BtEAUhV',
'Với tinh thần tương thân tương ái, Heo Đất MoMo phối hợp cùng Trung tâm Giáo dục Sức khỏe và Phát triển Cộng đồng Tương Lai' ),
(31, null,'Tiếp sức cho 330 em học sinh khó khăn có thêm ý chí vươn lên học tập', 
'2022-11-30', 'https://drive.google.com/uc?export=view&id=1ypVk5SDTH_b0PZHyQDsSZYg5uJMaVL8N',
 'Ngày 17 và 18/3 vừa qua, Trung tâm Tương Lai đã đến xã An Cư, huyện Tịnh Biên, tỉnh An Giang để trao 30 suất học bổng'),
(1, 1, 'Trao tặng 20 ca phẫu thuật thay đổi cuộc đời cho các em bé hở môi hàm ếch',
'2022-12-15',  'https://drive.google.com/uc?export=view&id=1-jQ6ppAd9tGFTCiEcw5kd8yPQlawyzI9', 
'Chung tay gây quỹ 20 ca phẫu thuật cho các em bé hở môi, hàm ếch để các em tự tin đến trường và trưởng thành như bao em nhỏ khác'),
(2, 2, 'Tặng học bổng và truyền thông phòng chống xâm hại, bạo lực cho học sinh khó khăn tại xã Hàm Kiệm, huyện Hàm Thuận Nam, tỉnh Bình Thuận',
'2022-11-30',
'https://drive.google.com/uc?export=view&id=1GrFXw7RzYMGYflGF23To4A6meUAfLt0r',
'Cùng gây quỹ tặng 30 suất học bổng và truyền thông phòng chống xâm hại, bạo lực cho các em học sinh có hoàn cảnh khó khăn tại xã Hàm Kiệm, huyện Hàm Thuận Nam, tỉnh Bình Thuận'  ),
(3, 3, 'Trao điện thoại, đào tạo về chăm sóc trực tuyến, đào tạo kỹ năng số cho người khuyết tật và người chăm sóc tại Bình Định, Quảng Nam và Kon Tum',
'2022-11-30',
'https://drive.google.com/uc?export=view&id=1VJhX87urDZVVGvkFAChxX53kdUkaTR-D',
'Cùng chung tay quyên góp kinh phí tài trợ điện thoại thông minh để thay đổi cuộc sống người khuyết tật và người chăm sóc tại Bình Định, Quảng Nam và Kon Tum' ),
(4, 4, 'Góp bữa ăn sáng xây dựng kỹ năng “Vào Đời” cho 500 trẻ thanh thiếu niên mồ côi, khó khăn',
'2022-11-30',
'https://drive.google.com/uc?export=view&id=1y3HIIKnDNwNuppBOIAdBWwi24jhfOnF5',
'Cùng chung tay hỗ trợ chi phí tổ chức các buổi học tập, tham quan, dã ngoại dạy kỹ năng sống cho 500 trẻ thanh thiếu niên mồ côi, khó khăn tại mái ấm, đường phố' ),
(5, 5, 'Cùng chung tay hỗ trợ chi phí khám chữa bệnh tai biến cho chú Mỹ',
'2022-11-30',
'https://drive.google.com/uc?export=view&id=1_4eVyRAzYCd1gaYZXYq3SS9MA0gZbei4',
'Cùng chung tay ủng hộ chi phí khám chữa bệnh tai biến cho chú Mỹ, để giúp chú giảm bớt nỗi đau về bệnh tật' ),
(6, 6, 'Chung tay giúp cô Luyến giảm bớt nỗi đau do bệnh tim và bệnh khớp giày vò',
'2022-11-30',
'https://drive.google.com/uc?export=view&id=1-McUo911BWNw_3XggkaHjhKUvuMKxzFP',
'Cô Luyến đang phải mạnh mẽ chống lại bệnh tim và bệnh khớp giày vò, rất cần sự chung tay ủng hộ của các mạnh thường quân và các nhà hảo tâm để giúp cô vơi bớt phần nào nỗi đau.' ),
(7, 7, 'Cùng chung tay hỗ trợ chi phí khám chữa bệnh tai biến cho chú Mỹ',
'2022-11-30',
'https://drive.google.com/uc?export=view&id=1C5NGeabIGhsXq8wN5Lk1hbk4olKLMyyt',
'Cùng chung tay ủng hộ chi phí khám chữa bệnh tai biến cho chú Mỹ, để giúp chú giảm bớt nỗi đau về bệnh tật' ),
(8, 8, 'Chung tay giúp cô Luyến giảm bớt nỗi đau do bệnh tim và bệnh khớp giày vò',
'2022-11-30',
'https://drive.google.com/uc?export=view&id=1CfB7jsLqRN1hIKJ22wttVBFaRR2DXKmR',
'Cô Luyến đang phải mạnh mẽ chống lại bệnh tim và bệnh khớp giày vò, rất cần sự chung tay ủng hộ của các mạnh thường quân và các nhà hảo tâm để giúp cô vơi bớt phần nào nỗi đau.' ),
(9, 9, 'Chung tay kêu gọi chi phí khám chữa bệnh tim cho chú Phúc Lâm',
'2022-11-30',
'https://drive.google.com/uc?export=view&id=1wG-GpnKp3DRObCG9m48OjdhJevEGkfqK',
'Tuổi trẻ với nhiều sai lầm, chú Phúc đã đánh mất đi gia đình và mái ấm của mình. Khi lớn tuổi, công việc bấp bênh và vất vả khiến chú bị tai biến đột ngột.' ),
(10, 10, 'Chung tay xây dựng cầu bản Pa Kha, tỉnh Điện Biên',
'2022-11-30',
'https://drive.google.com/uc?export=view&id=1ORAq30L0fyjqSXL-OdWSJ5SW0SvBXP-i',
'Chung tay xây dựng cầu bản Pa Kha, tỉnh Điện Biên để các bé có đường đi học, dân bản có đường giao thương làm ăn buôn bán.' ),
(11, 11, 'Phát động chiến dịch “Áo Ấm Cho Em” - “Mùa đông không lạnh cho trẻ em nghèo” tỉnh Quảng Trị',
'2022-11-30',
'https://drive.google.com/uc?export=view&id=1KxLBf2kSjP0hzcNgAp4dgFCyjBTlmE5g',
' Với truyền thống đoàn kết tốt đẹp của dân tộc và tinh thần “Thương người như thể thương thân”, chiến dịch mong muốn tiếp sức' ),
(12, 12, 'Chung tay cải tạo sân chơi cho trẻ em tại bờ vở sông Hồng',
'2022-11-30',
'https://drive.google.com/uc?export=view&id=1DvCfpHjn6l19bFxUjniZYjZoY724Em3t',
'Cùng chung tay cải tạo sân chơi cho trẻ em ở bờ vở sông Hồng để nâng cao sức khỏe tâm trí cho trẻ sau đại dịch' ),
(13, 13, 'Cả nước chung tay vì người nghèo - Không để ai bị bỏ lại phía sau',
'2022-11-30',
'https://drive.google.com/uc?export=view&id=19NjAvfee8IajkFeeDxwVJqmdXNxWEf1J',
'Có dịp đến vùng sâu, vùng xa, vùng khó khăn trên khắp mọi miền đất nước, chúng ta đều dễ dàng bắt gặp những sự hỗ trợ,' ),
(14, 14, 'Cùng Hội Bảo trợ NTT&TMC chung tay “Tiếp sức đến trường” cho 12 cháu học sinh mồ côi, có hoàn cảnh đặc biệt khó khăn xã Mường Giôn, tỉnh Sơn La',
'2022-11-30',
'https://drive.google.com/uc?export=view&id=1eHn3ftL3geJip20ZzybuXZnu8S8dOsRj',
'Chung tay cùng Hội bảo trợ người tàn tật trẻ mồ côi huyện Quỳnh Nhai tỉnh Sơn La quyên góp tặng học bổng cho 12 để các em có bữa cơm no, áo ấm giúp các em vượt khó để phấn đấu trong học tập.' ),
(15, 15, 'Chung tay mang đến phép màu y tế cho 08 trẻ em dị tật bẩm sinh',
'2022-11-30',
'https://drive.google.com/file/d/1NM_YC3n2maeMP2CwpqG0LbdC3ayo0pi5/view?usp=sharing',
'Góp một bàn tay cho 05 trẻ em dị tật bẩm sinh khắp miền đất Việt được chữa trị y tế theo tiêu chuẩn quốc tế và sống một cuộc đời đáng sống.' );


insert into comments(userId, articleId, content) value
('16', '1', 'Tuyệt vời'),
('17', '2', 'Tuyệt vời'),
('18', '3', 'Tuyệt vời'),
('19', '4', 'Tuyệt vời'),
('20', '5', 'Tuyệt vời'),
('21', '6', 'Tuyệt vời'),
('22', '7', 'Tuyệt vời'),
('23', '8', 'Tuyệt vời'),
('24', '9', 'Tuyệt vời'),
('25', '10', 'Tuyệt vời'),
('26', '11', 'Tuyệt vời'),
('27', '12', 'Tuyệt vời'),
('28', '13', 'Tuyệt vời'),
('29', '14', 'Tuyệt vời'),
('30', '15', 'Tuyệt vời');


insert into sections(articleId, sort) value
(1, 1),(1, 2),(1, 3),
(2, 1),(2, 2),(2, 3),
(3, 1),(3, 2),(3, 3),
(4, 1),(4, 2),(4, 3),
(5, 1),(5, 2),(5, 3),
(6, 1),(6, 2),(6, 3),
(7, 1),(7, 2),(7, 3),
(8, 1),(8, 2),(8, 3),
(9, 1),(9, 2),(9, 3),
(10, 1),(10, 2),(10, 3),
(11, 1),(11, 2),(11, 3),
(12, 1),(12, 2),(12, 3),
(13, 1),(13, 2),(13, 3),
(14, 1),(14, 2),(14, 3),
(15, 1),(15, 2),(15, 3),
(16, 1),(16, 2),
(17, 1),(17, 2),
(18, 1),(18, 2),
(19, 1),(19, 2),
(20, 1),(20, 2),
(21, 1),(21, 2),
(22, 1),(22, 2),
(23, 1),(23, 2),
(24, 1),(24, 2),
(25, 1),(25, 2),
(26, 1),(26, 2),
(27, 1),(27, 2),
(28, 1),(28, 2),
(29, 1),(29, 2),
(30, 1),(30, 2);




insert into contents(sectionId, imageContentId, title, des, sort) value
(1, null, 
'', '<p>Nhận thấy c&aacute;c em học tr&ograve; ngh&egrave;o tại bản Lọng X&agrave;y (tỉnh Sơn La) cần gấp một m&aacute;i trường mới an to&agrave;n hơn, cộng đồng Heo Đất MoMo đ&atilde; c&ugrave;ng nhau quy&ecirc;n g&oacute;p th&agrave;nh c&ocirc;ng hơn 1 triệu Heo V&agrave;ng. Số Heo V&agrave;ng n&agrave;y được nh&agrave; t&agrave;i trợ quy đổi th&agrave;nh 440 triệu đồng tiền mặt để tiến h&agrave;nh x&acirc;y trường.</p>
<div>
    <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;G&oacute;p Heo V&agrave;ng x&acirc;y dựng th&ecirc;m ph&ograve;ng học điểm trường Lọng X&agrave;y, tỉnh Sơn La c&ugrave;ng BNI H&agrave; Nội 6</strong></p>
    <p><strong>Số Heo V&agrave;ng đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 1.049.463</p>
    <p><strong>Đơn vị triển khai:</strong><a href="https://momo.vn/song-tot/suc-manh-2000">&nbsp;Sức Mạnh 2000</a></p>
    <p><strong>Thời gian g&acirc;y quỹ:</strong> 23/06/2022</p>
    <p><strong>Địa điểm hỗ trợ:</strong> Sơn La</p>',1),
    (2, null, 
'', 'Bản Lọng Xày thuộc xã Chiềng En, đây là xã có điều kiện kinh tế - xã hội đặc biệt khó khăn của huyện sông Mã. 
Điểm trường bản Lọng Xày cách trung tâm xã 18km, 
đây là bản đặc biệt khó khăn, trình độ dân trí thấp. Năm học 2021- 2022, 
trường MN Họa My (xã Chiềng En) có 17 nhóm lớp với 489 học sinh. Trường còn nhiều lớp tạm, 
đặc biệt là khu Lọng Xày. Hiện nay, điểm trường bản Lọng Xày có 01 phòng học tạm bằng gỗ, mái 
proximang được nhân dân bản tự đóng góp xây dựng, đó là lớp mẫu giáo ghép ba độ tuổi (3,4,5 tuổi) 
với tổng số 37 học sinh. Được xây dựng từ năm 2006 và đến thời điểm hiện tại, lớp học vẫn chưa được 
cải thiện nên đã xuống cấp nghiêm trọng. Trải qua thời tiết nắng mưa thay đổi bất thường hằng năm, các 
ván gỗ dần trở nên mục nát, ẩm mốc. Tình trạng lớp học vốn không còn đảm bảo an toàn cho các em nhỏ tham 
gia học tập ở đây. Cơ sở vật chất chưa ổn định là thế, bởi lẽ điều kiện sống của vùng còn quá khó khăn, 
tại điểm trường bản Lọng Xày tỉ lệ học sinh nghèo vẫn rất cao (chiếm tới 45%).',1),
(3, null, 
'', 'Nhận thấy các em học trò nghèo tại đây cần gấp một mái trường mới an toàn hơn, 
cộng đồng Heo Đất MoMo đã cùng nhau quyên góp thành công hơn 1 triệu Heo Vàng. 
Số Heo Vàng này được nhà tài trợ quy đổi thành 440 triệu đồng tiền mặt để tiến hành xây trường. 
Và thế là ngôi trường yêu thương cũng đã hoàn thành, để các em học sinh không những có thêm 
chỗ học mà còn được học tập trong một môi trường học tập hơn. Xin cảm ơn tấm lòng của các bạn 
đã giúp tạo điều kiện tốt nhất cho những mầm non đất nước.',1),

(4, null, 
'', '<p>Nhờ khoản t&agrave;i trợ của cộng đồng MoMo th&ocirc;ng qua chiến dịch g&acirc;y quỹ Hỗ trợ chi ph&iacute; kh&aacute;m s&agrave;ng lọc bệnh tim bẩm sinh cho trẻ em, 1.561 trẻ em tại đ&acirc;y được kh&aacute;m, chẩn đo&aacute;n tại chỗ v&agrave; si&ecirc;u &acirc;m. 87 trẻ được ph&aacute;t hiện dị tật tim bẩm sinh v&agrave; 35 trẻ được chỉ định can thiệp hoặc phẫu thuật sớm.</p>
<div>
    <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;Chung tay hỗ trợ chi ph&iacute; kh&aacute;m s&agrave;ng lọc bệnh tim bẩm sinh cho hơn 4000 trẻ em tại 3 tỉnh B&igrave;nh Thuận, Hưng Y&ecirc;n v&agrave; Gia Lai</strong></p>
    <p><strong>Số Heo V&agrave;ng đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 3.347.515</p>
    <p><strong>Số tiền mặt đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:&nbsp;</strong>243.214.234đ</p>
    <p><strong>Đơn vị triển khai:&nbsp;</strong><a href="https://momo.vn/song-tot/the-vinacapital-foundation-vcf">VinaCapital Foundation</a></p>
    <p><strong>Thời gian g&acirc;y quỹ:</strong> 06/07/2022</p>',1),
(5, null, 
'', 'Từ ngày 4-7/10/2022 vừa qua, VinaCapital Foundation (VCF) đã phối hợp cùng Sở Lao động Thương binh và Xã hội tỉnh Gia Lai 
và đoàn bác sĩ từ Bệnh viện Hoàn Mỹ Đà Nẵng đã triển khai thành công chương trình Khám Sàng Lọc bệnh tim miễn phí cho trẻ em 
tại 4 huyện và 18 xã lân cận của tỉnh Gia Lai. Nhờ khoản tài trợ của cộng đồng MoMo thông qua chiến dịch gây quỹ Hỗ trợ chi 
phí khám sàng lọc bệnh tim bẩm sinh cho trẻ em, 1.561 trẻ em tại đây được khám, chẩn đoán tại chỗ và siêu âm. 87 trẻ được phát 
hiện dị tật tim bẩm sinh và 35 trẻ được chỉ định can thiệp hoặc phẫu thuật sớm. Tất cả các trường hợp này đều được chương trình
 Nhịp tim Việt Nam của VCF hỗ trợ ngay lập tức.',1),
(6, null, 
'', 'Xin chân thành gửi lời cảm ơn tới cộng đồng làm việc tốt MoMo đã chung tay trao cơ hội khám sàng lọc bệnh tim miễn phí cho các
 em nhỏ khó khăn. Và hy vọng sẽ tiếp tục nhận được sự đồng hành và ủng hộ của các bạn trong các chiến dịch sắp tới.',1),
 (7, null, 
'', '<p>Giờ đ&acirc;y, thầy tr&ograve; điểm trường Ca T&acirc;u kh&ocirc;ng cần phải lo lắng về vấn đề mưa gi&oacute; trường dột n&aacute;t nữa. V&igrave; một ng&ocirc;i trường mới, khang trang v&agrave; ki&ecirc;n cố đ&atilde; được x&acirc;y dựng l&ecirc;n. Ng&ocirc;i trường như một m&oacute;n qu&agrave; gửi tặng đến thầy tr&ograve; c&aacute;c em, mong c&aacute;c em sẽ c&oacute; m&ocirc;i trường tốt để học tập.</p>
<div>
    <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;G&oacute;p Heo V&agrave;ng x&acirc;y dựng th&ecirc;m ph&ograve;ng học điểm trường Ca T&acirc;u, tỉnh Điện Bi&ecirc;n c&ugrave;ng BNI H&agrave; Nội 6</strong></p>
    <p><strong>Số Heo V&agrave;ng đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 1.704.314</p>
    <p><strong>Đơn vị triển khai:</strong><a href="https://momo.vn/song-tot/suc-manh-2000">&nbsp;Sức Mạnh 2000</a></p>
    <p><strong>Nh&agrave; t&agrave;i trợ:</strong> BNI H&agrave; Nội 6</p>
    <p><strong>Thời gian g&acirc;y quỹ:</strong> 14/06/2022</p>
    <p><strong>Địa điểm hỗ trợ:</strong> Điện Bi&ecirc;n</p>',1),
(8, null, 
'', '<p>Điểm trường Ca T&acirc;u l&agrave; một trong những điểm trường của trường Mầm non Ban Mai thuộc x&atilde; Xa Dung, huyện Điện 
Bi&ecirc;n Đ&ocirc;ng, tỉnh Điện Bi&ecirc;n. Điểm trường c&aacute;ch trung t&acirc;m trường 10 km, giao th&ocirc;ng v&ocirc; c&ugrave;ng 
kh&oacute; khăn. Mảnh đất c&ograve;n nhiều thiếu thốn nơi đ&acirc;y cũng l&agrave; nơi sinh sống của 88 hộ d&acirc;n với 488 nh&acirc;n 
khẩu, chủ yếu l&agrave; người H&rsquo;M&ocirc;ng. Đại đa số người d&acirc;n l&agrave;m n&ocirc;ng, d&ugrave; chăm chỉ b&aacute;n lưng 
cho trời, b&aacute;n mặt cho đất mỗi ng&agrave;y nhưng cuộc sống vẫn kh&ocirc;ng ổn định hơn l&agrave; bao.</p>
<p>T&iacute;nh đến năm học 2021-2022 điểm trường c&oacute; tất cả 61 trẻ được bi&ecirc;n chế th&agrave;nh 02 lớp, 
trong đ&oacute; lớp mẫu gi&aacute;o 36 tuổi l&agrave; 01 lớp nh&agrave; trẻ với 25 ch&aacute;u. Hiện tại điểm trường chỉ c&oacute; 
01 lớp được x&acirc;y ki&ecirc;n cố, 01 lớp c&ograve;n lại l&agrave; nh&agrave; gỗ cũng trong t&igrave;nh trạng xuống cấp c&ugrave;ng 
với sự nguy hiểm cao khi c&aacute;c em nhỏ học tập. D&ugrave; đ&atilde; qua hơn một thập kỷ x&acirc;y dựng v&agrave; củng cố nhưng hiện
 nay cơ sở vật chất của nh&agrave; trường vẫn c&ograve;n tạm bợ.</p>',1),
(9, null, 
'', '<p>Giờ đ&acirc;y, thầy tr&ograve; điểm trường Ca T&acirc;u kh&ocirc;ng cần phải lo lắng về vấn đề đ&oacute; nữa v&igrave; một 
ng&ocirc;i trường mới, khang trang v&agrave; ki&ecirc;n cố đ&atilde; được x&acirc;y dựng l&ecirc;n. Ng&ocirc;i trường như một 
m&oacute;n qu&agrave; gửi tặng đến thầy tr&ograve; c&aacute;c em, mong c&aacute;c em sẽ c&oacute; m&ocirc;i trường tốt để học tập.</p>
<p>Nhờ cộng đồng chủ trại Heo Đất đ&atilde; chăm chỉ thực hiện sống tốt t&iacute;ch cực quy&ecirc;n g&oacute;p v&agrave; th&agrave;nh 
quả hơn 1.625.000 được quy&ecirc;n g&oacute;p th&agrave;nh c&ocirc;ng cho điểm trường Ca T&acirc;u. Ngay sau khi quy&ecirc;n g&oacute;p 
th&agrave;nh c&ocirc;ng, tất cả số Heo V&agrave;ng tr&ecirc;n đ&atilde; được nh&agrave; t&agrave;i trợ l&agrave; BNI H&agrave; Nội quy 
đổi th&agrave;nh 260.000.000VND gửi tới Dự &aacute;n Sức mạnh 2000 trực thuộc Trung t&acirc;m t&igrave;nh nguyện Quốc gia, để phối hợp 
c&ugrave;ng địa phương thực hiện x&acirc;y dựng điểm trường với quy m&ocirc; x&acirc;y dựng: 1 ph&ograve;ng học, 1 ph&ograve;ng 
c&ocirc;ng vụ. Xin cảm ơn tấm l&ograve;ng của c&aacute;c chủ trại đ&atilde; gi&uacute;p c&aacute;c em nhỏ c&oacute; được m&aacute;i 
trường mới v&agrave; an to&agrave;n hơn rất nhiều.</p>',1),
 (10, null, 
'', '<p>Việc tạo kh&ocirc;ng gian ri&ecirc;ng d&agrave;nh cho ch&oacute; l&agrave; điều cần thiết v&agrave; đem lại c&aacute;c lợi &iacute;ch cho cộng đồng. C&ocirc;ng vi&ecirc;n cho ch&oacute; tại Y&ecirc;n Sở sẽ gi&uacute;p c&ocirc;ng vi&ecirc;n trở n&ecirc;n an to&agrave;n hơn với c&aacute;c em nhỏ, g&oacute;p phần đảm bảo vệ sinh m&ocirc;i trường, đồng thời x&acirc;y dựng cộng đồng nu&ocirc;i th&uacute; cưng th&acirc;n thiện v&agrave; văn minh.</p>
<div>
    <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;Chung tay quy&ecirc;n g&oacute;p kiến tạo c&ocirc;ng vi&ecirc;n đầu ti&ecirc;n d&agrave;nh cho cộng đồng nu&ocirc;i ch&oacute; tại C&ocirc;ng vi&ecirc;n xanh Y&ecirc;n Sở</strong></p>
    <p><strong>Số Heo V&agrave;ng đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:&nbsp;</strong>4.000.173</p>
    <p><strong>Số tiền mặt đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:&nbsp;</strong>140.002.010đ</p>
    <p><strong>Đơn vị triển khai:&nbsp;</strong>Think Playgrounds</p>
    <p><strong>Thời gian g&acirc;y quỹ:</strong> 04/05/2022</p>',1),
(11, null, 
'', '<p>Tại c&aacute;c đ&ocirc; thị lớn, việc c&aacute;c gia đ&igrave;nh nu&ocirc;i ch&oacute; kh&ocirc;ng c&ograve;n hiếm gặp, đặc biệt
 l&agrave; c&aacute;c gia đ&igrave;nh c&oacute; trẻ em. Việc được đồng h&agrave;nh với th&uacute; cưng gi&uacute;p trẻ em nu&ocirc;i
 dưỡng t&igrave;nh y&ecirc;u với động vật cũng như ph&aacute;t triển nhận thức, tr&iacute; tuệ cảm x&uacute;c v&agrave; h&agrave;nh vi 
 t&iacute;ch cực. Tuy nhi&ecirc;n, tại H&agrave; Nội cũng như nhiều đ&ocirc; thị kh&aacute;c ở Việt Nam, c&aacute;c c&ocirc;ng 
 vi&ecirc;n chưa c&oacute; kh&ocirc;ng gian vui chơi th&acirc;n thiện ri&ecirc;ng biệt. Nơi m&agrave; trẻ em, cha mẹ v&agrave; 
 những người nu&ocirc;i ch&oacute; c&oacute; thể vui chơi an to&agrave;n c&ugrave;ng những ch&uacute; ch&oacute; của m&igrave;nh 
 m&agrave; kh&ocirc;ng xung đột với c&aacute;c nhu cầu sử dụng c&ocirc;ng vi&ecirc;n kh&aacute;c. Việc thiếu hụt n&agrave;y đ&atilde; 
 dẫn đến nhiều xung đột, m&acirc;u thuẫn khi việc dắt ch&oacute; đi dạo hoặc thả r&ocirc;ng tại c&aacute;c kh&ocirc;ng gian chung ảnh 
 hưởng v&agrave; g&acirc;y nguy hiểm cho những người kh&aacute;c trong c&ocirc;ng vi&ecirc;n.&nbsp;</p>
<p>Thấu hiểu điều đ&oacute;, Heo Đất MoMo đ&atilde; phối hợp g&acirc;y quỹ c&ugrave;ng tổ chức Think Playgrounds x&acirc;y dựng 
c&ocirc;ng vi&ecirc;n d&agrave;nh cho th&uacute; cưng đầu ti&ecirc;n tại H&agrave; Nội. Nhờ c&oacute; sự ủng hộ nhiệt t&igrave;nh của 
c&aacute;c chủ trại Heo Đất, nh&agrave; hảo t&acirc;m MoMo, dự &aacute;n mới c&oacute; thể ho&agrave;n th&agrave;nh nhanh ch&oacute;ng, 
đưa v&agrave;o sử dụng. C&ocirc;ng vi&ecirc;n d&agrave;nh cho ch&oacute; nằm trong khu&ocirc;n vi&ecirc;n c&ocirc;ng vi&ecirc;n 
Y&ecirc;n Sở. C&ocirc;ng vi&ecirc;n c&oacute; diện t&iacute;ch 1.650 m2 bao gồm c&aacute;c hạng mục ch&iacute;nh: H&agrave;ng r&agrave;o,
 cổng v&agrave;o, c&aacute;c thiết bị vận động, b&agrave;n ghế v&agrave; bảng th&ocirc;ng tin với mục đ&iacute;ch n&acirc;ng cao 
 &yacute; thức của người sử dụng. C&aacute;c hạng mục của c&ocirc;ng tr&igrave;nh đều đảm bảo theo ti&ecirc;u chuẩn c&ocirc;ng vi&ecirc;
 n ch&oacute; tại Mỹ.</p>',1),
(12, null, 
'', '<p>Việc tạo kh&ocirc;ng gian ri&ecirc;ng d&agrave;nh cho ch&oacute; l&agrave; điều cần thiết v&agrave; đem lại c&aacute;c lợi &iacute;ch cho cộng đồng. Địa điểm n&agrave;y gi&uacute;p c&ocirc;ng vi&ecirc;n n&oacute;i chung trở n&ecirc;n an to&agrave;n hơn với mọi người, g&oacute;p phần đảm bảo vệ sinh m&ocirc;i trường, đồng thời x&acirc;y dựng cộng đồng nu&ocirc;i th&uacute; cưng th&acirc;n thiện v&agrave; văn minh. Ngo&agrave;i ra, việc vận h&agrave;nh s&acirc;n chơi cho ch&oacute; cũng &iacute;t tốn nguồn lực v&agrave; chi ph&iacute;.</p>
<p>Xin cảm ơn những tấm l&ograve;ng của cộng đồng Heo Đất đ&atilde; tạo n&ecirc;n c&ocirc;ng vi&ecirc;n &yacute; nghĩa n&agrave;y, hy vọng ngo&agrave;i l&agrave; s&acirc;n chơi cho th&uacute; cưng c&ograve;n l&agrave; nơi vui chơi an to&agrave;n cho c&aacute;c em nhỏ.</p>',1),
(13, null, 
'', '<p>Nhờ c&aacute;c b&aacute;c chủ trại đ&atilde; chăm chỉ nu&ocirc;i Heo, đi bộ, thực hiện sống tốt t&iacute;ch cực quy&ecirc;n g&oacute;p v&agrave; th&agrave;nh quả hơn 1.360.000 Heo V&agrave;ng được quy&ecirc;n g&oacute;p th&agrave;nh c&ocirc;ng cho điểm trường K&eacute;o B&oacute; (Y&ecirc;n Ch&acirc;u, Sơn La). Ngay sau khi quy&ecirc;n g&oacute;p th&agrave;nh c&ocirc;ng, tất cả số Heo V&agrave;ng tr&ecirc;n đ&atilde; được quy đổi th&agrave;nh 170.000.000đ gửi tới Dự &aacute;n Sức mạnh 2000 trực thuộc Trung t&acirc;m t&igrave;nh nguyện Quốc gia để phối hợp c&ugrave;ng địa phương thực hiện x&acirc;y dựng 1 ph&ograve;ng học (42m2).</p>
<div>
    <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;G&oacute;p Heo V&agrave;ng x&acirc;y dựng điểm trường Mầm non bản K&eacute;o B&oacute; - tỉnh Sơn La c&ugrave;ng Anh Chị Nu&ocirc;i Dự &aacute;n Nu&ocirc;i Em</strong></p>
    <p><strong>Số Heo V&agrave;ng đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 1.360.227</p>
    <p><strong>Đơn vị triển khai:&nbsp;</strong>Nu&ocirc;i Em</p>
    <p><strong>Thời gian g&acirc;y quỹ:</strong> 07/04/2022</p>',1),
(14, null, 
'', 'Bản Kéo Bó, Trường Mầm non Bình Minh, xã Chiềng Đông, huyện Yên Châu, tỉnh Sơn La là một bản nhỏ, heo hút giữa những thiên nhiên bạt ngàn của vùng Tây Bắc. Bản là nơi cư trú của 248 người dân tộc Mông, chủ yếu đều thuộc hộ nghèo. Họ sinh sống bằng nghề trồng trọt và làm nương rẫy. Tuy chăm chỉ chịu khó, nhưng đời sống của người dân nơi đây vẫn tồn tại nhiều khó khăn, thiếu thốn. Ngay đến điểm trường Mầm non duy nhất cũng không có, phải mượn tạm nhà văn hóa để trẻ có chỗ ngồi học. Điểm trường Mầm non bản Kéo Bó cách trung tâm xã 26km. Trường chỉ có một phòng học duy nhất với 30 học sinh, trải dài nhiều độ tuổi. Được thành lập từ năm 1994, trải qua hơn 20 năm tuổi, lớp học của các em giờ đây đã xuống cấp trầm trọng. Các vách tường sau nhiều năm đã bong tróc và ẩm mốc do ngấm nước mưa nhiều năm.',1),
(15, null, 
'', 'Thấu hiểu sự khó khăn đó, Dự án Nuôi Em và Sức Mạnh 2000 đã phối hợp cùng Heo Đất gây quỹ xây dựng trường mới tặng các em và thầy cô tại điểm trường. Nhờ các bác chủ trại đã chăm chỉ nuôi Heo, đi bộ, thực hiện sống tốt tích cực quyên góp và thành quả hơn 1.360.000 Heo Vàng được quyên góp thành công cho điểm trường. Ngay sau khi quyên góp thành công, tất cả số Heo Vàng trên đã được quy đổi thành 170.000.000đ gửi tới Dự án Sức mạnh 2000 trực thuộc Trung tâm tình nguyện Quốc gia để phối hợp cùng địa phương thực hiện xây dựng 1 phòng học (42m2). Sau 1 khoảng thời gian khó khăn vì thời tiết không thuận lợi, điểm trường Mầm Non Bình Minh bản Kéo Bó, xã Chiềng Đông, huyện Yên Châu, tỉnh Sơn La đã hoàn thành. Thầy trò vui mừng khôn xiết khi được học tập trong lớp học mới, nâng cao chất lượng giáo dục cho các bé.',1),
(16, null, 
'', '<p>Ng&agrave;y 13/4/2022 vừa qua, thầy c&ocirc; điểm trường Phi&ecirc;ng Lằn, x&atilde; Nậm Ch&agrave;, huyện Nậm Nh&ugrave;n, tỉnh Lai Ch&acirc;u v&ocirc; c&ugrave;ng hạnh ph&uacute;c khi trường mới được ho&agrave;n th&agrave;nh. Từ một ng&ocirc;i trường lụp xụp, được lắp từ những tấm v&aacute;n gỗ cũ kĩ, m&aacute;i t&ocirc;n lộ nhiều khe hở, nứt vỡ, giờ đ&acirc;y, trường được kho&aacute;c l&ecirc;n một diện mạo v&ocirc; c&ugrave;ng mới. Một ng&ocirc;i trường vững ch&atilde;i, khang trang v&agrave; sạch đẹp đ&atilde; được x&acirc;y dựng l&ecirc;n, hỗ trợ việc giảng dạy của thầy c&ocirc; v&agrave; học tập của c&aacute;c em nhỏ.</p>
<div><br></div>
<div><br></div>
<div>
    <div>
        <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;C&ugrave;ng Stavian g&oacute;p Heo V&agrave;ng x&acirc;y dựng Điểm trường Phi&ecirc;ng Lằn - tỉnh Lai Ch&acirc;u</strong></p>
        <p><strong>Số Heo V&agrave;ng đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 1.600.450</p>
        <p><strong>Đơn vị triển khai:</strong><a href="https://momo.vn/song-tot/suc-manh-2000">&nbsp;Sức Mạnh 2000</a></p>
        <p><strong>Nh&agrave; t&agrave;i trợ:</strong> C&ocirc;ng ty Cổ phần Stavian H&oacute;a chất</p>
        <p><strong>Thời gian g&acirc;y quỹ:</strong> 26/01/2022</p>',1),
(17, null, 
'', 'Xã Nậm Chà - huyện Nậm Nhùn - tỉnh Lai Châu là một xã nhỏ nằm giữa những bạt ngàn núi đồi của miền Tây Bắc tổ quốc. Điều kiện kinh tế và sinh hoạt của xã còn nhiều khó khăn, đường đi lại xa xôi và nhiều hạn chế, người dân còn nghèo và lạc hậu. Điểm trường Phiêng Lằn nằm cách trung tâm xã đến 18km, gây ra nhiều trở ngại và bất tiện khi di chuyển. Dù vậy, điểm trường hiện nay đã có 29 học sinh độ tuổi 5 – 6 tuổi, và 01 lớp học xóa mù chữ buổi tối có 16 học sinh. Trải qua nhiều năm xây dựng, 2 phòng học duy nhất của điểm trường giờ đây đã xuống cấp trầm trọng. Phòng học mới chỉ được xây tạm, xung quanh là thưng gỗ, nền đất, mái tôn giờ đây đã để lộ nhiều khe hở, nứt vỡ. Không chỉ xuống cấp, điểm trường còn thiếu thốn nhiều cơ sở vật chất tối thiểu phục vụ sinh hoạt như: nhà vệ sinh, bếp ăn và bể nước. Những trở ngại ấy gây nên nhiều bất tiện, thiệt thòi và cực nhọc cho không chỉ trẻ nhỏ mà cả các thầy cô giáo nơi đây.',1),
(18, null, 
'', '<p>Ng&agrave;y 13/4/2022 vừa qua, thầy c&ocirc; điểm trường Phi&ecirc;ng Lằn, x&atilde; Nậm Ch&agrave;, huyện Nậm Nh&ugrave;n, tỉnh Lai Ch&acirc;u v&ocirc; c&ugrave;ng hạnh ph&uacute;c khi trường mới được ho&agrave;n th&agrave;nh. Từ một ng&ocirc;i trường lụp xụp, được lắp từ những tấm v&aacute;n gỗ cũ kĩ, m&aacute;i t&ocirc;n lộ nhiều khe hở, nứt vỡ, giờ đ&acirc;y, trường được kho&aacute;c l&ecirc;n một diện mạo v&ocirc; c&ugrave;ng mới. Một ng&ocirc;i trường vững ch&atilde;i, khang trang v&agrave; sạch đẹp đ&atilde; được x&acirc;y dựng l&ecirc;n, hỗ trợ việc giảng dạy của thầy c&ocirc; v&agrave; học tập của c&aacute;c em nhỏ.</p>
<p>Nhờ c&aacute;c b&aacute;c chủ trại, c&aacute;c mạnh thường qu&acirc;n đ&atilde; t&iacute;ch cực quy&ecirc;n g&oacute;p v&agrave; th&agrave;nh quả đ&atilde; quy&ecirc;n g&oacute;p th&agrave;nh c&ocirc;ng 1.600.000 Heo V&agrave;ng tại mục Heo Đất cho điểm trường. Sau khi ho&agrave;n th&agrave;nh số Heo V&agrave;ng được nh&agrave; t&agrave;i trợ quy đổi th&agrave;nh 320.000.000VND tiến h&agrave;nh x&acirc;y 2 ph&ograve;ng học, 1 ph&ograve;ng c&ocirc;ng vụ, 1 bể nước, 1 bếp ăn, 1 nh&agrave; vệ sinh, 1 nh&agrave; tắm cho c&aacute;c em v&agrave; thầy c&ocirc; cắm bản.C&aacute;c em vui mừng, h&aacute;o hức đ&oacute;n trường lớp mới.</p>',1),
(19, null, 
'', '<p>Trải qua 15 năm d&atilde;i nắng, dầm mưa, lớp học tạm của c&aacute;c em nhỏ ở điểm Huổi Co (S&ocirc;ng M&atilde;, Sơn La) cũng đ&atilde; bị mối mọt, những tấm gỗ gh&eacute;p đ&atilde; xuống cấp trầm trọng, kh&ocirc;ng c&ograve;n đảm bảo an to&agrave;n cho c&aacute;c em. Chưa kể m&ugrave;a đ&ocirc;ng, mưa lạnh gi&oacute; l&ugrave;a, ph&ograve;ng học bị dột hắt, việc học lại c&agrave;ng trở n&ecirc;n kh&oacute; khăn hơn. Nay lớp học mới được ho&agrave;n th&agrave;nh, chắc hẳn l&agrave; m&oacute;n qu&agrave; v&ocirc; c&ugrave;ng thiết thực v&agrave; hạnh ph&uacute;c đối với c&ocirc; tr&ograve; nơi đ&acirc;y</p>
<div><br></div>
<div><br></div>
<div>
    <div>
        <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;C&ugrave;ng Anh Chị Nu&ocirc;i Dự &aacute;n Nu&ocirc;i Em g&oacute;p Heo V&agrave;ng dựng lại điểm trường Huổi Co đ&atilde; mục n&aacute;t kh&ocirc;ng thể sử dụng tại tỉnh Sơn La</strong></p>
        <p><strong>Số Heo V&agrave;ng đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 800.299</p>
        <p><strong>Đơn vị triển khai:&nbsp;</strong>Nu&ocirc;i Em</p>
        <p><strong>Thời gian g&acirc;y quỹ:</strong> 27/02/2022</p>',1),
(20, null, 
'', 'Bản Huổi Co thuộc xã Mường Cai, huyện Sông Mã, tỉnh Sơn La là nơi cư trú của 78 hộ dân với 346 nhân khẩu, trong đó có hơn 46% hộ nghèo. Dù còn nhiều khó khăn họ cần cù, chịu thương, chịu khó, cố gắng gom góp cho con em họ được đến trường. Điểm trường Mầm non Huổi Co cách trung tâm xã 5km trong đó có 03km đường dân sinh. Điểm trường hiện đã có 1 lớp học kiên cố và 01 lớp với 23 học sinh ghép 03 độ tuổi chưa có phòng học, phải học nhờ nhà văn hóa có tuổi đời trên 15 năm. Trải qua 15 năm dãi nắng, dầm mưa, nhà văn hóa hay hiện là lớp học tạm của các em cũng đã bị mối mọt, những tấm gỗ ghép đã xuống cấp trầm trọng, không còn đảm bảo an toàn cho các em. Chưa kể mùa đông, mưa lạnh gió lùa, phòng học bị dột hắt, việc học lại càng trở nên khó khăn hơn.',1),
(21, null, 
'', 'Và nhờ có sự giúp đỡ tận tình của các chủ trại Heo Đất, số tiền 240 triệu đồng được quy đổi từ số Heo Vàng quyên góp, đã được Nuôi Em mang đi xây 01 phòng học, 01 phòng công vụ và 01 nhà vệ sinh cho trẻ nhỏ được học tập trong môi trường mới, đủ đầy và khang trang. Nay lớp học mới được hoàn thành, chắc hẳn là món quà vô cùng thiết thực và hạnh phúc đối với cô trò nơi đây.',1),
(22, null, 
'', '<p>Vừa qua, thầy c&ocirc; v&agrave; c&aacute;c em nhỏ tại điểm trường bản Cương Ch&iacute;nh, huyện S&ocirc;ng M&atilde;, tỉnh Sơn La v&ocirc; c&ugrave;ng hạnh ph&uacute;c khi ng&ocirc;i trường mới được ho&agrave;n th&agrave;nh. C&aacute;c em nhỏ ch&iacute;nh thức được v&agrave;o học từ ng&agrave;y 12/4/2022, lớp học khang trang, sạch đẹp, vững v&agrave;ng, b&ecirc;n cạnh đ&oacute; cũng được trang tr&iacute; th&ecirc;m phần xinh tươi để đ&oacute;n c&aacute;c em v&agrave;o học.</p>
<div>
    <div>
        <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;C&ugrave;ng Sức mạnh 2000 chung tay g&oacute;p Heo v&agrave;ng x&acirc;y mới điểm trường Mầm non đang xuống cấp bản Cương Ch&iacute;nh - tỉnh Sơn La</strong></p>
        <p><strong>Số Heo V&agrave;ng đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 680.242</p>
        <p><strong>Đơn vị triển khai:</strong><a href="https://momo.vn/song-tot/suc-manh-2000">&nbsp;Sức Mạnh 2000</a></p>
        <p><strong>Thời gian g&acirc;y quỹ:</strong> 24/03/2022</p>',1),
(23, null, 
'', '<p>Điểm trường Mầm non bản Cương Ch&iacute;nh, x&atilde; Mường Hung, tỉnh Sơn La, c&aacute;ch trung t&acirc;m x&atilde; 07 c&acirc;y số đường d&acirc;n sinh. Cả trường chỉ c&oacute; 01 lớp học gh&eacute;p từ 3 &ndash; 5 tuổi, với 29 em nhỏ. Sau hơn 20 năm x&acirc;y dựng, đến nay điểm trường duy nhất của bản cũng bị hư hại trầm trọng. V&aacute;ch tường v&agrave; nền lớp học đều l&agrave; b&ecirc; t&ocirc;ng th&ocirc; xuống cấp, tiềm ẩn nhiều nguy hiểm cho c&aacute;c b&eacute;. C&aacute;c cột gỗ chống nh&agrave; c&ugrave;ng phần m&aacute;i đ&atilde; xuất hiện nhiều vết nứt vỡ, x&ocirc; lệch v&agrave; xi&ecirc;u vẹo.&nbsp;</p>
<p>Nhờ l&ograve;ng nh&acirc;n &aacute;i của cộng đồng chủ trại đ&atilde; chăm chỉ nu&ocirc;i Heo, thực hiện sống tốt t&iacute;ch cực quy&ecirc;n g&oacute;p v&agrave; th&agrave;nh quả đ&atilde; quy&ecirc;n g&oacute;p th&agrave;nh c&ocirc;ng 680.000 Heo V&agrave;ng cho điểm trường. Ngay sau đ&oacute; số Heo V&agrave;ng được nh&agrave; t&agrave;i trợ ẩn danh quy đổi th&agrave;nh 170.000.000VND, số tiền được gửi tới Dự &aacute;n Sức mạnh 2000 trực thuộc Trung t&acirc;m T&igrave;nh nguyện Quốc gia, phối hợp c&ugrave;ng đơn vị chịu tr&aacute;ch nhiệm ch&iacute;nh tại địa phương thực hiện theo đ&uacute;ng kế hoạch.</p>',1),
(24, null, 
'', '<p>Vừa qua, thầy c&ocirc; v&agrave; c&aacute;c em nhỏ tại điểm trường bản Cương Ch&iacute;nh, huyện S&ocirc;ng M&atilde;, tỉnh Sơn La v&ocirc; c&ugrave;ng hạnh ph&uacute;c khi ng&ocirc;i trường mới được ho&agrave;n th&agrave;nh. C&aacute;c em nhỏ ch&iacute;nh thức được v&agrave;o học từ ng&agrave;y 12/4/2022. Lớp học khang trang, sạch đẹp, vững v&agrave;ng, b&ecirc;n cạnh đ&oacute; cũng được trang tr&iacute; th&ecirc;m phần xinh tươi để đ&oacute;n c&aacute;c em v&agrave;o học.&nbsp;</p>',1),
(25, null, 
'', '<p>Tổng số 4 triệu Heo V&agrave;ng được c&aacute;c chủ trại ủng hộ đ&atilde; được nh&agrave; t&agrave;i trợ quy đổi tương đương 240 triệu VND. Số tiền n&agrave;y được Dự &aacute;n Sức mạnh 2000, Dự &aacute;n Nu&ocirc;i em, Đo&agrave;n Thanh ni&ecirc;n c&aacute;c học viện v&agrave; Trường C&ocirc;ng an Nh&acirc;n d&acirc;n khu vực ph&iacute;a Bắc triển khai x&acirc;y dựng 01 ph&ograve;ng học ki&ecirc;n cố v&agrave; 01 ph&ograve;ng c&ocirc;ng vụ cho c&ocirc; gi&aacute;o ở lại bản chăm s&oacute;c trẻ.</p>
<div>
    <div>
        <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;Chung tay c&ugrave;ng Anh Chị Nu&ocirc;i Dự &aacute;n Nu&ocirc;i Em g&oacute;p Heo v&agrave;ng x&acirc;y dựng ph&ograve;ng học mới tặng trẻ mầm non điểm trường Huổi D&ecirc;n - tỉnh Điện Bi&ecirc;n</strong></p>
        <p><strong>Số Heo V&agrave;ng đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 4.000.680</p>
        <p><strong>Đơn vị triển khai:</strong> Nu&ocirc;i Em v&agrave; Đo&agrave;n Thanh ni&ecirc;n Trường CAND</p>
        <p><strong>Thời gian g&acirc;y quỹ:</strong> 28/04/2022</p>',1),
(26, null, 
'', '<p>Bao năm trường thiếu lớp, c&aacute;c em phải học tạm trong lớp học tạm bằng gỗ v&aacute;n gh&eacute;p, m&aacute;i t&ocirc;n cũ, xuống cấp nghi&ecirc;m trọng, nay c&aacute;c em ở điểm trường Bản Huổi Dền &ndash; x&atilde; P&uacute; Hồng - huyện Điện Bi&ecirc;n Đ&ocirc;ng &ndash; tỉnh Điện Bi&ecirc;n đ&atilde; c&oacute; lớp học mới khang trang, sạch đẹp, c&ocirc; v&agrave; c&aacute;c em nhỏ sẽ kh&ocirc;ng c&ograve;n phải học trong cảnh chật hẹp, n&oacute;ng nực nữa.</p>
<p>Tổng số 4 triệu Heo V&agrave;ng được c&aacute;c chủ trại ủng hộ đ&atilde; được nh&agrave; t&agrave;i trợ quy đổi tương đương 240 triệu VND. Số tiền n&agrave;y được Dự &aacute;n Sức mạnh 2000, Dự &aacute;n Nu&ocirc;i em, Đo&agrave;n Thanh ni&ecirc;n c&aacute;c học viện v&agrave; Trường C&ocirc;ng an Nh&acirc;n d&acirc;n khu vực ph&iacute;a Bắc triển khai x&acirc;y dựng 01 ph&ograve;ng học ki&ecirc;n cố v&agrave; 01 ph&ograve;ng c&ocirc;ng vụ cho c&ocirc; gi&aacute;o ở lại bản chăm s&oacute;c trẻ.</p>',1),
(27, null, 
'', '<p>Xin cảm ơn tấm l&ograve;ng hỗ trợ của cộng đồng MoMo đ&atilde; kịp thời mang đến lớp học vững ch&atilde;i trước m&ugrave;a mưa b&atilde;o, động vi&ecirc;n tinh thần học tập cho c&aacute;c em nhỏ rất nhiều.&nbsp;</p>',1),
(28, null, 
'', '<p>Nhờ c&oacute; sự gi&uacute;p sức của c&aacute;c mạnh thường qu&acirc;n th&ocirc;ng qua k&ecirc;nh quy&ecirc;n g&oacute;p MoMo v&agrave;o chiến dịch g&acirc;y quỹ th&aacute;ng 5/2022 cũng như chương tr&igrave;nh Nhịp tim Việt Nam, 8 em nhỏ bệnh tim bẩm sinh đ&atilde; được thời thực hiện phẫu thuật kịp thời v&agrave;o th&aacute;ng 7 vừa qua.</p>
<div>
    <div>
        <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;Mang Tết thiếu nhi trọn vẹn đến với 08 trẻ em mắc bệnh tim bẩm sinh</strong></p>
        <p><strong>Số tiền mặt đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:&nbsp;</strong>223.843.836đ</p>
        <p><strong>Đơn vị triển khai:&nbsp;</strong><a href="https://momo.vn/song-tot/the-vinacapital-foundation-vcf">VinaCapital Foundation</a></p>
        <p><strong>Thời gian g&acirc;y quỹ:</strong> 22/05/2022</p>
        <p><strong>C&acirc;u chuyện của T&iacute;n - cậu b&eacute; mắc bệnh tim bẩm sinh</strong></p>',1),
(29, null,  
'', '<p>V&agrave;o m&#7897;t ng&agrave;y h&egrave; th&aacute;ng 6 n&#259;m 2022, T&iacute;n &#273;&#7897;t ng&#7897;t b&#7883; ng&#7845;t x&#7881;u, gia &#273;&igrave;nh &#273;&atilde; &#273;&#432;a em &#273;&#7871;n B&#7879;nh vi&#7879;n S&#7843;n Nhi Qu&#7843;ng Ng&atilde;i c&#7845;p c&#7913;u, ngay sau &#273;&oacute;, em &#273;&#432;&#7907;c ch&#7881; &#273;&#7883;nh chuy&#7875;n v&agrave;o B&#7879;nh vi&#7879;n Nhi &#273;&#7891;ng 1 t&#7841;i Th&agrave;nh ph&#7889; H&#7891; Ch&iacute; Minh &#273;&#7875; kh&aacute;m chuy&ecirc;n s&acirc;u h&#417;n. Khi &#273;&#7871;n B&#7879;nh vi&#7879;n Nhi &#273;&#7891;ng 1, gia &#273;&igrave;nh &#273;&atilde; r&#7845;t suy s&#7909;p khi b&aacute;c s&#297; b&aacute;o em ph&#7843;i &#273;&#7863;t m&aacute;y t&#7841;o nh&#7883;p tim v&#7899;i ch&#7849;n &#273;o&aacute;n nh&#7883;p tim b&#7845;t th&#432;&#7901;ng, chi ph&iacute; l&ecirc;n &#273;&#7871;n h&agrave;ng tr&#259;m tri&#7879;u &#273;&#7891;ng. D&ugrave; r&#7845;t th&#432;&#417;ng con nh&#432;ng ba m&#7865; T&iacute;n kh&ocirc;ng bi&#7871;t l&agrave;m c&aacute;ch n&agrave;o &#273;&#7875; c&oacute; th&#7875; xoay s&#7903; m&#7897;t s&#7889; ti&#7873;n l&#7899;n nh&#432; v&#7853;y. N&eacute;n &#273;au bu&#7891;n, m&#7865; &#273;&agrave;nh xin cho em &#273;i v&#7873; m&agrave; kh&ocirc;ng ph&#7851;u thu&#7853;t. C&#7847;m c&#7921; v&#7899;i toa thu&#7889;c &#273;&#432;&#7907;c b&aacute;c s&#297; k&ecirc;, &#273;&#7871;n cu&#7889;i th&aacute;ng 7/2022, s&#7913;c kh&#7887;e c&#7911;a em suy gi&#7843;m nghi&ecirc;m tr&#7885;ng v&agrave; &#273;&#432;&#7907;c chuy&#7875;n c&#7845;p c&#7913;u t&#7841;i B&#7879;nh vi&#7879;n Trung &#431;&#417;ng Hu&#7871;. V&#7899;i h&#7891; s&#417; b&#7879;nh &aacute;n tr&#432;&#7899;c &#273;&acirc;y, T&iacute;n &#273;&atilde; &#273;&#432;&#7907;c ch&#7881; &#273;&#7883;nh ph&#7843;i ph&#7851;u thu&#7853;t &#273;&#7863;t m&aacute;y t&#7841;o nh&#7883;p tim g&#7845;p, n&#7871;u kh&ocirc;ng s&#7869; r&#7845;t nguy hi&#7875;m &#273;&#7871;n t&iacute;nh m&#7841;ng c&#7911;a em. Chi ph&iacute; d&#7921; ki&#7871;n &#273;&#7875; &#273;&#7863;t m&aacute;y t&#7841;o nh&#7883;p tim t&#7841;i B&#7879;nh vi&#7879;n Trung &#431;&#417;ng Hu&#7871; l&agrave; 60.000.000 &#273;&#7891;ng sau khi &#273;&atilde; tr&#7915; &#273;i ph&#7847;n &#273;&#432;&#7907;c b&#7843;o hi&#7875;m y t&#7871; chi tr&#7843;.</p>

<p>Th&ocirc;ng qua ph&ograve;ng c&ocirc;ng t&aacute;c x&atilde; h&#7897;i B&#7879;nh vi&#7879;n Trung &#431;&#417;ng Hu&#7871; v&agrave; ch&iacute;nh quy&#7873;n &#273;&#7883;a ph&#432;&#417;ng t&#7881;nh Qu&#7843;ng Ng&atilde;i &ndash; n&#417;i gia &#273;&igrave;nh em &#273;ang sinh s&#7889;ng, Nh&#7883;p Tim Vi&#7879;t Nam &#273;&atilde; bi&#7871;t &#273;&#7871;n tr&#432;&#7901;ng h&#7907;p c&#7911;a gia &#273;&igrave;nh Trung T&iacute;n. H&#7897; gia &#273;&igrave;nh 5 nh&acirc;n kh&#7849;u &#273;&#432;&#7907;c &#273;&#7883;a ph&#432;&#417;ng x&aacute;c nh&#7853;n thu&#7897;c di&#7879;n kh&oacute; kh&#259;n: b&agrave; ngo&#7841;i em nay &#273;&atilde; l&#7899;n tu&#7893;i kh&ocirc;ng th&#7875; lao &#273;&#7897;ng; ba c&#7911;a T&iacute;n b&#7883; b&#7879;nh ti&#7875;u &#273;&#432;&#7901;ng, s&#7913;c kh&#7887;e gi&#7843;m s&uacute;t n&ecirc;n m&#7885;i g&aacute;nh n&#7863;ng cu&#7897;c s&#7889;ng &#273;&#7893; d&#7891;n l&ecirc;n &#273;&ocirc;i vai c&#7911;a m&#7865; em. T&#7915; l&agrave;m n&ocirc;ng, tr&#7891;ng l&uacute;a, ph&#7909; b&aacute;n qu&aacute;n &#259;n, m&#7865; em &#273;&#7873;u c&oacute; th&#7875; l&agrave;m &#273;&#7875; &#273;&#7911; trang tr&#7843;i mi&#7871;ng c&#417;m, manh &aacute;o v&agrave; h&#7885;c ph&iacute; cho T&iacute;n v&agrave; em trai c&#7911;a T&iacute;n. Hai anh em &#273;&#7873;u ngoan ngo&atilde;n, ch&#259;m lo h&#7885;c h&agrave;nh, &#273;&oacute; l&agrave; &#273;&#7897;ng l&#7921;c to l&#7899;n nh&#7845;t c&#7911;a ba m&#7865; em.</p>

<p>Nh&#7901; c&oacute; s&#7921; gi&uacute;p s&#7913;c c&#7911;a c&aacute;c m&#7841;nh th&#432;&#7901;ng qu&acirc;n th&ocirc;ng qua k&ecirc;nh quy&ecirc;n g&oacute;p MoMo v&agrave;o chi&#7871;n d&#7883;ch g&acirc;y qu&#7929; th&aacute;ng 5/2022 c&#361;ng nh&#432; ch&#432;&#417;ng tr&igrave;nh Nh&#7883;p tim Vi&#7879;t Nam, T&iacute;n &#273;&atilde; &#273;&#432;&#7907;c th&#7901;i th&#7921;c hi&#7879;n ph&#7851;u thu&#7853;t k&#7883;p th&#7901;i v&agrave;o ng&agrave;y 21/7. &#272;&#7871;n ng&agrave;y 27/7, em &#273;&atilde; &#273;&#432;&#7907;c xu&#7845;t vi&#7879;n. H&#7853;u ph&#7851;u thu&#7853;t, s&#7913;c kh&#7887;e T&iacute;n &#273;&atilde; &#7893;n &#273;&#7883;nh h&#417;n nhi&#7873;u. Mong r&#7857;ng s&#7913;c kh&#7887;e em s&#7869; &#7893;n &#273;&#7883;nh &#273;&#7875; c&oacute; th&#7875; ti&#7871;p t&#7909;c th&#7921;c hi&#7879;n &#432;&#7899;c m&#417; ph&#7909; gi&uacute;p ba m&#7865; c&#7911;a m&igrave;nh.</p>',1),
(30, null, 
'', '<p>T&iacute;n l&agrave; m&#7897;t trong t&aacute;m em b&eacute; v&#7915;a tr&#7843;i qua cu&#7897;c ph&#7851;u thu&#7853;t tim &#273;&#432;&#7907;c c&#7897;ng &#273;&#7891;ng MoMo h&#7895; tr&#7907;. Nh&#432; &#273;&atilde; th&ocirc;ng tin t&#7899;i c&ocirc;ng &#273;&#7891;ng MoMo t&#7915; th&aacute;ng 6/2022, v&#7899;i s&#7921; g&oacute;p s&#7913;c c&#7911;a c&#7897;ng &#273;&#7891;ng MoMo, s&#7889; ti&#7873;n g&acirc;y qu&#7929; 224.000.000 VN&#272; th&ocirc;ng qua Tr&aacute;i Tim MoMo cho chi&#7871;n d&#7883;ch &quot;Mang T&#7871;t thi&#7871;u nhi tr&#7885;n v&#7865;n &#273;&#7871;n v&#7899;i tr&#7867; em m&#7855;c b&#7879;nh tim b&#7849;m sinh&quot; &#273;&atilde; &#273;&#432;&#7907;c s&#7917; d&#7909;ng &#273;&#7875; h&#7895; tr&#7907; chi phi&#769; ph&acirc;&#771;u thu&acirc;&#803;t th&agrave;nh c&ocirc;ng cho 8 tre&#777; em nghe&#768;o m&#259;&#769;c b&ecirc;&#803;nh tim b&acirc;&#777;m sinh t&#7841;i c&aacute;c t&#7881;nh H&#432;ng Y&ecirc;n, Th&aacute;i Nguy&ecirc;n, Ph&uacute; Th&#7885;, L&#7841;ng S&#417;n, B&#7855;c K&#7841;n, Qu&#7843;ng Ng&atilde;i v&agrave; C&agrave; Mau trong th&aacute;ng 6,7 v&agrave; 8/2022.</p>

<p>M&#7897;t l&#7847;n n&#7919;a, Heo &#272;&#7845;t MoMo c&ugrave;ng VinaCapital Foundation xin g&#7917;i l&#7901;i c&#7843;m &#417;n ch&acirc;n th&agrave;nh t&#7899;i c&#7897;ng &#273;&#7891;ng ng&#432;&#7901;i s&#7917; d&#7909;ng &#273;&atilde; &#273;&#7891;ng h&agrave;nh c&ugrave;ng chi&#7871;n d&#7883;ch. Mong r&#7857;ng h&igrave;nh &#7843;nh c&aacute;c em nh&#7887; c&ugrave;ng v&#7899;i tr&aacute;i tim m&#7899;i kh&#7887;e m&#7841;nh &#273;&#432;&#7907;c c&#7913;u s&#7889;ng nh&#7901; quy&ecirc;n g&oacute;p c&#7911;a c&aacute;c nh&agrave; h&#7843;o t&acirc;m MoMo c&oacute; th&#7875; lan t&#7887;a nh&#7919;ng n&#259;ng l&#432;&#7907;ng t&iacute;ch c&#7921;c t&#7899;i m&#7885;i ng&#432;&#7901;i.</p>',1),

(31, null, 
'', '<p>Thương cho b&agrave; con v&agrave; c&aacute;c em học sinh ngh&egrave;o tại huyện Vĩnh Lợi, tỉnh Bạc Li&ecirc;u, vừa qua MoMo đ&atilde; c&ugrave;ng Trung t&acirc;m Tương Lai g&acirc;y quỹ th&agrave;nh c&ocirc;ng 30 triệu đồng cho chương tr&igrave;nh trao học bổng v&agrave; tập huấn kỹ năng ph&ograve;ng chống x&acirc;m hại, bạo lực cho học sinh tại huyện. Mong rằng với những suất học bổng động vi&ecirc;n n&agrave;y sẽ gi&uacute;p phần n&agrave;o c&aacute;c em c&oacute; th&ecirc;m &yacute; ch&iacute; học tập, để trở th&agrave;nh người c&oacute; &iacute;ch cho cộng đồng.</p>
<div>
    <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;Chung tay tặng học bổng v&agrave; tập huấn kỹ năng ph&ograve;ng chống x&acirc;m hại, bạo lực cho học sinh kh&oacute; khăn tại huyện Vĩnh Lợi, tỉnh Bạc Li&ecirc;u</strong></p>
    <p><strong>Số tiền mặt đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 30.008.115đ</p>
    <p><strong>Đơn vị triển khai:</strong><a href="https://momo.vn/song-tot/trung-tam-tuong-lai">&nbsp;Trung t&acirc;m Tương Lai</a></p>
    <p><strong>Thời gian g&acirc;y quỹ:</strong> 10/08/2022</p>
    <p><strong>Địa điểm hỗ trợ:</strong> Bạc Li&ecirc;u</p>',1),
(32, null, 
'', '<p>Huyện Vĩnh Lợi là một huyện nghèo vùng sâu, vùng xa thuộc tỉnh Bạc Liêu. Người dân ở đây chủ yếu làm nông nghiệp, làm thuê tại chỗ và di chuyển đến một số địa phương ngoài tỉnh. Tình hình phát triển kinh tế xã hội của Huyện còn nhiều khó khăn. Đa phần người dân mưu sinh kiếm sống bằng nghề làm nông nghiệp cho nên đời sống bấp bênh tùy kết quả thu hoạch của từng mùa vụ. Trong thời gian vừa qua tình hình dịch Covid19 diễn biến phức tạp đã ảnh hưởng rất lớn đến công ăn việc làm và đời sống của người dân, đặc biệt đối với trẻ em vùng sâu vùng xa của huyện điều kiện đến trường cũng gặp rất nhiều khó khăn do phụ thuộc vào kinh tế từ gia đình. Hơn lúc nào hết, các em rất cần nhận được sự quan tâm, tiếp sức từ cộng đồng để có thêm cơ hội và nghị lực bước tiếp những chặng đường tương lai phía trước.</p>',1),
(33, null, 
'', '<p>Thương cho bà con và các em học sinh nơi đây, vừa qua MoMo đã cùng Trung tâm Tương Lai gây quỹ thành công 30 triệu đồng cho chương trình trao học bổng và tập huấn kỹ năng phòng chống xâm hại, bạo lực cho học sinh tại huyện Vĩnh Lợi, tỉnh Bạc Liêu. Mong rằng với những suất học bổng động viên này sẽ giúp phần nào các em có thêm ý chí học tập, để trở thành người có ích cho cộng đồng.</p>',1),

(34, null, 
'', '<p>Đại diện Trung t&acirc;m Tương Lai đ&atilde; c&oacute; dịp gh&eacute; thăm trường v&agrave; trao học bổng cho 15 em học sinh, cũng như tổ chức tập huấn kỹ năng ph&ograve;ng chống x&acirc;m hại, bạo lực cho học sinh v&agrave; cộng t&aacute;c vi&ecirc;n bảo vệ trẻ em tại trường THCS Thới Thuận, tỉnh Bến Tre.</p>
<div>
    <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;Chung tay trao học bổng học sinh kh&oacute; khăn v&agrave; truyền th&ocirc;ng kỹ năng ph&ograve;ng chống x&acirc;m hại, bạo lực tại trường THCS Thới Thuận, tỉnh Bến Tre</strong></p>
    <p><strong>Số tiền mặt đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 29.945.692đ</p>
    <p><strong>Đơn vị triển khai:</strong><a href="https://momo.vn/song-tot/trung-tam-tuong-lai">&nbsp;Trung t&acirc;m Tương Lai</a></p>
    <p><strong>Thời gian g&acirc;y quỹ:</strong> 21/07/2022</p>
    <p><strong>Địa điểm hỗ trợ:</strong> Bến Tre</p>',1),
(35, null, 
'', '<p>Trường THCS Thới Thuận nằm ở x&atilde; bi&ecirc;n giới v&ugrave;ng biển Thới Thuận thuộc huyện B&igrave;nh Đại, tỉnh Bến Tre. Người d&acirc;n nơi đ&acirc;y chủ yếu sinh sống bằng nghề nu&ocirc;i trồng thủy sản v&agrave; trồng hoa m&agrave;u tr&ecirc;n đất giồng c&aacute;t ven biển. Cuộc sống của họ vẫn c&ograve;n gặp nhiều kh&oacute; khăn, kinh tế gia đ&igrave;nh dựa v&agrave;o lao động tự do, khai th&aacute;c từ thi&ecirc;n nhi&ecirc;n l&agrave; ch&iacute;nh.&nbsp;</p>
<p>Trong năm học 2022 - 2023, c&oacute; 52 em c&oacute; ho&agrave;n cảnh kh&oacute; khăn, hộ ngh&egrave;o, cận ngh&egrave;o đang theo học tại trường THCS Thới Thuận. Như c&acirc;u chuyện của em Nguyễn Ngọc Qu&iacute; đang học lớp 8/2 l&agrave; con trai &uacute;t của anh Nguyễn Văn Th&agrave;nh v&agrave; chị Phạm Thị B&eacute;. Gia đ&igrave;nh c&oacute; ho&agrave;n cảnh kh&oacute; khăn, nh&agrave; kh&ocirc;ng c&oacute; đất đai canh t&aacute;c, thu nhập bấp b&ecirc;nh. Anh đi l&agrave;m phụ hồ nhưng c&ocirc;ng việc kh&ocirc;ng ổn định. Chị đi mua c&aacute; b&aacute;n lại h&agrave;ng ng&agrave;y để kiếm sống. Trong năm học 2021-2022, em Qu&iacute; lu&ocirc;n cố gắng, phấn đấu trong học tập, đạt danh hiệu học sinh giỏi.</p>',1),
(36, null, 
'', '<p>Với tinh thần tương th&acirc;n tương &aacute;i của người Việt Nam, Trung t&acirc;m Gi&aacute;o dục Sức khỏe v&agrave; Ph&aacute;t triển Cộng đồng Tương Lai &ndash; TP.HCM phối hợp c&ugrave;ng MoMo th&agrave;nh c&ocirc;ng g&acirc;y quỹ 30.000.000 đồng cho chương tr&igrave;nh trao học bổng v&agrave; tập huấn kỹ năng ph&ograve;ng chống x&acirc;m hại, bạo lực cho học sinh v&agrave; cộng t&aacute;c vi&ecirc;n bảo vệ trẻ em tại trường THCS Thới Thuận, tỉnh Bến Tre. Ch&uacute;ng t&ocirc;i đ&atilde; c&oacute; dịp gh&eacute; thăm trường v&agrave; trao học bổng cho 15 em học sinh, cũng như tổ chức tập huấn kỹ năng ph&ograve;ng chống x&acirc;m hại, bạo lực cho học sinh v&agrave; cộng t&aacute;c vi&ecirc;n bảo vệ trẻ em tại trường.</p>
<p>Ch&acirc;n th&agrave;nh cảm ơn tấm l&ograve;ng nh&acirc;n &aacute;i của c&aacute;c nh&agrave; hảo t&acirc;m sử dụng MoMo đ&atilde; ủng hộ quy&ecirc;n g&oacute;p, gi&uacute;p chương tr&igrave;nh diễn ra th&agrave;nh c&ocirc;ng.</p>',1),
(37, null, 
'', '<p>To&agrave;n bộ số tiền ủng hộ của cộng đồng MoMo đợt n&agrave;y đ&atilde; được trao cho 15 trẻ em c&oacute; ho&agrave;n cảnh đặc biệt tại trường THCS &Ocirc;ng &Iacute;ch Đường (Đ&agrave; Nẵng). Hy vọng với học bổng n&agrave;y sẽ gi&uacute;p c&aacute;c em phần n&agrave;o vượt qua được giai đoạn kh&oacute; khăn n&agrave;y, tiếp tục nu&ocirc;i lớn ước mơ con chữ, học tập th&agrave;nh t&agrave;i.</p>
<div>
    <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;C&ugrave;ng Trung t&acirc;m Tương Lai tặng học bổng v&agrave; truyền th&ocirc;ng kỹ năng ph&ograve;ng chống x&acirc;m hại, bạo lực cho học sinh trường THCS &Ocirc;ng &Iacute;ch Đường, TP Đ&agrave; Nẵng</strong></p>
    <p><strong>Số tiền mặt đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 30.001.010đ</p>
    <p><strong>Đơn vị triển khai:</strong><a href="https://momo.vn/song-tot/trung-tam-tuong-lai">&nbsp;Trung t&acirc;m Tương Lai</a></p>
    <p><strong>Thời gian g&acirc;y quỹ:</strong> 11/05/2022</p>
    <p><strong>Địa điểm hỗ trợ:</strong> Đ&agrave; Nẵng</p>',1),
(38, null, 
'', 'Trong thời qua, cơn đại dịch Covid đã càn quét 4 đợt liên tục tại các tỉnh thành trong cả nước. Trong đó TP Đà Nẵng cũng bị ảnh hưởng nặng nề với 97.320 ca tính tới ngày 30/4/2022. Theo số liệu báo cáo của bà Nguyễn Lê Giang phó chủ tịch Hội đồng đội huyện Hòa Vang thì huyện nhà cũng có hơn 1.000 ca nhiễm trong đó có rất nhiều đối tượng là trẻ em. Xã Hòa Phú, huyện Hoà Vang, TP Đà Nẵng là một xã miền núi, cư dân thuần nông, số ít buôn bán nhỏ lẻ. Hầu hết người dân sinh sống nơi đây chủ yếu là đi kinh tế mới, nên nhiều gia đình chủ yếu là làm nông, làm thuê, nhà cửa tạm bợ heo hút, thu nhập thấp lại cách xa trung tâm thành phố. Ngoài ra nhiều gia đình cũng đi làm tại các khu du lịch, nhưng hai năm vừa qua do ảnh hưởng bởi dịch bệnh nên các khu du lịch đóng cửa. Vậy nên nhiều gia đình rơi vào hoàn cảnh thực sự khó khăn, điều đó khiến chăm lo điều kiện học hành cho con cái gặp nhiều trở ngại.',1),
(39, null, 
'', '<p>Vậy n&ecirc;n số lượng học sinh kh&oacute; khăn, hộ ngh&egrave;o, cận ngh&egrave;o đang theo học tại trường THCS &Ocirc;ng &Iacute;ch Đường rất nhiều. Tổng số học sinh kh&oacute; khăn: 85 học sinh như kh&oacute; khăn về kinh tế, phương tiện học tập v&agrave; phương tiện di chuyển. Số học sinh ngh&egrave;o v&agrave; cận ngh&egrave;o: 20 em.</p>
<p>Thấu hiểu t&igrave;nh cảnh đ&aacute;ng thương của c&aacute;c em, Trung t&acirc;m Tương Lai c&ugrave;ng cộng đồng l&agrave;m việc tốt MoMo đ&atilde; ra sức huy động được 30.000.000 đồng. To&agrave;n bộ số tiền ủng hộ n&agrave;y đ&atilde; được trao học bổng cho 15 trẻ em c&oacute; ho&agrave;n cảnh đặc biệt v&agrave; tổ chức buổi truyền th&ocirc;ng kỹ năng ph&ograve;ng chống x&acirc;m hại, bạo lực cho học sinh c&oacute; ho&agrave;n cảnh đặc biệt tại trường THCS &Ocirc;ng &Iacute;ch Đường. Hy vọng với học bổng n&agrave;y sẽ gi&uacute;p c&aacute;c em phần n&agrave;o vượt qua được giai đoạn kh&oacute; khăn n&agrave;y, tiếp tục nu&ocirc;i lớn ước mơ con chữ, học tập th&agrave;nh t&agrave;i.</p>',1),
(40, null, 
'', '<p>Với tinh thần tương th&acirc;n tương &aacute;i, Heo Đất MoMo phối hợp c&ugrave;ng Trung t&acirc;m Gi&aacute;o dục Sức khỏe v&agrave; Ph&aacute;t triển Cộng đồng Tương Lai &ndash; TP.HCM g&acirc;y quỹ th&agrave;nh c&ocirc;ng 30.000.000 đồng cho chương tr&igrave;nh trao học bổng cho 15 em học sinh ngh&egrave;o tại huyện T&acirc;n Hồng, tỉnh Đồng Th&aacute;p. B&ecirc;n cạnh đ&oacute;, Trung t&acirc;m Tương Lai c&ograve;n tiến h&agrave;nh tập huấn kỹ năng ph&ograve;ng chống x&acirc;m hại, bạo lực cho học sinh v&agrave; cộng t&aacute;c vi&ecirc;n bảo vệ trẻ em.</p>
<div>
    <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;Chung tay tặng học bổng v&agrave; tập huấn kỹ năng ph&ograve;ng chống x&acirc;m hại, bạo lực cho học sinh huyện T&acirc;n Hồng, tỉnh Đồng Th&aacute;p</strong></p>
    <p><strong>Số tiền mặt đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 29.773.600đ</p>
    <p><strong>Đơn vị triển khai:&nbsp;</strong><a href="https://momo.vn/song-tot/trung-tam-tuong-lai">Trung t&acirc;m Tương Lai</a></p>
    <p><strong>Thời gian g&acirc;y quỹ:</strong> 28/06/2022</p>
    <p><strong>Địa điểm hỗ trợ:</strong> Đồng Th&aacute;p</p>',1),
(41, null, 
'', 'Huyện Tân Hồng là một huyện vùng sâu, vùng xa gần biên giới Việt Nam – Campuchia của tỉnh Đồng Tháp. Tình hình kinh tế xã hội của huyện khó khăn. Đa phần người dân mưu sinh kiếm sống bằng nghề làm nông nên cuộc sống vô cùng khó khăn. Trong thời gian dịch Covid diễn biến phức tạp cũng ảnh hưởng rất lớn đến đời sống của người dân. Đặc biệt đối với trẻ em vùng sâu vùng xa của huyện biên giới thì điều kiện đến trường gặp nhiều khó khăn do phụ thuộc vào kinh tế từ gia đình. Hơn lúc nào hết, các em rất cần nhận được sự quan tâm, tiếp sức từ cộng đồng để có thêm cơ hội và nghị lực bước tiếp những chặng đường tương lai phía trước.',1),
(42, null, 
'', 'Với tinh thần tương thân tương ái, Heo Đất MoMo phối hợp cùng Trung tâm Giáo dục Sức khỏe và Phát triển Cộng đồng Tương Lai – TP.HCM gây quỹ thành công 30.000.000 đồng cho chương trình trao học bổng cho 15 em học sinh nghèo tại huyện Tân Hồng, tỉnh Đồng Tháp. Bên cạnh đó, Trung tâm Tương Lai còn tiến hành tập huấn kỹ năng phòng chống xâm hại, bạo lực cho học sinh và cộng tác viên bảo vệ trẻ em.',1),
(43, null, 
'', '<p>Vẫn c&ograve;n đ&oacute; những đứa trẻ ham học nhưng v&igrave; nghịch cảnh khiến việc học của c&aacute;c em chưa được đảm bảo. V&agrave; nhờ tấm l&ograve;ng của c&aacute;c nh&agrave; hảo t&acirc;m, cộng đồng l&agrave;m việc tốt Heo Đất MoMo đ&atilde; g&oacute;p những suất học bổng, gi&uacute;p c&aacute;c em c&oacute; th&ecirc;m sức mạnh để vượt qua nghịch cảnh, đ&acirc;y l&agrave; điều cực k&igrave; c&oacute; &yacute; nghĩa đối với c&aacute;c em.</p>
<div>
    <p><strong>Ho&agrave;n th&agrave;nh dự &aacute;n:&nbsp;Kết nối ước mơ &ndash; Tiếp sức cho 83 học sinh Tiểu học c&oacute; ho&agrave;n cảnh kh&oacute; khăn tiếp tục đến trường</strong></p>
    <p><strong>Số Heo V&agrave;ng đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 3.266.876</p>
    <p><strong>Số tiền mặt đ&atilde; g&acirc;y quỹ th&agrave;nh c&ocirc;ng:</strong> 246.362.697đ</p>
    <p><strong>Đơn vị triển khai:</strong> Trung t&acirc;m Hỗ trợ Học sinh, sinh vi&ecirc;n TP. Hồ Ch&iacute; Minh</p>
    <p><strong>Thời gian g&acirc;y quỹ:</strong> 24/05/2022</p>
    <p><strong>Địa điểm hỗ trợ:</strong> TP.HCM</p>',1),
(44, null, 
'', '<p>Ng&agrave;y 18/9/2022, tại Hội trường Th&agrave;nh Đo&agrave;n (Số 1 Phạm Ngọc Thạch, quận 1), Th&agrave;nh Đo&agrave;n, Hội Đồng đội Th&agrave;nh phố v&agrave; Trung t&acirc;m Hỗ trợ học sinh, sinh vi&ecirc;n Th&agrave;nh phố tổ chức Lễ trao học bổng bảo trợ cho học sinh vượt kh&oacute; học giỏi. Đ&acirc;y l&agrave; học bổng đặc biệt cho c&aacute;c học sinh c&oacute; ho&agrave;n cảnh kh&oacute; khăn, học sinh mồ c&ocirc;i cha/ mẹ do Covid-19 hoặc gia đ&igrave;nh chịu ảnh hưởng nặng nề từ dịch bệnh Covid-19. C&aacute;c em học sinh sẽ nhận học bổng sẽ được bảo trợ từ khi nh&acirc;̣p học đ&ecirc;́n khi tốt nghiệp THPT nếu giữ được th&agrave;nh t&iacute;ch học tập loại Kh&aacute;, Giỏi qua c&aacute;c năm học.&nbsp;</p>
<p>Năm học 2022-2023, chương tr&igrave;nh học bổng c&ugrave;ng 95 mạnh thường qu&acirc;n l&agrave; văn nghệ sỹ, c&aacute; nh&acirc;n,... tiếp tục trao tặng học bổng cho 292 học sinh, trị gi&aacute; 3 triệu đồng/ suất/ năm học. Trong số học sinh được nhận học bổng, c&oacute; 50 em l&agrave; học sinh cấp 1, 204 em l&agrave; học sinh cấp 2 v&agrave; 38 em l&agrave; học sinh cấp 3; c&oacute; 119 em l&agrave; học sinh mồ c&ocirc;i. Đa số học sinh được nhận học bổng đ&atilde; nỗ lực tốt trong học tập để vượt qua nghịch cảnh.&nbsp;</p>
<p>Trong số học sinh nhận học bổng h&ocirc;m nay, c&oacute; một số học sinh c&oacute; ho&agrave;n cảnh đặc biệt kh&oacute; khăn. Điển h&igrave;nh l&agrave; em Trần Thị Ho&agrave;ng Thư &ndash; học sinh lớp 4 trường TH L&ecirc; Th&aacute;nh T&ocirc;ng, quận T&acirc;n Ph&uacute;. Em mồ c&ocirc;i cha từ nhỏ. Mẹ bị nhiễm Covid-19 v&agrave; đ&atilde; mất v&agrave;o ng&agrave;y 11/8/2021 tại bệnh viện. Hiện em sống c&ugrave;ng cậu v&agrave; b&agrave; ngoại (60 tuổi). Trước đ&acirc;y, cậu c&oacute; bu&ocirc;n b&aacute;n nhỏ ở nh&agrave; nhưng do t&igrave;nh h&igrave;nh dịch bệnh Covid-19 n&ecirc;n gia đ&igrave;nh mất nguồn thu nhập, đời sống bấp b&ecirc;nh.</p>',1),
(45,null, 
'', '<p>Em Nguyễn Ngọc Thanh Tuyền &ndash; học sinh lớp 9 trường THCS Trường Thọ, TP. Thủ Đức. Em mồ c&ocirc;i cha từ nhỏ, mẹ th&igrave; t&acirc;m l&yacute; kh&ocirc;ng ổn định n&ecirc;n kh&ocirc;ng c&oacute; nguồn thu nhập. Hiện em đang sống c&ugrave;ng b&agrave; ngoại, b&agrave; ngoại l&agrave; nguồn lao động ch&iacute;nh nhưng do t&igrave;nh h&igrave;nh dịch bệnh n&ecirc;n gia đ&igrave;nh mất thu nhập.</p>
<p>Vẫn c&ograve;n đ&oacute; những đứa trẻ ham học nhưng v&igrave; nghịch cảnh khiến việc học của c&aacute;c em chưa được đảm bảo. V&agrave; nhờ tấm l&ograve;ng của c&aacute;c nh&agrave; hảo t&acirc;m, cộng đồng l&agrave;m việc tốt Heo Đất MoMo đ&atilde; g&oacute;p những suất học bổng, gi&uacute;p c&aacute;c em c&oacute; th&ecirc;m sức mạnh để vượt qua nghịch cảnh, đ&acirc;y l&agrave; điều cực k&igrave; c&oacute; &yacute; nghĩa đối với c&aacute;c em.</p>',1),
(46, 1, 
'Nghị lực vượt qua nghịch cảnh của mẹ con em Giang', 
'<p>Nguyễn Thị Tr&uacute;c Giang được sinh ra trong một gia đ&igrave;nh ngh&egrave;o kh&oacute; khăn tại ấp 4 T&acirc;n Nghĩa, huyện Cao L&atilde;nh, tỉnh Đồng Th&aacute;p. Em sinh ra với dị tật hiếm gặp tr&ecirc;n khu&ocirc;n mặt, l&agrave; dị tật Tessier số 4 (khe hở mắt &ndash; miệng) nằm trong nh&oacute;m c&aacute;c khe hở mặt hiếm gặp trong y học với tỷ lệ 1.43 &ndash; 4.85 : 100.000 trẻ. Tổn thương phần mềm đặc trưng l&agrave; khe hở từ bờ dưới mi mắt đến m&ocirc;i tr&ecirc;n ở vị tr&iacute; giữa nh&acirc;n trung v&agrave; kh&oacute;e miệng. K&egrave;m theo l&agrave; dị tật nh&atilde;n cầu teo nhỏ hoặc kh&ocirc;ng c&oacute; nh&atilde;n cầu, g&acirc;y ảnh hưởng nặng nề về chức năng sinh hoạt. Năm nay 13 tuổi, em đ&atilde; trải qua 2 cuộc phẫu thuật. Đến với Operation Smile l&agrave; lần thứ 3, em được phẫu thuật tạo h&igrave;nh mi mắt hai b&ecirc;n.</p>
<p><em>Nhiều em nhỏ gặp kh&oacute; khăn đ&atilde; đến với chương tr&igrave;nh phẫu thuật miễn ph&iacute; c&ugrave;ng &nbsp;Tổ chức Phẫu thuật Nụ Cười</em></p>
<p>Chị Nguyễn Thị Phương Dung - mẹ em Giang - kh&ocirc;ng may chồng mất sớm để lại 3 đứa con thơ, chị trở th&agrave;nh trụ cột kinh tế của gia đ&igrave;nh. Để g&aacute;nh gồng những trang trải sinh hoạt h&agrave;ng ng&agrave;y, v&agrave; chi ph&iacute; cho c&aacute;c con được đi học, được đến trường, chị Dung kh&ocirc;ng m&agrave;ng bao gian kh&oacute;, tảo tần sớm h&ocirc;m, đi l&agrave;m c&ocirc;ng nh&acirc;n xa nh&agrave;.</p>
<p>L&agrave; chị hai trong nh&agrave;, mẹ phải đi l&agrave;m xa n&ecirc;n Giang c&ugrave;ng b&agrave; nội tr&ocirc;ng 2 em nhỏ. Ng&agrave;y hay tin em được kh&aacute;m v&agrave; mổ từ thiện trong chương tr&igrave;nh của Operation Smile, em c&ugrave;ng mẹ v&agrave; b&agrave; nội tranh thủ bắt xe đ&ograve; l&ecirc;n S&agrave;i G&ograve;n, rồi b&agrave; nội cũng phải bắt xe về ngay để tr&ocirc;ng 2 em nhỏ ở nh&agrave;.&nbsp;</p>
<p>B&acirc;y giờ, em chỉ c&ograve;n nh&igrave;n được nửa con mắt. H&agrave;ng ng&agrave;y, ba chị em c&ugrave;ng nhau đến trường tr&ecirc;n chiếc xe đạp. Kh&oacute; khăn l&agrave; thế, nhưng ch&uacute;ng t&ocirc;i vẫn thấy ở c&ocirc; g&aacute;i nhỏ ấy một nghị lực phi thường, cố gắng vượt qua nghịch cảnh của bản th&acirc;n để trở th&agrave;nh người con, người chị cả mẫu mực của gia đ&igrave;nh. Biết ho&agrave;n cảnh của m&igrave;nh kh&oacute; khăn cả về thể chất lẫn kinh tế, sự cố gắng v&agrave; c&aacute;ch em hiểu chuyện lại c&agrave;ng khiến những người xung quanh em cảm thấy x&oacute;t xa v&agrave; mong muốn những điều tốt đẹp nhất sẽ đến với em.</p>',1),
(47, 2, 
'Tiếp sức cho những hoàn cảnh khó khăn tìm lại tương lai tươi sáng', 
'<p>Trong suốt nhiều năm mang đến nụ cười trẻ thơ, chúng tôi gặp và điều trị cho cả những em bé sinh ra không may mắc nhiều loại dị tật khác nhau trên gương mặt. Mỗi hoàn cảnh là thêm một động lực cho cả Operation Smile, đội ngũ y tế và các đối tác của chúng tôi dặn lòng mình phải tiếp tục cố gắng. Vì trên khắp đất nước chúng ta, còn biết bao cảnh ngộ đến đau lòng, mà gia đình quá khó khăn để có thể trang trải cho các em nhận được điều trị y tế kịp thời.<br>
Trong chương trình gây quỹ lần này, rất mong cộng đồng Heo Đất và người dùng Ví MoMo chung tay cùng Tổ chức Phẫu thuật Nụ Cười gây quỹ cho 20 em bé hở môi, hàm ếch với số tiền là 200.000.000 đồng. Từ nguồn tài trợ này, các bệnh viện, bác sĩ, tình nguyện viên sẽ có thể cùng nhau biến đóng góp của các mạnh thường quân Heo Đất trở thành những nụ cười lành lặn trao tặng các em nhỏ.<br>
*Sau khi nhận đủ số tiền quyên góp từ cộng đồng, số tiền 200.000.000 VNĐ sẽ được chuyển tới Tổ chức Phẫu thuật Nụ Cười - Operation Smile để tiến hành phẫu thuật cho 20 em bé hở hàm môi, hàm ếch đang thuộc danh sách chờ hỗ trợ và chữa trị y tế. Thông tin cập nhật về chương trình sẽ được gửi đến các nhà hảo tâm trong thời gian sớm nhất<br>
</p>',1),
(48, 3, 
'Mong mỏi một cây cầu mới kiên cố của người dân và em nhỏ bản Nậm Chua 2', 
'<p>Bản Nậm Chua 2 là một xã nghèo nằm ở vùng sâu của xã Nậm Chua, huyện Nậm Pồ, tỉnh Điện Biên. Bản có 80 hộ dân với gần 500 nhân khẩu sinh sống. Hàng ngày, người dân đi lại và trẻ nhỏ tới trường đều phải đi lại qua cầu dân sinh tạm bằng cầu gỗ ọp ẹp. Đặc biệt là vào mùa mưa lũ; lũ ống, lũ quét, nước chảy siết dâng cao khiến cho người dân hoàn toàn không thể đi qua được. Thế nhưng các hộ gia đình thuộc bản Nậm Chua 2 phần lớn người dân sinh sống bằng nghề nương rẫy, thu nhập chỉ vừa đủ ăn, không thể đủ điều kiện sửa sang cây cầu đã cũ. <br>
Giữa bản có suối Nậm Chua chảy qua, và cây cầu gỗ đã được dựng tạm ở nơi đây. Cầu tạm bản Nậm Chua 2 là cây cầu quan trọng để kết nối các hộ dân với bản. Và cũng là con đường chính để các em nhỏ đi lại và đến trường học tập. Cây cầu được người dân dựng tạm nên liên tục phải tu sửa, xuống cấp, hư hỏng nặng gây khó khăn cho việc di chuyển. <br>
Được xây dựng đã nhiều năm tuổi, cây cầu gỗ vốn không đảm bảo an toàn nay lại càng thêm xiêu vẹo và bị bào mòn nặng nề qua thời gian. Những cọc gỗ lung lay, không chịu được sức nặng và nhu cầu của người qua lại, có thể đổ sập gây tai nạn không mong muốn bất cứ lúc nào. Hơn thế nữa, cầu được xây dựng rất thấp, gần sát với dòng suối bên dưới. Cứ mỗi mùa mưa lũ, nước dâng cao chảy siết, người dân mất cây cầu đi lại, mọi hoạt động sinh hoạt đều bị đình trệ. <br>
Không có cầu dân sinh kiên cố đã gây rất nhiều khó khăn cho cuộc sống của đồng bào nơi đây vốn dĩ đã có nhiều vất vả. Người dân tại bản Nậm Chua 2 đều có hoàn cảnh khó khăn nên việc xây cầu vững chãi gần như là không thể, họ luôn mong mỏi một cây cầu mới để người lớn yên tâm sản xuất, trẻ em vững bước tới trường.</p>',
1),
(49, 4, 
'Chung tay quyên gópg xây cầu mới kiên cố tặng bà con bản Nậm Chua 2', 
'<p>Bản Nậm Chua 2 là một xã nghèo nằm ở vùng sâu của xã Nậm Chua, huyện Nậm Pồ, tỉnh Điện Biên. Bản có 80 hộ dân với gần 500 nhân khẩu sinh sống. Hàng ngày, người dân đi lại và trẻ nhỏ tới trường đều phải đi lại qua cầu dân sinh tạm bằng cầu gỗ ọp ẹp. Đặc biệt là vào mùa mưa lũ; lũ ống, lũ quét, nước chảy siết dâng cao khiến cho người dân hoàn toàn không thể đi qua được. Thế nhưng các hộ gia đình thuộc bản Nậm Chua 2 phần lớn người dân sinh sống bằng nghề nương rẫy, thu nhập chỉ vừa đủ ăn, không thể đủ điều kiện sửa sang cây cầu đã cũ. <br>
Giữa bản có suối Nậm Chua chảy qua, và cây cầu gỗ đã được dựng tạm ở nơi đây. Cầu tạm bản Nậm Chua 2 là cây cầu quan trọng để kết nối các hộ dân với bản. Và cũng là con đường chính để các em nhỏ đi lại và đến trường học tập. Cây cầu được người dân dựng tạm nên liên tục phải tu sửa, xuống cấp, hư hỏng nặng gây khó khăn cho việc di chuyển. <br>
Được xây dựng đã nhiều năm tuổi, cây cầu gỗ vốn không đảm bảo an toàn nay lại càng thêm xiêu vẹo và bị bào mòn nặng nề qua thời gian. Những cọc gỗ lung lay, không chịu được sức nặng và nhu cầu của người qua lại, có thể đổ sập gây tai nạn không mong muốn bất cứ lúc nào. Hơn thế nữa, cầu được xây dựng rất thấp, gần sát với dòng suối bên dưới. Cứ mỗi mùa mưa lũ, nước dâng cao chảy siết, người dân mất cây cầu đi lại, mọi hoạt động sinh hoạt đều bị đình trệ. <br>
Không có cầu dân sinh kiên cố đã gây rất nhiều khó khăn cho cuộc sống của đồng bào nơi đây vốn dĩ đã có nhiều vất vả. Người dân tại bản Nậm Chua 2 đều có hoàn cảnh khó khăn nên việc xây cầu vững chãi gần như là không thể, họ luôn mong mỏi một cây cầu mới để người lớn yên tâm sản xuất, trẻ em vững bước tới trường.</p>',1),
(50, 5, 
'Tình hình học sinh có hoàn cảnh khó khăn trên địa bàn xã', 
'<p>Hiện toàn xã Hàm Kiệm có hơn 200 em học sinh có hoàn cảnh gia đình khó khăn. Không chỉ về kinh tế, nhà cửa, điều kiện học tập mà ngay cả phương tiện đến trường cũng khiến gia đình các em lo lắng vô cùng. Trong đó, có 20 em có hoàn cảnh đặc biệt khó khăn về điều kiện học tập, sức khỏe, vật chất phục vụ việc học tập.<br>
Em Huỳnh Thị Yến Nhi, đang học sinh lớp 62 trường THCS Hàm Kiệm. Ba mẹ em đã ly hôn nên hiện nay em ở với mẹ và em. Mẹ em một mình gồng gánh kinh tế gia đình đã vất vả, ấy thế mà em còn mang trong mình căn bệnh thiếu máu, mỗi tháng em đều cần phải vào thành phố Hồ Chí Minh để chữa trị. Mọi chi phí sinh hoạt hàng ngày và chi phí điều trị bệnh cho em khiến mẹ em vô cùng vất vả. Bởi mẹ không có công việc ổn định, vì thế thu nhập bấp bênh khiến một nhà ba người luôn sống trong cảnh gian nan.<br>
Em Lê Thị Út Quỳnh là học sinh lớp 64 trường THCS Hàm Kiệm, đang sống cùng mẹ và hai em. Ba mất sớm, gia đình lại thuộc hộ nghèo, vì thế kinh tế gia đình đều phụ thuộc vào công việc may vá hàng ngày ngoài chợ của mẹ em. Dù vậy mức thu nhập ít ỏi của mẹ cũng không đủ để trai trải cuộc sống hàng ngày cho các em đến trường. Ngoài những khoản sinh hoạt phí hàng ngày, hàng tháng, mẹ còn phải lo thêm tiền thuốc cho đứa em đang bị bệnh. <br>
Hoàn cảnh gia đình em Phạm Hoài An, lớp 72 trường THCS Hàm Kiệm cũng nhiều khó khăn vất vả. Ba mẹ li hôn, em đang ở với ba và hai chị em. Công việc bấp bênh, nên ba em phải đi làm thêm nhiều nghề để kiếm thêm thu nhập. Thế nhưng thu nhập ít ỏi đó cũng không đủ để gia đình em trang trải cho cuộc sống. Em An hiểu rõ hoàn cảnh khó khăn của gia đình, nên ngoài việc học ở trường, em còn phụ giúp việc nhà để ba vơt bớt phần nào nỗi vất vả.<br>
Em Dương Thị Thu Thùy, lớp 61 trường THCS Hàm Kiệm đang sống cùng ba mẹ. Mẹ em bị bệnh vôi cổ tay không thể làm việc nặng. Ba thì bị điếc, không nghe được. Công việc không ổn định, ai thuê gì làm đó, nên cũng chỉ có ít ỏi đồng ra đồng.<br>
</p>',
1),
(51, 6, 
'Chung tay góp Heo Vàng tặng học bổng cho các em học sinh nghèo tại xã Hàm Kiệm', 
'<p>Hiện toàn xã Hàm Kiệm có hơn 200 em học sinh có hoàn cảnh gia đình khó khăn. Không chỉ về kinh tế, nhà cửa, điều kiện học tập mà ngay cả phương tiện đến trường cũng khiến gia đình các em lo lắng vô cùng. Trong đó, có 20 em có hoàn cảnh đặc biệt khó khăn về điều kiện học tập, sức khỏe, vật chất phục vụ việc học tập.<br>
Em Huỳnh Thị Yến Nhi, đang học sinh lớp 62 trường THCS Hàm Kiệm. Ba mẹ em đã ly hôn nên hiện nay em ở với mẹ và em. Mẹ em một mình gồng gánh kinh tế gia đình đã vất vả, ấy thế mà em còn mang trong mình căn bệnh thiếu máu, mỗi tháng em đều cần phải vào thành phố Hồ Chí Minh để chữa trị. Mọi chi phí sinh hoạt hàng ngày và chi phí điều trị bệnh cho em khiến mẹ em vô cùng vất vả. Bởi mẹ không có công việc ổn định, vì thế thu nhập bấp bênh khiến một nhà ba người luôn sống trong cảnh gian nan.<br>
Em Lê Thị Út Quỳnh là học sinh lớp 64 trường THCS Hàm Kiệm, đang sống cùng mẹ và hai em. Ba mất sớm, gia đình lại thuộc hộ nghèo, vì thế kinh tế gia đình đều phụ thuộc vào công việc may vá hàng ngày ngoài chợ của mẹ em. Dù vậy mức thu nhập ít ỏi của mẹ cũng không đủ để trai trải cuộc sống hàng ngày cho các em đến trường. Ngoài những khoản sinh hoạt phí hàng ngày, hàng tháng, mẹ còn phải lo thêm tiền thuốc cho đứa em đang bị bệnh. <br>
Hoàn cảnh gia đình em Phạm Hoài An, lớp 72 trường THCS Hàm Kiệm cũng nhiều khó khăn vất vả. Ba mẹ li hôn, em đang ở với ba và hai chị em. Công việc bấp bênh, nên ba em phải đi làm thêm nhiều nghề để kiếm thêm thu nhập. Thế nhưng thu nhập ít ỏi đó cũng không đủ để gia đình em trang trải cho cuộc sống. Em An hiểu rõ hoàn cảnh khó khăn của gia đình, nên ngoài việc học ở trường, em còn phụ giúp việc nhà để ba vơt bớt phần nào nỗi vất vả.<br>
Em Dương Thị Thu Thùy, lớp 61 trường THCS Hàm Kiệm đang sống cùng ba mẹ. Mẹ em bị bệnh vôi cổ tay không thể làm việc nặng. Ba thì bị điếc, không nghe được. Công việc không ổn định, ai thuê gì làm đó, nên cũng chỉ có ít ỏi đồng ra đồng.<br>
</p>',1),
(52, 7, 
'Những khó khăn bất cập khi Người khuyết tật và Người chăm sóc không có thiết bị di động', 
'<p>Cô Nguyễn Thị Thủy, NKT tại xã Hoài Thanh Tây, thị xã Hoài Nhơn, tỉnh Bình Định từng chia sẻ với chúng tôi: “Người khuyết tật như cô rất cần điện thoại để biết tra cứu lúc nào bão đến con à. Mấy ngày nay cô không biết thông tin nên khổ lắm, cô muốn biết lúc mưa gió, nơi nào giúp được cô không, với lại gọi người giúp đỡ nữa. Cô tự chăm sóc mình chứ không có ai chăm sóc cả, nên nếu có điện thoại, cô cũng có thể xem tập huấn chăm sóc ở nhà vì cô không tự đi được, rồi có gì có thể theo dõi thông tin từ trạm y tế, hiểu hơn, biết hơn về bệnh tật mình đang gặp phải. Cô đi đứng không được, nhiều khi gọi anh em qua giúp nhưng không có hình ảnh để họ hiểu tình trạng đang ra sao. Cô cũng đang nhận làm nhựa cho nhà máy, đang kết nối mấy người khuyết tật để cùng làm đây. Cô nghĩ điện thoại sẽ giúp cô nhiều lắm.”</p>
<p>Không chỉ có cô Thủy, những người chăm sóc (NCS) người khuyết tật cũng gặp nhiều khó khăn khi không có thiết bị để tra cứu thông tin khi cần thiết. Cô Nguyễn Thị Nguyệt NCS của chú Huỳnh Bời, NKT tại xã Hoài Hảo cho biết: “Giá như gia đình cô có phương tiện để tìm hiểu, tìm kiếm trợ giúp về y tế, rồi tra cứu, tìm kiếm những thông tin, kiến thức về chăm sóc mọi thời điểm cần thiết. Đối với cô, đây là nhu cầu thiết thực, cần thiết vô cùng. Có hướng dẫn thì những lúc đau ốm mới biết xử lý sao. Rồi nhiều khi có bệnh tình, bối rối không biết có thể mô tả, chỉ lại cho mọi người sao, không biết ghi lại ở đâu để xem.”</p>',
1),
(53, 8, 
'Chung tay thay đổi cuộc đời của nhiều Người khuyết tật tại Bình Định, Quảng Nam và Kon Tum', 
'<p>Cô Nguyễn Thị Thủy, NKT tại xã Hoài Thanh Tây, thị xã Hoài Nhơn, tỉnh Bình Định từng chia sẻ với chúng tôi: “Người khuyết tật như cô rất cần điện thoại để biết tra cứu lúc nào bão đến con à. Mấy ngày nay cô không biết thông tin nên khổ lắm, cô muốn biết lúc mưa gió, nơi nào giúp được cô không, với lại gọi người giúp đỡ nữa. Cô tự chăm sóc mình chứ không có ai chăm sóc cả, nên nếu có điện thoại, cô cũng có thể xem tập huấn chăm sóc ở nhà vì cô không tự đi được, rồi có gì có thể theo dõi thông tin từ trạm y tế, hiểu hơn, biết hơn về bệnh tật mình đang gặp phải. Cô đi đứng không được, nhiều khi gọi anh em qua giúp nhưng không có hình ảnh để họ hiểu tình trạng đang ra sao. Cô cũng đang nhận làm nhựa cho nhà máy, đang kết nối mấy người khuyết tật để cùng làm đây. Cô nghĩ điện thoại sẽ giúp cô nhiều lắm.”</p>
<p>Không chỉ có cô Thủy, những người chăm sóc (NCS) người khuyết tật cũng gặp nhiều khó khăn khi không có thiết bị để tra cứu thông tin khi cần thiết. Cô Nguyễn Thị Nguyệt NCS của chú Huỳnh Bời, NKT tại xã Hoài Hảo cho biết: “Giá như gia đình cô có phương tiện để tìm hiểu, tìm kiếm trợ giúp về y tế, rồi tra cứu, tìm kiếm những thông tin, kiến thức về chăm sóc mọi thời điểm cần thiết. Đối với cô, đây là nhu cầu thiết thực, cần thiết vô cùng. Có hướng dẫn thì những lúc đau ốm mới biết xử lý sao. Rồi nhiều khi có bệnh tình, bối rối không biết có thể mô tả, chỉ lại cho mọi người sao, không biết ghi lại ở đâu để xem.”</p>',1),
(54, 9, 
'Trẻ vị thành niên mái ấm thiếu hụt những kỹ năng sống', 
'<p>Cô Nguyễn Thị Thủy, NKT tại xã Hoài Thanh Tây, thị xã Hoài Nhơn, tỉnh Bình Định từng chia sẻ với chúng tôi: “Người khuyết tật như cô rất cần điện thoại để biết tra cứu lúc nào bão đến con à. Mấy ngày nay cô không biết thông tin nên khổ lắm, cô muốn biết lúc mưa gió, nơi nào giúp được cô không, với lại gọi người giúp đỡ nữa. Cô tự chăm sóc mình chứ không có ai chăm sóc cả, nên nếu có điện thoại, cô cũng có thể xem tập huấn chăm sóc ở nhà vì cô không tự đi được, rồi có gì có thể theo dõi thông tin từ trạm y tế, hiểu hơn, biết hơn về bệnh tật mình đang gặp phải. Cô đi đứng không được, nhiều khi gọi anh em qua giúp nhưng không có hình ảnh để họ hiểu tình trạng đang ra sao. Cô cũng đang nhận làm nhựa cho nhà máy, đang kết nối mấy người khuyết tật để cùng làm đây. Cô nghĩ điện thoại sẽ giúp cô nhiều lắm.”</p>
<p>Không chỉ có cô Thủy, những người chăm sóc (NCS) người khuyết tật cũng gặp nhiều khó khăn khi không có thiết bị để tra cứu thông tin khi cần thiết. Cô Nguyễn Thị Nguyệt NCS của chú Huỳnh Bời, NKT tại xã Hoài Hảo cho biết: “Giá như gia đình cô có phương tiện để tìm hiểu, tìm kiếm trợ giúp về y tế, rồi tra cứu, tìm kiếm những thông tin, kiến thức về chăm sóc mọi thời điểm cần thiết. Đối với cô, đây là nhu cầu thiết thực, cần thiết vô cùng. Có hướng dẫn thì những lúc đau ốm mới biết xử lý sao. Rồi nhiều khi có bệnh tình, bối rối không biết có thể mô tả, chỉ lại cho mọi người sao, không biết ghi lại ở đâu để xem.”</p>',
1),
(55, 10,
'Chương trình “Vào Đời” rèn luyện cho các em những kỹ năng sống cơ bản nhất', 
'<p>Chương trình “Vào Đời” là tâm huyết mà Trăng Khuyết, mái ấm, giáo xứ cùng các bên liên quan cố gắng xây dựng để chuẩn bị một hành trang đường đời vững vàng cho các em. Thông qua chương trình, những nội dung bổ ích được lồng ghép để vun đắp cho tâm hồn, cung cấp những kỹ năng sống cần thiết cho các bé.<br>
Đối tượng mà Trăng Khuyết nhắm tới là trẻ vị thành niên ở hệ thống mái ấm liên kết với Trăng Khuyết , trẻ vị thành niên đường phố và khu vực hồ Trị An. Các trẻ sẽ được tham gia những hoạt động văn nghệ, thể thao để rèn luyện sức khỏe, tinh thần đoàn kết. Những bài học cuộc sống thiết thực, bổ ích được lồng ghép vào các chương trình tham quan, teambuilding để xây dựng kỹ năng sống, nghề nghiệp lý tưởng. Các hoạt động dạy kèm kiến thức cơ bản, tiếng Anh, xóa mù chữ… để phát triển kỹ năng mềm, kiến thức để các em lựa chọn được ngành nghề đúng đắn.<br>
Để các em cảm nhận được sự chân thực về cuộc sống, tránh được những va vấp sau này thì Ví MoMo phối hợp với Quỹ Từ Thiện & BTXH Trăng Khuyết kêu gọi sự chung tay hỗ trợ cho chương trình “Vào Đời” là 200.000.000 đồng. Ngoài ra, chương trình còn có Heo Vàng được các nhà tài trợ quy đổi thành 800.000.000 đồng được quy đổi từ chiến dịch của Heo Đất MoMo. Tổng giá trị dự án lần này dự kiến sẽ đạt 1.000.000,000 đồng, và sẽ được dùng cho chi phí thực hiện các hoạt động trong chương trình “Vào Đời” được tổ chức định kỳ 2 lần/tháng với kinh phí là 50.000.000 đồng/lần.<br>
Hãy trở thành người đồng hành cùng MoMo ngày hôm nay, để chắp cánh cho các em trang bị đầy đủ hành trang vào đời. Bất kể số tiền nào đều là đáng quý, bất cứ đóng góp nào cũng đều là đáng trân trọng và mang lại biết bao niềm vui cho người nhận lẫn người cho.<br>
*Sau khi hoàn tất chiến dịch kêu gọi đóng góp, MoMo sẽ chuyển toàn bộ số tiền 200.000.000 đồng đã gây quỹ gửi đến Quỹ Từ Thiện & BTXH Trăng Khuyết hỗ trợ chi phí tổ chức Chương trình “Vào Đời” cho 500 em thanh thiếu niên. Chúng tôi sẽ cập nhật thêm thông tin về tiến độ dự án đến Quý vị trong thời gian sớm nhất. <br>
</p>',
1),
(56, 11, 
'May mắn không bao giờ mỉm cười với người đàn ông đã gần 70 tuổi', 
'<p>Chú Mỹ sinh năm 1957, quê gốc ở An Giang. Trước đây chú sống cùng cháu, nhưng cháu không có công việc ổn định, thu nhập cũng chỉ có thể chăm lo cuộc sống cho một người. Vì thế đành gửi chú vào quán trọ Trăng Khuyết. Có lẽ do cuộc sống không được trọn vẹn như bao người cộng thêm căn bệnh tai biến khiến chú thu mình hơn và khả năng giao tiếp cũng trở nên hạn chế. <br>
Chú ậm ừ chia sẻ về cuộc sống trước kia bằng vốn từ ngữ hạn hẹp. Chú từng làm thợ hồ, cuộc sống cơ cực, công việc vô cùng vất vả và nặng nhọc, chú sống qua ngày nhờ những đồng lương ít ỏi. Nhưng có lẽ biến cố lớn nhất cuộc đời là khi chú không may mắn gặp tai nạn giao thông. Chú bị bể xương bánh chè nên giờ đi lại khó khăn, bởi những chiếc ốc vít còn ghim bên đầu gối chân trái chú.<br>
Khuôn mặt của chú Mỹ hiền từ và thiện lành lắm, tuy có ít nói nhưng chú hay cười. Cho dù di chứng của tai biến không chỉ khiến chú nói chữ được chữ mất, mà còn làm những bước chân của chú Mỹ cũng trở nên nặng nề hơn, chú chỉ có thể chậm rãi bước từng bước chân một, nhưng chú vẫn cố gắng tự lo sinh hoạt cho bản thân để không phải phiền đến mọi người. <br>
</p>',
1),
(57, 12,
'Xin kinh phí khám chữa bệnh thuốc men cho chú Mỹ', 
'<p>Chú Mỹ sinh năm 1957, quê gốc ở An Giang. Trước đây chú sống cùng cháu, nhưng cháu không có công việc ổn định, thu nhập cũng chỉ có thể chăm lo cuộc sống cho một người. Vì thế đành gửi chú vào quán trọ Trăng Khuyết. Có lẽ do cuộc sống không được trọn vẹn như bao người cộng thêm căn bệnh tai biến khiến chú thu mình hơn và khả năng giao tiếp cũng trở nên hạn chế. <br>
Chú ậm ừ chia sẻ về cuộc sống trước kia bằng vốn từ ngữ hạn hẹp. Chú từng làm thợ hồ, cuộc sống cơ cực, công việc vô cùng vất vả và nặng nhọc, chú sống qua ngày nhờ những đồng lương ít ỏi. Nhưng có lẽ biến cố lớn nhất cuộc đời là khi chú không may mắn gặp tai nạn giao thông. Chú bị bể xương bánh chè nên giờ đi lại khó khăn, bởi những chiếc ốc vít còn ghim bên đầu gối chân trái chú.<br>
Khuôn mặt của chú Mỹ hiền từ và thiện lành lắm, tuy có ít nói nhưng chú hay cười. Cho dù di chứng của tai biến không chỉ khiến chú nói chữ được chữ mất, mà còn làm những bước chân của chú Mỹ cũng trở nên nặng nề hơn, chú chỉ có thể chậm rãi bước từng bước chân một, nhưng chú vẫn cố gắng tự lo sinh hoạt cho bản thân để không phải phiền đến mọi người. <br>
</p>',
1),
(58, 13, 
'Quá khứ đầy đau lòng của cô Luyến', 
'<p>Nếu ai có dịp ghé Sài Gòn Bao Dung, chắc hẳn sẽ bị ấn tượng bởi dáng người nhỏ bé của người phụ nữ đã ngoài 60, đang thoăn thoắt lo bữa ăn cho từng cụ già. Người phụ nữ ấy chính là cô Luyến. Có lẽ do từ nhỏ đã thiếu thốn tình yêu thương của cha mẹ nên không biết từ bao giờ cô đã cảm thấy nơi này rất thân thuộc và các cụ già như là những người thân yêu trong gia đình.<br>
Sau những lời tâm sự nghẹn ngào của cô, Trăng Khuyết biết được rằng cô cũng có một tuổi thơ không được trọn vẹn như bao người. Ba mẹ mất sớm, cô được gửi ở nhà hàng xóm, lớn lên thiếu vắng sự quan tâm chăm sóc của ba mẹ ruột, làm cô cảm giác bản thân như là một gánh nặng nên quyết định đi lang thang kiếm sống. <br>
Trước đây cô sống ở gần bệnh viện Ung bướu. Để có được mỗi miếng ăn, mỗi ngụm nước cô đều phải tranh giành, cuộc sống giành giật nơi đường phố khiến cô rất mệt mỏi. Tuy cuộc sống có vất vả, có tủi cực nhưng cô vẫn ráng để dành một phần thức ăn cho những bệnh nhân ở bệnh viện ung bướu, vì cô biết đâu phải ai cũng được may mắn, được sống thoải mái, họ đều đang phải đấu tranh với nỗi đau bệnh tật mỗi ngày.</p>',
1),
(59, 14,
'Những nỗi đau mà cô Luyến phải trải qua mỗi ngày', 
'<p>Giờ đây khi được đưa về quán trọ, cô luôn luôn giúp đỡ và săn sóc các cụ già khác như những người thân yêu. Những giọt nước mắt lăn dài trên gò má gầy guộc, cô bày tỏ với Trăng Khuyết rằng nhiều khi cô cũng muốn dừng lại, cũng muốn buông bỏ lắm vì căn bệnh hở van tim khiến cô khó thở hay nhiều lần đau nhức chân tay kinh khủng vì bị khớp mà gặp nước.</p>
<p>Nhưng có lẽ tình yêu thương đối với các cụ già nơi đây lớn hơn những nỗi đau về thể xác mà cô phải chịu đựng, đó cũng chính là động lực vô cùng to lớn để cô gắng gượng lo cho các cụ già sức khoẻ yếu kém, không thể đi lại bình thường được. Cô cứ luôn tay luôn chân bới cơm cho các cụ kèm theo những câu hỏi trìu mến: Cụ ăn thêm cơm không? Đây con cho cụ thêm miếng cơm nha!...Cụ đừng có ăn mỗi đồ ăn, xíu cơm không nhạt sẽ khó ăn lắm đấy!...</p>',
1),
(60, 15, 
'Cuộc sống trước đây của chú Phúc Lâm', 
'<p>Chú Phúc Lâm chào đón mọi người đến thăm trung tâm Sài Gòn Bao Dung bằng một nụ cười tươi rói. Nhưng đâu ai biết rằng sau nụ cười hiền hòa chất phát của một người đàn ông đã ngoài 70 ấy, là những góc khuất về cuộc đời đầy gian truân. Chú nhẹ nhàng rít một hơi thuốc rồi chậm rãi hồi tưởng những chuyện đã qua.<br>
Chú là người gốc Hoa, trước đây chú làm đủ mọi nghề không quản nặng nhọc, chỉ cần có chi phí để sinh hoạt qua ngày. Vì điều kiện thiếu thốn quá nhiều nên không thể có đủ tiền sính lễ cưới vợ. Sau khi chẩn đoán mắc phải bệnh tim thì chú ngừng làm những công việc nặng, những công việc nhẹ nhàng và đỡ vất vả hơn thì ít ai thuê, từ đó chú sống qua ngày nhờ những đồng lương ít ỏi từ công việc bấp bênh mỗi ngày.<br>
Đặc biệt là thời điểm dịch Covid-19 bùng phát mạnh mẽ tại Sài Gòn, thì chú chỉ ăn một bữa qua ngày, đôi khi còn phải uống nước để cầm hơi. Chi phí ăn uống mỗi ngày đã vô cùng khó khăn, chú còn không có tiền đóng nhà trọ. Vì vậy chủ trọ chỉ đành tìm và đưa chú về quán trọ, đó chính là cơ duyên chú đến với hệ thống quán trọ của Trăng Khuyết.</p>',
1),
(61, 16,
'Sài Gòn Bao Dung - cuối cùng chú Phúc Lâm cũng có một nơi gọi là nhà', 
'<p>Chú Phúc Lâm chia sẻ, ở đây chú sẽ không còn phải lo về bữa ăn giấc ngủ, sống những ngày tháng rất thoải mái cùng các cụ già neo đơn khác. Không biết từ bao giờ chú đã coi các cụ trong quán trọ như những người thân trong gia đình. Chú sẵn sàng đỡ đần được biết bao công việc nặng nhẹ ở quán trọ như giữ xe, dắt xe, bưng nước uống cho các cụ, khuân vác những đồ vật quá cỡ... Dù nhiệt tình là thế, vậy nhưng sau những lần giúp đỡ người khác thì chú lại cảm thấy khó thở vì căn bệnh tim tái phát. <br>
Hỏi ra Trăng Khuyết mới biết chú mang trong mình rất nhiều bệnh: bệnh tim, bệnh gan, viêm xoang, viêm mũi. Nhờ tủ thuốc ở quán trọ mà chú cũng cảm thấy viêm xoang và viêm mũi đỡ khó chịu phần nào sau những lần trái gió trở trời, thời tiết thay đổi, nhưng còn bệnh tim thì vẫn vậy, vẫn khó có thể thuyên giảm được.</p>',
1),
(62, 17, 
'Nhiều học sinh tiểu học tại Lai Châu không có nguồn nước sạch để sử dụng', 
'<p>Lai Châu là tỉnh thuộc vùng Tây Bắc Việt Nam, có hơn 20 dân tộc thiểu số sinh sống. Theo báo cáo của Tổng cục thống kê năm 2021, Lai Châu là tỉnh có tỷ lệ nghèo đói chiếm 27,9%. Việc cung cấp nước sạch tại huyện Phong Thổ chỉ đạt 93%. Đặc biệt, xã Mù Sang hiện còn một số khu vực chưa có nước sạch, trong số đó có Trường Phổ thông Dân tộc bán trú Tiểu học Mù Sang. Nằm trên địa hình sườn đồi dốc, điều kiện đi lại rất khó khăn, nhiều học sinh ở các điểm bản đến trường còn ở xa ảnh hưởng đến chất lượng giáo dục và tỷ lệ chuyên cần. <br>
Vào tháng 3/2021, Trường Phổ thông Dân tộc bán trú Tiểu học Mù Sang được tái xây dựng theo chương trình 30A của Chính phủ. Tuy nhiên, cơ sở vật chất của trường vẫn không đủ để đáp ứng nhu cầu phục vụ công tác giáo dục và học tập của trẻ, đặc biệt là nguồn nước sạch dùng cho sinh hoạt cho hơn 413 học sinh và 31 giáo viên. Để có nước sạch cho tất cả học sinh và giáo viên sử dụng, nhà trường phải xây bể để chứa nước mưa. Tuy nhiên, nguồn nước mưa không đủ để dùng cho toàn trường nên cán bộ nhân viên nhà trường phải thay phiên nhau chuyển nước từ hồ và suối cách trường 1.5km.<br>
</p>',
1),
(63, 18,
'Cùng hỗ trợ chi phí lắp đặt giếng khoan và hệ thống bơm mang đến nước sạch cho các em nhỏ', 
'<p>Nước là yếu tố cơ bản không thể thiếu trong việc duy trì sự sống và mọi hoạt động của con người. Việc đáp ứng nhu cầu nước bảo đảm cả về chất lượng và số lượng là một điều kiện tiên quyết giúp trẻ em vùng khó khăn dân tộc thiểu số phát triển bền vững, đặc biệt là học sinh trường phổ thông dân tộc bán trú tiểu học Mù Sang. <br>
Thông qua kênh quyên góp của MoMo, VCF và chương trình Nước Sạch đặt mục tiêu gây quỹ 233.000.000 VNĐ từ các nhà hảo tâm để nhanh chóng có đủ kinh phí hỗ trợ chi phí lắp đặt giếng khoan và hệ thống bơm cung cấp nước cho Trường Phổ thông Dân tộc bán trú Tiểu học Mù Sang tại tỉnh Lai Châu, giúp các em học sinh dân tộc thiểu số tại đây có cơ hội tiếp cận với nước sạch một cách dễ dàng hơn.<br>
Để làm được điều đó, VCF và chương trình Nước Sạch rất cần sự chung tay của cộng đồng MoMo để góp sức cùng chúng tôi giúp cải thiện chất lượng cuộc sống cho của những mầm non tương lai của đất nước và gia đình của họ, đồng thời nâng cao kết quả giáo dục, cải thiện sức khỏe cộng đồng và giúp các vùng nông thôn phát triển bền vững. <br>
*Sau khi nhận đủ số tiền quyên góp từ cộng đồng, 233.000.000 VNĐ sẽ được chuyển tới Tổ chức VinaCapital Foundation để tiến hành xây giếng khoan và hệ thống bơm nước cho các em nhỏ thuộc Trường Phổ thông Dân tộc bán trú Tiểu học Mù Sang. Thông tin cập nhật về chương trình sẽ được gửi đến các nhà hảo tâm trong thời gian sớm nhất.<br>
</p>',
1),
(64, 19, 
'Mong mỏi một cây cầu mới kiên cố', 
'<p>Bản Pa Kha, xã Nà Bùng, huyện Nậm Pồ, tỉnh Điện Biên có 162 hộ dân sinh sống với 1098 nhân khẩu. Người dân nơi đây 100% là người dân tộc Mông. Ngày trước, người dân đi lại và trẻ nhỏ tới trường đều phải lội qua suối. Người dân đã cùng nhau làm chiếc cầu dân sinh bằng gỗ để tiện cho việc đi lại, tuy nhiên cầu chỉ là tạm bợ, ọp ẹp, hằng năm đều phải tu sửa, không đảm bảo an toàn. Đặc biệt, vào mùa mưa, lũ ống lũ quét chảy siết, nước dâng cao, người dân và nhất là trẻ nhỏ hoàn toàn không thể đi lại được. Phần lớn người dân sinh sống bằng nghề nương rẫy, thu nhập chỉ vừa đủ ăn, không thể đủ điều kiện sửa sang cây cầu đã cũ.  Cây cầu nằm trong tuyến đường nội bản vô cùng quan trọng, là đường kết nối các hộ dân với bản và bản với khu vực sản xuất, là trục đường chính để con em 6 hộ đi lại và đến trường học tập. Không chỉ vậy, tuyến đường phục vụ cho nhu cầu làm sản xuất nông nghiệp cho nhân dân trong bản , cũng là đường mòn lên mốc 53,54,55. Cây cầu mà người dân dựng nên liên tục phải tu sửa, xuống cấp, hư hỏng nặng gây khó khăn cho nhân dân đi lại. Hơn thế nữa, cây cầu còn phục vụ nhu cầu đi học của 45 em học sinh. Được xây dựng đã nhiều năm tuổi, cây cầu gỗ vốn không đảm bảo an toàn nay lại càng thêm xiêu vẹo và bị bào mòn nặng nề qua thời gian. Những cọc gỗ lung lay, không chịu được sức nặng và nhu cầu của người qua lại, có thể đổ sập gây tai nạn không mong muốn bất cứ lúc nào. Hơn thế nỡ, cầu được xây dựng rất thấp, gần sát với dòng suối bên dưới. Cứ mỗi mùa mưa lũ, nước dâng cao chảy siết, người dân mất cây cầu đi lại, mọi hoạt động sinh hoạt đều bị đình trệ. </p>',
1),
(65, 20,
'Chung tay góp Heo Vàng xây cầu mới kiên cố tặng bà con bản Pa Kha, tỉnh Điện Biên', 
'<p>Hiểu được tâm tư, nguyện vọng của người dân và địa phương, Heo Đất MoMo phối hợp cùng Anh Chị nuôi Dự án “Nuôi Em”, Dự án “Sức Mạnh 2000” và Trung tâm Tình nguyện Quốc gia lên kế hoạch xây dựng một cây cầu mới, khang trang cho bản. Để làm được điều này, chúng tôi dự tính dự án cần tổng số tiền là 300.000.000 đồng. Hiện nay, Anh Chị Nuôi của Dự án Nuôi Em sẽ quy đổi Heo Vàng thành số tiền tương ứng 100.000.000 đồng cho dự án đã diễn ra trên Heo Đất MoMo. Chúng tôi mong muốn có thể gây quỹ thêm 200.000.000 đồng trên Trái Tim MoMo để cây cầu mới sớm được khởi công xây dựng. Chỉ với chút sức lực nhỏ bé cũng có thể tạo nên những thay đổi lớn cho cuộc sống của người dân bản Pa Kha, xã Nà Bùng, huyện Nậm Pồ, tỉnh Điện Biên. Chúng tôi rất mong nhận được sự đóng góp của các nhà hảo tâm giúp cho cây cầu sớm được khởi công, để cho người dân bản Pa Kha an tâm đi lại, trẻ em vững bước tới trường. *Sau khi nhận đủ Heo Vàng từ cộng đồng, nhà tài trợ sẽ quy đổi tất cả Heo Vàng thành 200 triệu đồng để tiến hành xây dựng cầu mới cho bà con bản Pa Kha. Chúng tôi sẽ cập nhật thêm thông tin về tiến độ dự án đến quý vị trong thời gian sớm nhất.</p>',
1),
(66, 21, 
'Xót xa trước hình ảnh các em nhỏ vùng cao khi mùa đông về', 
'<p>Nếu ai đã tận mắt chứng kiến hình ảnh những em nhỏ vùng cao, vùng khó khăn, miền núi.. mang những lớp quần áo mỏng manh, không có khăn ấm, không có tất mang phải vượt qua cái lạnh khắc nghiệt của thời tiết để tới trường hàng ngày, chắc hẳn sẽ không thể nén được cảm giác xúc động, thương cảm vô vàn. Nhiều em nhỏ không có nổi một bộ quần áo tươm tất hay một đôi giày, đôi dép lành lặn. Khi mùa đông đến, các em lại phải oằn mình, run cầm cập đương đầu với cái rét đậm, rét hại mà cả những người trưởng thành như chúng ta cũng khó mà chịu đựng được.</p>',
1),
(67, 22,
'Cùng Hoa Chia Sẻ chung tay góp “Áo Ấm Cho Em”', 
'<p>Xót xa trước hoàn cảnh đáng thương của các em nhỏ và mong muốn đem đến cho em một mùa đông không lạnh mà ấm áp tình người, Quỹ Từ Thiện Hoa Chia Sẻ đã kết hợp cùng ví điện tử MoMo triển khai chương trình “Áo Ấm Cho Em”. Nhằm kêu gọi quyên góp để trao tặng những chiếc áo ấm đến trẻ em, đồng bào khó khăn nơi vùng cao đang đối mặt với cơn lạnh mùa đông giá rét cắt da cắt thịt. Dự án kêu gọi sự ủng hộ của các nhà hảo tâm, các mạnh thường quân của Trái Tim MoMo, cùng đồng tâm đồng lòng để mua áo ấm tặng cho trẻ em khó khăn, trẻ em nghèo. Dự kiến phát động trong 2 tháng, mỗi tháng đương 250.000.000 VNĐ (tổng chiến dịch 500.000.000 VNĐ). Mỗi áo ấm có giá trị 50.000 VNĐ/ tương đương 10.000 áo ấm và 10.000 trẻ em được giúp đỡ trong mùa đông giá rét sắp tới.  Quỹ Từ Thiện Hoa Chia Sẻ hi vọng rằng, với truyền thống lan tỏa yêu thương vốn có của dân tộc ta, trẻ em nghèo khó khăn, đặc biệt là trẻ em nơi những vùng núi cao, ở các thôn bản xa sẽ được sưởi ấm phần nào. Mỗi một chiếc áo, một chiếc khăn, hay một đôi tất đóng góp vào Quỹ, đều sẽ góp phần giúp các em có một mùa đông ấm áp, giúp các em nhỏ vượt qua một mùa đông lạnh giá.  Trong tương lai, Quỹ Từ Thiện Hoa Chia Sẻ sẽ tiếp tục có những kế hoạch, chiến dịch đi tới các tỉnh, các địa phương khó khăn vùng cao, tiếp thêm sức mạnh cho các em không chỉ về mặt vật chất mà còn là cả về mặt tinh thần. Lợi ích của trẻ em luôn là mục tiêu và mục đích mà Quỹ Hoa Chia Sẻ hướng đến, với mong muốn giúp đỡ cho các em có một cuộc sống tốt tươi đẹp hơn. Quỹ hy vọng sẽ nhận được sự ủng hộ nhiệt tình, đông đảo từ tấm lòng vàng của các mạnh thường quân. Sự ủng hộ, giúp đỡ của mỗi cá nhân đều là đóng vai trò quan trọng trong công cuộc giúp các em thiếu nhi khó khăn có một mùa đông thật ấm áp, góp phần tạo niềm tin, tạo động lực để các em nghèo cảm nhận được sự yêu thương, để ngày càng phấn đấu vươn lên trong học tập và cuộc sống! </p>',
1),
(68, 23, 
'', 
'<p>Đại dịch là một cú sốc gây thiệt hại lớn đến toàn cầu nói chung và Việt Nam nói riêng. Ngoài các ảnh hưởng hiện hữu dễ dàng có thể nhận ra về mặt kinh tế, xã hội, Covid 19 còn làm dấy lên những lo ngại về sức khỏe tâm trí của một thế hệ trẻ em bị cô lập trong đại dịch.</p>
<p>Cuối năm 2021, Quỹ Nhi đồng Liên Hợp Quốc (UNICEF) đã đưa ra báo cáo cảnh báo về những tác động, hậu quả khôn lường của dịch bệnh đến sức khỏe tâm trí và tinh thần của trẻ em, thanh thiếu niên. Tác động này đến từ những đợt phong tỏa toàn quốc và việc hạn chế di chuyển liên quan đến đại dịch đã khiến các em phải trải qua những năm tháng cuộc đời khó quên khi phải rời xa gia đình, bạn bè, trường lớp, việc vui chơi – những yếu tố then chốt của tuổi thơ. Những rối loạn tâm trí được chẩn đoán phổ biến ở trẻ bao gồm rối loạn tăng động giảm chú ý (ADHD), lo âu, tự kỷ, rối loạn lưỡng cực, rối loạn cư xử, trầm cảm, rối loạn ăn uống, khuyết tật trí tuệ,… có thể gây tổn hại đáng kể đến sức khỏe, việc học tập, kết quả cuộc sống sau này của trẻ em và thanh thiếu niên.</p>',
1),
(69, 24,
'', 
'<p>Hơn lúc nào hết, trẻ em, đặc biệt là những bạn nhỏ sống ở thành phố hiện tại đang rất cần những không gian công cộng, nơi vui chơi, sinh hoạt cộng đồng để hàn gắn những vết thương tâm lý hậu đại dịch. Những sân chơi xanh là giải pháp tối ưu giúp trẻ hòa mình cùng thiên nhiên, hít thở không khí trong lành và thoải mái vui đùa. Một trong những không gian tiềm năng và phù hợp để kiến tạo sân chơi cho trẻ em chính là khu vực bờ vờ sông Hồng. Đoạn bờ vở sông Hồng từ Đền Sơn Hải tới ngách 43/32 đường Bạch Đằng (GPS: 21.03147363882461, 105.86016905629931) kéo dài 150 mét, là vùng đất sát sông Hồng có hệ thực vật phong phú, đa tầng. Sau nhiều nỗ lực cải tạo môi trường của người dân, chính quyền và các tổ chức xã hội, nơi đây đang từng bước thay đổi trở thành một công viên sinh thái đa dạng kết nối con người với dòng sông. Quanh khu vực này có khoảng 500 hộ gia đình với hơn 400 trẻ em đủ mọi lứa tuổi đang sinh sống. Tuy nhiên trong khu chỉ có một sân chơi nhỏ ngoài trời với ít thiết bị và đang dần xuống cấp, cần được bảo dưỡng, cải tạo. Thực tế dẫn đến một nhu cầu cấp thiết cải tạo không gian vui chơi công cộng để bờ vở trở thành điểm đến hấp dẫn, lý thú cho tất cả trẻ em. Việc cải tạo sân chơi sẽ bao gồm thay mới, bảo dưỡng các thiết bị ở sân chơi, làm sạch không gian, bổ sung một số trò chơi, mô hình, hoạt động vui chơi mới. Hiện tại khu vực bờ vở đang trong quá trình cải tạo môi trường hướng đến mục tiêu trở thành một công viên đa dạng sinh thái. Việc cải tạo sân chơi sẽ giúp cải thiện cảnh quan môi trường cũng như tăng thêm sức hút của không gian công cộng với các bạn nhỏ sống quanh khu vực bờ vở sông Hồng. Để hoạt động cải tạo sân chơi được triển khai cần nguồn tài chính và sự chung tay ủng hộ của mọi người.  Với mong muốn mọi đứa trẻ đều có không gian vui chơi, trải nghiệm thiên nhiên và cải tạo sức khỏe tâm trí, Heo Đất MoMo phối hợp cùng các tổ chức Vì một Hà Nội đáng sống, ECUE, và nhà tài trợ Đại sứ quán New Zealand tại Việt Nam, Investing in Women (IW) lên kế hoạch quyên góp để thực hiện hoạt động xây dựng sân chơi cho trẻ em tại bờ vở sông Hồng. Hoạt động này nằm trong dự án dài hơi, góp phần cải thiện môi trường và không gian sống của Hà Nội.</p>',
1),
(70, 25, 
'Hoàn cảnh khó khăn thiếu thốn về cơ sở vật chất của các em học sinh vùng xa', 
'<p>Ở những vùng quê nghèo, các em học sinh luôn phải chịu những thiệt thòi về điều kiện cơ sở vật chất. Trường Mẫu giáo Hàm Mỹ và trường Tiểu học Tân Thuận 3 thuộc huyện Hàm Thuận Nam, tỉnh Bình Thuận là một trong nhiều ngôi trường còn nhiều thiếu thốn. Điều đó khiến cho việc học tập và rèn luyện sức khỏe của các em học sinh nơi đây gặp nhiều trở ngại. Là những câu mà giáo viên ở trường Tiểu học Tân Thuận 3 có thể nghe nhiều lần mỗi mùa nắng gắt đến hay mùa mưa về. Ở ngôi trường mà các em đang theo học, mùa hè đến sân trường nắng chói chang, không có không gian cho học sinh vui chơi, nô đùa. Khi mùa mưa về thì những ngày thứ 2 đầu tuần, học sinh sẽ phải ngồi chào cờ với một sân trường đầy nước có lẽ cũng trở nên quen thuộc. Hình ảnh học sinh và giáo viên đến trường với những chiếc ống quần được xắn cao ngày mưa đã quá đỗi bình thường. Thế nhưng các giáo viên ở trường vẫn luôn kiên trì tìm cách chắn mưa, che mát để các em học sinh có thể yên tâm theo đuổi con chữ.  Mặc dù các trường học ở huyện Hàm Thuận Nam, tỉnh Bình Thuận đã được hỗ trợ nhiều về cơ sở vật chất, nhưng vẫn còn đó rất nhiều thứ cần phải xã hội hoá. Đặc biệt tại vùng nông thôn, nơi mà việc vận động phụ huynh còn nhiều khó khăn. Bởi vì cuộc sống họ còn vô vàn khó khăn phải đối mặt. Hơn nữa tại địa phương cũng không có nhiều doanh nghiệp để vận động, nên những khó khăn của các trường ở vùng sâu vùng xa vẫn chưa được hoàn toàn cải thiện.</p>',
1),
(71, 26,
'Chung tay mang lại điều kiện cơ sở vật chất tốt hơn cho các bé mầm non và tiểu học', 
'<p>Từ một tấm lòng hảo tâm của cộng đồng Trái Tim MoMo, sẽ giúp trung bình 426 em học sinh mỗi năm tại trường Tiểu học Tân Thuận 3 có được một sân trường cao ráo sạch sẽ hơn, 55 em nhỏ tại trường Mẫu giáo Hàm Mỹ (cơ sở Phú Sơn) có được mái che cho những ngày nắng mưa. Thành quả đó sẽ tạo điều kiện tốt nhất cho các em được học tập và phát triển. Trường Tiểu học Tân Thuận 3 và trường Mẫu giáo Hàm Mỹ (cơ sở Phú Sơn) sẽ được hỗ trợ 16 triệu đồng cho mỗi ngôi trường. Và phần chi phí còn lại của các công trình trên sẽ được nhà trường tiếp tục vận động xã hội hoá. Thay mặt ban giám hiệu nhà trường, Thiện Chí biết ơn những tấm lòng của cộng đồng người dùng MoMo đã luôn quan tâm, giúp đỡ để các bé được yên tâm học tập dưới một ngôi trường có điều kiện cơ sở vật chất khang trang hơn.  *Sau khi hoàn thành chiến dịch kêu gọi quyên góp, MoMo sẽ tiến hành gửi toàn bộ số tiền quyên góp được đến Thiện Chí. Chúng tôi sẽ cập nhật thêm thông tin về tiến độ dự án đến quý vị trong thời gian sớm nhất!</p>',
1),
(72, 27, 
'40 năm hành trình chữa lành nụ cười trẻ em', 
'<p>Năm 2022 là một năm đặc biệt với tổ chức Phẫu thuật Nụ Cười trên toàn cầu, đánh dấu 40 năm hoạt động của tổ chức trong việc chăm sóc y tế cho các bệnh nhân mắc dị tật hàm mặt, đặc biệt là trẻ em hở môi, hàm ếch.</p>
<p>Được thành lập vào năm 1982, Operation Smile đã cung cấp dịch vụ điều trị và phẫu thuật miễn phí giúp thay đổi cuộc sống cho hơn 326.000 bệnh nhân trên khắp thế giới, giúp họ có thể sinh hoạt và tận hưởng cuộc sống khỏe mạnh hơn.  Nhân kỷ niệm 40 năm, tổ chức Operation Smile đưa ra cam kết chăm sóc y tế cho một triệu trẻ em toàn cầu trong 10 năm tới. Song song, tổ chức sẽ tiếp tục củng cố hệ thống y tế, cơ sở vật chất để hướng đến nâng cao chất lượng chăm sóc bệnh nhân, và rút ngắn bất bình đẳng trong các hệ thống chăm sóc sức khỏe. Với cam kết đó, tổ chức Operation Smile tại Việt Nam rất mong rằng trong hành trình sắp tới sẽ luôn nhận được sự ủng hộ và đồng hành của cộng đồng để mang lại sự thay đổi cho trẻ em Việt Nam.</p>',
1),
(73, 28,
'Chung tay thay đổi nụ cười, thay đổi cuộc sống trẻ em Việt Nam', 
'<p>Cứ ba phút lại có một trẻ em được sinh ra với tình trạng sứt môi. Hầu hết những em nhỏ này không nhận được sự chăm sóc y tế cần thiết vì chi phí điều trị lớn, không dễ tiếp cận hoặc không có các bác sĩ chuyên khoa có chuyên môn sâu. Do đó, sinh ra với những dị tật hở môi, hàm ếch có thể gây tử vong, suy dinh dưỡng, hoặc gặp tình trạng bị trêu chọc và bị cô lập.<br>
Trong khi đó, nếu nhận được sự hỗ trợ về y tế kịp thời thì chỉ mất 45 phút là cuộc sống của các em sẽ được thay đổi hoàn toàn. Để có được 45 phút đó rất cần sự nỗ lực lớn của toàn bộ đội ngũ y bác sĩ cùng các đơn vị đồng hành, các nhà hảo tâm. <br>
Trong dịp kỷ niệm đặc biệt cho hành trình bền bỉ 40 năm, Operation Smile kêu gọi sự ủng hộ chung tay của cộng đồng Heo Đất để gây quỹ giúp 40 em bé hở môi, hàm ếch nhận phẫu thuật hàn gắn nụ cười.</p>',
1),
(74, 29, 
'40 năm hành trình chữa lành nụ cười trẻ em', 
'<p>Năm 2022 là một năm đặc biệt với tổ chức Phẫu thuật Nụ Cười trên toàn cầu, đánh dấu 40 năm hoạt động của tổ chức trong việc chăm sóc y tế cho các bệnh nhân mắc dị tật hàm mặt, đặc biệt là trẻ em hở môi, hàm ếch.</p>
<p>Được thành lập vào năm 1982, Operation Smile đã cung cấp dịch vụ điều trị và phẫu thuật miễn phí giúp thay đổi cuộc sống cho hơn 326.000 bệnh nhân trên khắp thế giới, giúp họ có thể sinh hoạt và tận hưởng cuộc sống khỏe mạnh hơn.  Nhân kỷ niệm 40 năm, tổ chức Operation Smile đưa ra cam kết chăm sóc y tế cho một triệu trẻ em toàn cầu trong 10 năm tới. Song song, tổ chức sẽ tiếp tục củng cố hệ thống y tế, cơ sở vật chất để hướng đến nâng cao chất lượng chăm sóc bệnh nhân, và rút ngắn bất bình đẳng trong các hệ thống chăm sóc sức khỏe. Với cam kết đó, tổ chức Operation Smile tại Việt Nam rất mong rằng trong hành trình sắp tới sẽ luôn nhận được sự ủng hộ và đồng hành của cộng đồng để mang lại sự thay đổi cho trẻ em Việt Nam.</p>',
1),
(75, 30,
'Chung tay thay đổi nụ cười, thay đổi cuộc sống trẻ em Việt Nam', 
'<p>Cứ ba phút lại có một trẻ em được sinh ra với tình trạng sứt môi. Hầu hết những em nhỏ này không nhận được sự chăm sóc y tế cần thiết vì chi phí điều trị lớn, không dễ tiếp cận hoặc không có các bác sĩ chuyên khoa có chuyên môn sâu. Do đó, sinh ra với những dị tật hở môi, hàm ếch có thể gây tử vong, suy dinh dưỡng, hoặc gặp tình trạng bị trêu chọc và bị cô lập.<br>
Trong khi đó, nếu nhận được sự hỗ trợ về y tế kịp thời thì chỉ mất 45 phút là cuộc sống của các em sẽ được thay đổi hoàn toàn. Để có được 45 phút đó rất cần sự nỗ lực lớn của toàn bộ đội ngũ y bác sĩ cùng các đơn vị đồng hành, các nhà hảo tâm. <br>
Trong dịp kỷ niệm đặc biệt cho hành trình bền bỉ 40 năm, Operation Smile kêu gọi sự ủng hộ chung tay của cộng đồng Heo Đất để gây quỹ giúp 40 em bé hở môi, hàm ếch nhận phẫu thuật hàn gắn nụ cười.</p>',
1);

insert into imageContents (title, imageData, sort) value 
('Nhiều em nhỏ gặp khó khăn đã đến với chương trình phẫu thuật miễn phí cùng  Tổ chức Phẫu thuật Nụ Cười', 'https://drive.google.com/uc?export=view&id=1Sls5FOWVrL78Cc_PkNA5ANsrza1cxr_q', 1),
('Hãy tiếp tục cùng chúng tôi mang lại nhiều nụ cười hơn nữa', 'https://drive.google.com/uc?export=view&id=1kfElL8167A-WvM3h3cpAP509BDwgENWz',1 ),
('Cầu gỗ tạm bản Nậm Chua 2 có thể đổ sập gây bất cứ lúc nào','https://drive.google.com/uc?export=view&id=1gOhGHzUJ20Xwbthrw_GqxkTnrpPqvaA9', 1),
('Cứ mỗi mùa mưa lũ, nước dâng cao chảy siết, người dân mất cây cầu đi lại, mọi hoạt động sinh hoạt đều bị đình trệ','https://drive.google.com/uc?export=view&id=1Xh0CvQ_oCNwjaJIflXhsD6smNxEKKQbO', 1),
('Vất vả là thế, nhưng các em học sinh luôn biết vươn lên và phụ giúp gia đình để đỡ đần cha mẹ','https://drive.google.com/uc?export=view&id=1UMcbyXHULxAh-zpYMyzudqVV-FfNHmk4', 1),
('Nhiều em học sinh có hoàn cảnh khó khăn nhưng vẫn đạt học lực loại khá, giỏi','https://drive.google.com/uc?export=view&id=1IWyQrVJLHGE7JJ1FklvAKQKKlLxeDxJs', 1),
('Ước mơ của nhiều Người khuyết tật là có chiếc điện thoại thông minh để tiếp cận với nhiều thông tin hơn','https://drive.google.com/uc?export=view&id=12mMB0UFF44Sbb7A-DknHf1Nk9DyQuxy7', 1),
('Dự án “Hãy nắm tay tôi” cùng người khuyết tật khắc phục những thách thức trong tiếp cận y tế cơ bản','https://drive.google.com/uc?export=view&id=124HIcbctm11YpEiX0rHfBp_9ckjOxG3G', 1),
('Nhiều em nhỏ thiếu đi sự quan tâm của người lớn ở giai đoạn vị thành niên','https://drive.google.com/uc?export=view&id=16yFliVIhHXq8SkSFZQTad2KC26CO9UP7', 1),
('Chung tay giúp các em có thêm những kiến thức bổ ích trong cuộc sống','https://drive.google.com/uc?export=view&id=1UdfTlBbg-c36BkKhw-h9xYvSiZMViFLc', 1),
('Sau nhiều vất vả, hiện tại chú Mỹ đã tìm được nơi chốn cho những ngày tháng về sau','https://drive.google.com/uc?export=view&id=143UTpD_pbxoK5XdzsGp30Qv0LmQkwtQE', 1),
('Di chứng của tai nạn giao thông và tai biến vẫn luôn khiến sức khỏe của chú Mỹ gặp nhiều trở ngại','https://drive.google.com/uc?export=view&id=1PM8EugMMd9_0LLC534eXP6KgmLrVbHrR', 1),
('Cô Luyến đang sinh sống tại quán trọ Trăng Khuyết cùng nhiều cụ già neo đơn khác','https://drive.google.com/uc?export=view&id=1aWUZ6qOa6KwiyOhSBRbYxNCq79R5TpZm', 1),
('Chăm sóc và giúp đỡ các cụ già khác mang lại cho cô Luyến niềm động lực sống lớn lao','https://drive.google.com/uc?export=view&id=1pAZnoE1xQ0a-H55qX_jifX2f8ZU9bNB8', 1),
('Quán trọ Trăng Khuyết là nơi giúp chú Phúc Lâm không còn phải lo về bữa ăn giấc ngủ','https://drive.google.com/uc?export=view&id=1-opq7cXtBYQTaswR69N6q2ujW8of9yjd', 1),
('Chung tay giúp chú Phúc Lâm có chi phí trang trải việc khám chữa bệnh để vơi bớt phần nào nỗi đau','https://drive.google.com/uc?export=view&id=1-5yjWUnuZO_KSBCJqavPp-lrOSU_dWvt', 1),
('Chung tay hỗ trợ chi phí lắp đặt giếng khoan và hệ thống bơm nước sạch cho trường','https://drive.google.com/uc?export=view&id=11HPNdQ1Y8iLqEKSmpNA8oEEKWrnmPJlC', 1),
('Trường Phổ thông Dân tộc bán trú Tiểu học Mù Sang với 413 học sinh và 31 giáo viên','https://drive.google.com/uc?export=view&id=1ew6wkFWN6De60Sb5S1Ot_KXwO8Fz47ER', 1),
('Cận cảnh cây cầu bản Pa Kha được người dân dựng tạm bằng gỗ ọp ẹp','https://drive.google.com/uc?export=view&id=1tLUg5raU6_d83Qv8P9tkypiX-i-fHzOJ', 1),
('Những cọc gỗ lung lay, không chịu được sức nặng của người qua lại, có thể đổ sập gây bất cứ lúc nào','https://drive.google.com/uc?export=view&id=18M7OTXLdrf40mhO4DMkH_KkMhAnNJ8nE', 1),
('Mùa đông về, các em nhỏ vùng cao sẽ đối mặt với cái lạnh khắc nghiệt ','https://drive.google.com/uc?export=view&id=1O4yOYKKxAwb0rXdwrfIJ6RWCAMioPpN5', 1),
('Một chiếc áo ấm cũng sẽ góp phần sưởi ấm mùa đông đang tới dần cho các em nhỏ','https://drive.google.com/uc?export=view&id=1vSzQaoJ8HurE0N5rZEKVOpZ3vdg2W7d2', 1),
('Những sân chơi xanh là giải pháp tối ưu giúp trẻ hòa mình cùng thiên nhiên và thoải mái vui đùa','https://drive.google.com/uc?export=view&id=1JYAx0NUENLRnUob1PwFRXUzpi7oDEtOY', 1),
('Sân chơi nhỏ ngoài trời của các bé có ít thiết bị và đang dần xuống cấp, cần được bảo dưỡng, cải tạo','https://drive.google.com/uc?export=view&id=1B4lf7pojIeD-j3CW56b7EVdDXXA7pa9n', 1),
('Sân trường ngập nước trong mùa mưa của trường Tiểu học Tân Thuận 3','https://drive.google.com/uc?export=view&id=1zKqkQyPy_f7Gmo65CN0qsIy7zuCovCJX', 1),
('Các em phải chào cờ và vui chơi dưới sân trường không mái che','https://drive.google.com/uc?export=view&id=1968_Ib77lJ2xAvAMR3fJJ_MPuydl3nIT', 1),
('Hơn 326.000 bệnh nhân trên khắp thế giới đã được chữa trị miễn phí với Operation Smile, trong đó có Thanh Ngân', 'https://drive.google.com/uc?export=view&id=1sP1exdY4ctq4TAQe9oqIuThnvTf2tzSA', 1),
('Hơn 63,000 bệnh nhân tại Việt Nam đã được chữa lành nụ cười trong nhiều năm qua','https://drive.google.com/uc?export=view&id=1XP-10S9qyE1NRxMZnqFqDUU1N3UQn7E9', 1),
('Hoàn cảnh khó khăn, thiếu thốn trăm bề của những em nhỏ mồ côi','https://drive.google.com/uc?export=view&id=1oBGN7SL9sfzGtS5GtPofkMdFSvLymOHj', 1),
('Nhiều em nhỏ đang cùng gia đình sống trong căn nhà cũ lụp xụp','https://drive.google.com/uc?export=view&id=1kcgvyWGfYQb86h6aB56cG2pxURmrCRO9', 1);


insert into donations(campaignId, userId, donorId, amount, currencyUnit, notes, payment) value
(1, 16, 1, 1000000, 'VND', '', 'Ví momo'),
(2, 17, 2, 2000000, 'VND', '', 'Ví momo'),
(3, 18, 3, 1000000, 'VND', '', 'Ví momo'),
(4, 19, 4, 2000000, 'VND', '', 'Ví momo'),
(5, 20, 5, 1000000, 'VND', '', 'Ví momo'),
(6, 21, 6, 2000000, 'VND', '', 'Ví momo'),
(7, 22, 7, 1000000, 'VND', '', 'Ví momo'),
(8, 23, 8, 2000000, 'VND', '', 'Ví momo'),
(9, 24, 9, 1000000, 'VND', '', 'Ví momo'),
(10, 25, 10, 2000000, 'VND', '', 'Ví momo'),
(11, 26, 11, 1000000, 'VND', '', 'Ví momo'),
(12, 27, 12, 2000000, 'VND', '', 'Ví momo'),
(13, 28, 13, 1000000, 'VND', '', 'Ví momo'),
(14, 29, 14, 2000000, 'VND', '', 'Ví momo'),
(15, 30, 15, 1000000, 'VND', '', 'Ví momo');

alter table donations
add foreign key (donorId) references donors(id);
alter table donors
add foreign key (userId) references users(id);
alter table inforusers
add foreign key (userId) references users(id);
alter table campaigns
add foreign key (orgId) references orgs(id),
add foreign key (userId) references users(id),
add foreign key (categoryId) references categories(id);
alter table orgs
add foreign key (userId) references users(id);
alter table imageorgs
add foreign key (orgId) references orgs(id);
alter table articles 
add foreign key (userId) references users(id),
add foreign key (campaignId) references campaigns(id);
alter table comments
add foreign key (userId) references users(id),
add foreign key (articleId) references articles(id);
alter table sections
add foreign key (articleId) references articles(id);
alter table inforusers
add foreign key (userId) references users(id);

select * from contents;
select * from imagecontents;
alter table contents
add foreign key (imageContentId) references imagecontents(id),
add foreign key (sectionId) references sections(id);

select * from  articles;
select * from campaigns;
select * from categories;
select * from comments;
select * from contents;
select * from donations;
select * from donors;
select * from imagecontents;
select * from imageorgs;
select * from orgs; 
select * from sections;
select * from users;
select * from inforusers;