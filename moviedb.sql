create database moviedb;
use moviedb;

create table quocgia(
	id int auto_increment,
    ten_quocgia varchar(255),
    
    primary key(id)
);

create table loaiphim(
	id int auto_increment,
    ten_loai varchar(255),
	hinh_anh text,
    
    primary key(id)
);

create table phim(
	id bigint auto_increment,
    id_quocgia int,
    ten_phim varchar(255),
    hinh_anh text,
    ngay_tao datetime default now(),
    mo_ta text,
    
    primary key(id),
    foreign key(id_quocgia) references quocgia(id)
);

create table loaiphim_phim(
	id bigint auto_increment,
	id_phim bigint,
    id_loaiphim int,
    
    primary key(id),
    foreign key(id_phim) references phim(id),
    foreign key(id_loaiphim) references loaiphim(id)
);

create table chitietphim(
	id bigint auto_increment,
    id_phim bigint,
    tap varchar(10),
    link_phim text,
    
    primary key(id),
    foreign key(id_phim) references phim(id)
);

insert into quocgia(ten_quocgia) values('Việt Nam');
insert into quocgia(ten_quocgia) values('America');

insert into loaiphim(ten_loai,hinh_anh) values ('Action','action.jpg');
insert into loaiphim(ten_loai,hinh_anh) values ('Comedy','comedy.jpg');
insert into loaiphim(ten_loai,hinh_anh) values ('Thriller','thriller.jpg');
insert into loaiphim(ten_loai,hinh_anh) values ('Horror','horror.jpg');
insert into loaiphim(ten_loai,hinh_anh) values ('Adventure','adventure.jpg');
insert into loaiphim(ten_loai,hinh_anh) values ('Animated','animated.jpg');
insert into loaiphim(ten_loai,hinh_anh) values ('Crime','crime.jpg');
insert into loaiphim(ten_loai,hinh_anh) values ('SCI-FI','sci-fi.jpg');

insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'Red Notice','red-notice.jpg','Tác phẩm lấy bối cảnh cuộc chiến chống tội phạm đa quốc gia của các nhân viên Interpol đang trở nên nóng hơn bao giờ hết. Hành trình truy dấu các tên tội phạm trộm cướp chuyên nghiệp và tinh vi đang được ưu tiên hàng đầu. Dwayne Johnson vào vai nhân viên đặc vụ FBI - John Hartley, người được mệnh danh là kẻ theo dấu vĩ đại nhất trên thế giới. Nhiệm vụ của anh lần này là truy bắt cặp siêu trộm thần bí và nguy hiểm đang bị truy nã.
Còn Ryan Reynolds sẽ hóa thân thành một thiên tài lừa đảo khét tiếng trong Lệnh truy nã đỏ - Red Notice tên là Nolan Booth, người đang bị truy nã xếp thứ hai trên thế giới. Nolan Booth sau đó đã được John Hartley thua để giúp anh tóm được siêu trộm nghệ thuật Sarah Black, còn được gọi là The Bishop (Gal Gadot), một cô nàng phù thuỷ chuyên đánh cắp các tác phẩm nghệ thuật đắt giá nhất thế giới và có nguồn tin cô ta đang để ý tới những quả trứng Cleopatra vô giá.
Vậy nhưng trong một diễn biến bất ngờ, cả ba đã vô tình hội tụ với nhau, miễn cưỡng hợp tác vì lợi ích chung của cả ba. Từ đó mở ra những câu chuyện hài hước và kịch tính tiếp nối sẽ được hé lộ trong tác phẩm Red Notice - Lệnh truy nã đỏ.
Tác phẩm là kết hợp của những màn tấu hài đỉnh cao và những pha hành động mãn nhãn, với dàn cast không chê vào đâu được. Bộ ba gồm Dwayne Johnson, Ryan Reynolds và bóng hồng Gal Gadot hứa hẹn sẽ mang đến một bom tấn hành động đỉnh cao và đậm chất giải trí.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(2,'Spider-Man: Homecoming','spider-men.jpg','Được chuyển thể từ truyện tranh cùng tên của Marvel, Người Nhện: Trở Về Nhà là bộ phim điện ảnh thứ 7 có sự góp mặt của nhân vật mang tính văn hóa đại chúng này. Với kinh phí 175 triệu USD, đây là một trong những bộ phim siêu anh hùng hoành tráng nhất 2017.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'The Matrix Resurrections','matrix.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'Eternals','eternals.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'Dune','dune.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(2,'1917','1917.jpg','Được chuyển thể từ truyện tranh cùng tên của Marvel, Người Nhện: Trở Về Nhà là bộ phim điện ảnh thứ 7 có sự góp mặt của nhân vật mang tính văn hóa đại chúng này. Với kinh phí 175 triệu USD, đây là một trong những bộ phim siêu anh hùng hoành tráng nhất 2017.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'Shang-Chi and The Legend of The Ten Rings','shang-chi.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'Casino Royale','casino-royale.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'The Dark Knight','dark-knight.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(2,'Black Panther','panther.jpg','Được chuyển thể từ truyện tranh cùng tên của Marvel, Người Nhện: Trở Về Nhà là bộ phim điện ảnh thứ 7 có sự góp mặt của nhân vật mang tính văn hóa đại chúng này. Với kinh phí 175 triệu USD, đây là một trong những bộ phim siêu anh hùng hoành tráng nhất 2017.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'Venom','venom.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'Lord Of The Rings: Return Of The King','LOTR.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'Saving Private Ryan','saving-private-ryan.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'Interstellar','interstaller.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'Gladiator','gladiator.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'Avengers: Endgame','endgame.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'Wonder Woman 1984','ww84.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');
insert into phim(id_quocgia,ten_phim,hinh_anh,mo_ta) values(1,'Captain Marvel','captain-marvel.jpg','Ma trận: Hồi sinh là phim điện ảnh Mỹ thuộc thể loại hành động khoa học viễn tưởng, do Lana Wachowski làm biên kịch, đạo diễn và sản xuất. Đây là phần thứ tư trong loạt phim cùng tên, tiếp nối phần ba Ma Trận: Những cuộc Cách Mạng, từ năm 2003.');

insert into loaiphim_phim(id_phim,id_loaiphim) values(1,1);
insert into loaiphim_phim(id_phim,id_loaiphim) values(1,2);
insert into loaiphim_phim(id_phim,id_loaiphim) values(2,2);
insert into loaiphim_phim(id_phim,id_loaiphim) values(3,1);
insert into loaiphim_phim(id_phim,id_loaiphim) values(4,1);
insert into loaiphim_phim(id_phim,id_loaiphim) values(5,1);
insert into loaiphim_phim(id_phim,id_loaiphim) values(6,2);
insert into loaiphim_phim(id_phim,id_loaiphim) values(7,1);
insert into loaiphim_phim(id_phim,id_loaiphim) values(8,1);
insert into loaiphim_phim(id_phim,id_loaiphim) values(9,1);
insert into loaiphim_phim(id_phim,id_loaiphim) values(10,1);
insert into loaiphim_phim(id_phim,id_loaiphim) values(11,1);
insert into loaiphim_phim(id_phim,id_loaiphim) values(12,2);
insert into loaiphim_phim(id_phim,id_loaiphim) values(13,1);
insert into loaiphim_phim(id_phim,id_loaiphim) values(14,1);
insert into loaiphim_phim(id_phim,id_loaiphim) values(15,1);
insert into loaiphim_phim(id_phim,id_loaiphim) values(16,2);
insert into loaiphim_phim(id_phim,id_loaiphim) values(17,1);
insert into loaiphim_phim(id_phim,id_loaiphim) values(18,1);


DELIMITER //
create procedure GetAllPhimWithId(id bigint)
begin
	select * from phim p where p.id = id;
end//
DELIMITER ;
 
delimiter //
create procedure GetAllPhim()
begin
	select p.ten_phim, p.hinh_anh, p.ngay_tao, p.mo_ta, qg.ten_quocgia
	from phim p
	join quocgia qg on p.id_quocgia=qg.id;
end//    
delimiter ;

delimiter //
create procedure GetPhimByQuocGia(id_quocgia int)
begin
	select p.id, p.ten_phim as tenPhim, p.hinh_anh, p.ngay_tao, p.mo_ta, qg.ten_quocgia
	from phim p
	join quocgia qg on p.id_quocgia=qg.id
    where qg.id=id_quocgia;
end//
delimiter ;

delimiter //
create procedure GetPhimWithCategory()
begin
	select p.id, p.ten_phim , p.hinh_anh, group_concat(lp.ten_loai separator '/') as ten_loai 
	from phim p
	join loaiphim_phim lpp on p.id=lpp.id_phim
	join loaiphim lp on lpp.id_loaiphim=lp.id
	group by p.id;
end//
delimiter ;

/*thực thi 1 store procedure*/
call GetAllPhim;
call GetPhimByQuocGia(1);
