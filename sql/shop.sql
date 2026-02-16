-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 16, 2026 lúc 03:46 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `active_pages`
--

CREATE TABLE `active_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `active_pages`
--

INSERT INTO `active_pages` (`id`, `name`, `enabled`) VALUES
(1, 'blog', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `bic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `image`, `url`, `time`) VALUES
(2, 'IMG_1206.jpg', 'Cách_ăn_táo_đỏ_khô_nhiều_bổ_dưỡng_Bài_thuốc_táo_đỏ_2', 1771062649),
(3, 'IMG_1162.jpg', ' Saffron_3', 1771063000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `title`, `description`, `abbr`, `for_id`) VALUES
(10, '20+ Cách ăn táo đỏ khô nhiều bổ dưỡng – Bài thuốc táo đỏ', '<p>Không chỉ được biết đến là thực phẩm thơm ngon, nước táo đỏ còn là bài thuốc bổ dưỡng mang đến nhiều lợi ích cho sức khỏe. Thật khó để chối từ những món ăn dinh dưỡng từ táo đỏ. Bài viết sau đây của <em>mình&nbsp;</em>sẽ hướng dẫn những cách ăn táo đỏ khô đơn giản, dễ thực hiện mà vẫn giữ nguyên giá trị dinh dưỡng cho bạn. Lưu lại những công thức này để biến tấu táo đỏ mỗi ngày thành những món ngon hấp dẫn nhé!&nbsp;</p>\r\n\r\n<h2>Cách ăn táo đỏ khô đúng cách giữ nguyên giá trị dinh dưỡng</h2>\r\n\r\n<p>Nếu biết cách ăn&nbsp;<a href=\"https://vi.wikipedia.org/wiki/T%C3%A1o_t%C3%A0u\" rel=\"noopener\" target=\"_blank\"><strong>táo đỏ khô</strong></a>&nbsp;đúng chuẩn thì bạn có thể thoải mái chế biến mà không lo hàm lượng dinh dưỡng bị hao hụt. Táo đỏ khô vốn một loại nguyên liệu quen thuộc trong các bài thuốc đông y, gần đây đã trở nên gần gũi và quen thuộc với mọi người bởi nhiều tác dụng tốt cho sức khỏe.</p>\r\n\r\n<figure aria-describedby=\"caption-attachment-15735\" id=\"attachment_15735\"><img alt=\"Táo đỏ chứa nhiều chất dinh dưỡng, vitamin\" decoding=\"async\" fetchpriority=\"high\" height=\"500\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-2-2.jpg\" srcset=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-2-2.jpg 800w, https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-2-2-300x188.jpg 300w, https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-2-2-768x480.jpg 768w, https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-2-2-600x375.jpg 600w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-15735\">Táo đỏ chứa nhiều chất dinh dưỡng, vitamin</figcaption>\r\n</figure>\r\n\r\n<h3>1. Lưu ý khi chế biến táo đỏ</h3>\r\n\r\n<p>Táo đỏ khô có thể nấu kèm với rất nhiều món ăn, cách nấu đơn giản không cần lưu ý nhiều. Tuy nhiên, để nước nấu thêm ngọt và dùng táo đỏ không phát sinh tác dụng phụ thì nên lưu ý những việc cơ bản như sau:</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Táo đỏ khô dùng để nấu các món hầm nên ngâm với nước ấm cho nở mềm trước khi dùng. Tùy vào yêu cầu của món ăn, nếu là các món trà hoặc chè táo đỏ có thể ngâm khoảng 15 phút trước khi dùng là được.</li>\r\n	<li aria-level=\"1\">Ngâm táo đỏ còn có tác dụng giúp táo sạch và để nước dùng trong hơn, không bị sẫm màu.</li>\r\n	<li aria-level=\"1\">Táo đỏ ngâm rượu nên chọn những quả nhỏ, đều màu với lớp vỏ mỏng và nhăn nhiều.</li>\r\n</ul>\r\n\r\n<figure aria-describedby=\"caption-attachment-15664\" id=\"attachment_15664\"><img alt=\"Nuga Food cung cấp táo đỏ chất lượng\" decoding=\"async\" height=\"500\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-5.jpg\" srcset=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-5.jpg 800w, https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-5-300x188.jpg 300w, https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-5-768x480.jpg 768w, https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-5-600x375.jpg 600w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-15664\">Nuga Food cung cấp táo đỏ chất lượng</figcaption>\r\n</figure>\r\n\r\n<h3>2. Công thức chế biến táo đỏ chi tiết</h3>\r\n\r\n<p>Sau đây là những cách chế biến táo đỏ khô tại nhà dành cho chị em đang phân vân táo đỏ nấu gì ngon. Những món ăn với đủ hương đủ vị lại không quá cầu kỳ, chỉ cần dành ra chút thời gian là đã hoàn thành được món ngon từ táo đỏ giàu dinh dưỡng cho cả gia đình.</p>\r\n\r\n<h4>2.1. Cách nấu yến sào với táo đỏ</h4>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Yến sào và táo đỏ mang đi ngâm nước ấm khoảng 20 phút cho nở mềm rồi vớt để ráo nước. Hạt sen cũng mang ngâm với nước trong 60 phút để hạt mềm hơn trước khi nấu.</li>\r\n	<li aria-level=\"1\">Bước 2: Hạt sen và táo đỏ cho vào hầm chung đến khi chín nhừ và nước cạn quánh lại.</li>\r\n	<li aria-level=\"1\">Bước 3: Chưng cách thủy yến khoảng 30-45 phút, có thể cho thêm đường phèn tùy theo khẩu vị để dễ ăn hơn. Tiếp tục đun khoảng 10 phút nữa rồi cho yến sang hỗn hợp táo đỏ và hạt sen đã nấu xong. Tiếp tục đun lửa nhỏ 5 phút nữa là hoàn thành.</li>\r\n</ul>\r\n\r\n<p>Yến sào chưng cùng táo đỏ là bài thuốc giúp chống suy nhược thần kinh và hỗ trợ tăng sức đề kháng.&nbsp;<a href=\"https://nugafood.vn/cach-chung-yen-voi-tao-do/\"><strong>Cách chưng yến sào với táo đỏ thơm ngon</strong></a>&nbsp;có thể dùng cho sản phụ cần bổ sung khí huyết, bổ não và hồi phục sức khỏe sau sinh. Người cao tuổi cũng có thể ăn yến sào táo đỏ để tăng cường thể lực, ngủ sâu, ăn ngon miệng hơn.</p>\r\n\r\n<figure aria-describedby=\"caption-attachment-15844\" id=\"attachment_15844\"><img alt=\"Yến chưng với táo đỏ thơm ngon, bổ dưỡng\" decoding=\"async\" height=\"500\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://nugafood.vn/wp-content/uploads/2023/06/mua-tao-do-o-dau-2.jpg\" srcset=\"https://nugafood.vn/wp-content/uploads/2023/06/mua-tao-do-o-dau-2.jpg 800w, https://nugafood.vn/wp-content/uploads/2023/06/mua-tao-do-o-dau-2-300x188.jpg 300w, https://nugafood.vn/wp-content/uploads/2023/06/mua-tao-do-o-dau-2-768x480.jpg 768w, https://nugafood.vn/wp-content/uploads/2023/06/mua-tao-do-o-dau-2-600x375.jpg 600w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-15844\">Yến chưng với táo đỏ thơm ngon, bổ dưỡng</figcaption>\r\n</figure>\r\n\r\n<h4>2.2. Cách làm táo đỏ ngâm mật ong</h4>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Dùng 150g táo đỏ rửa sạch với nước nấu cùng 50g đường phèn trên lửa nhỏ. Đun đến khi nào nước cạn hết và đường ngấm đều vào táo thì tắt bếp.</li>\r\n	<li aria-level=\"1\">Bước 2: Dùng muỗng trộn đều hỗn hợp sau đó đổ từ từ 250ml mật ong nguyên chất vào. Tiếp tục đảo đều tay để các thành phần hòa quyện với nhau nhưng chỉ nhẹ nhàng thôi để tránh làm nát táo đỏ.</li>\r\n	<li aria-level=\"1\">Bước 3: Tắt bếp đợi hỗn hợp nguội bớt rồi cho vào lọ thủy tinh đã rửa sạch dùng nắng đậy kín. Nên bảo quản táo đỏ ngâm mật ong trong ngăn mát tủ lạnh để dùng được lâu hơn nhé!</li>\r\n</ul>\r\n\r\n<p>Táo đỏ và mật ong cùng có tính ấm vậy nên sự kết hợp này rất thích hợp để làm ấm người vào mùa đông. Uống táo đỏ ngâm mật ong thường xuyên giúp bổ sung nguyên khí, cung cấp thêm nhiệt lượng. Cách làm táo đỏ ngâm mật ong nhanh chóng lại không kén người dùng, bất cứ ai cũng có thể uống.</p>\r\n\r\n<figure aria-describedby=\"caption-attachment-16113\" id=\"attachment_16113\"><img alt=\"Táo đỏ khô ngâm mât ong\" decoding=\"async\" height=\"500\" loading=\"lazy\" sizes=\"auto, (max-width: 800px) 100vw, 800px\" src=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-an-tao-do-kho-1.jpg\" srcset=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-an-tao-do-kho-1.jpg 800w, https://nugafood.vn/wp-content/uploads/2023/06/cach-an-tao-do-kho-1-300x188.jpg 300w, https://nugafood.vn/wp-content/uploads/2023/06/cach-an-tao-do-kho-1-768x480.jpg 768w, https://nugafood.vn/wp-content/uploads/2023/06/cach-an-tao-do-kho-1-600x375.jpg 600w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-16113\">Táo đỏ khô ngâm mât ong</figcaption>\r\n</figure>\r\n\r\n<h4>2.3. Cách làm trà đương quy táo đỏ mật ong</h4>\r\n\r\n<p><a href=\"https://nugafood.vn/cach-pha-tra-tao-do/\"><strong>Cách pha trà táo đỏ</strong></a>&nbsp;mật ong đương quy rất đơn giản, rửa sạch 2 quả táo đỏ để ráo. Với khẩu phần cho 1 người dùng 1 lần thì hãy lấy thêm 2 lát đương quy và 6 quả kỷ tử nếu muốn. Sau đó cho cả 3 nguyên liệu vào ấm, đổ nước sôi rồi hãm như trà thông thường. Cuối cùng chỉ cần rót trà ra ly, thêm một ít mật ong để trung hòa vị giác, tạo độ ngọt thanh dễ uống hơn.</p>\r\n\r\n<p>Trà táo đỏ mật ong với đương quy có thể dùng mỗi ngày để tăng cường tuần hoàn máu, bổ thận, đẹp da. Đặc biệt là cách nấu nước táo đỏ này còn giúp chống lão hóa cho chị em.</p>\r\n\r\n<figure aria-describedby=\"caption-attachment-15254\" id=\"attachment_15254\"><img alt=\"Trà táo đỏ rất tốt cho sức khỏe\" decoding=\"async\" height=\"500\" loading=\"lazy\" sizes=\"auto, (max-width: 800px) 100vw, 800px\" src=\"https://nugafood.vn/wp-content/uploads/2023/06/tra-ky-tu-4.jpg\" srcset=\"https://nugafood.vn/wp-content/uploads/2023/06/tra-ky-tu-4.jpg 800w, https://nugafood.vn/wp-content/uploads/2023/06/tra-ky-tu-4-300x188.jpg 300w, https://nugafood.vn/wp-content/uploads/2023/06/tra-ky-tu-4-768x480.jpg 768w, https://nugafood.vn/wp-content/uploads/2023/06/tra-ky-tu-4-600x375.jpg 600w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-15254\">Trà táo đỏ rất tốt cho sức khỏe</figcaption>\r\n</figure>\r\n\r\n<h4>2.4. Cách làm nước táo đỏ hạt chia</h4>\r\n\r\n<p>Cách nấu táo đỏ hạt chia vô cùng đơn giản nhưng rất hiệu quả để hạ nhiệt, giải khát. Một ly nước táo đỏ hạt chia sẽ là thức uống thanh nhiệt mùa hè phù hợp cho mọi lứa tuổi, dù trẻ em, bà bầu hay người già đều có thể dùng được.</p>\r\n\r\n<p>Cắt táo đỏ thành từng lát mỏng rồi cho vào bình cùng hạt chia và đường phèn. Rót nước sôi vào, đậy nắp khoảng 10 phút để hãm giống như cách hãm trà. Đây là cách làm nước táo đỏ hạt chia nhanh và dễ dàng. Nhưng nếu muốn hiệu quả của hạt chia được tốt hơn hãy ngâm riêng với nước lạnh rồi cho vào nước táo đỏ ấm trước khi dùng. Bạn có thể thử thêm thêm một số nguyên liệu để làm nha đam hạt chia táo đỏ cũng rất ngon đấy.</p>\r\n\r\n<figure aria-describedby=\"caption-attachment-16024\" id=\"attachment_16024\"><img alt=\"Táo đỏ ngâm hạt chia bổ dưỡng\" decoding=\"async\" height=\"500\" loading=\"lazy\" sizes=\"auto, (max-width: 800px) 100vw, 800px\" src=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-1.jpg\" srcset=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-1.jpg 800w, https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-1-300x188.jpg 300w, https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-1-768x480.jpg 768w, https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-1-600x375.jpg 600w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-16024\">Táo đỏ ngâm hạt chia bổ dưỡng</figcaption>\r\n</figure>\r\n\r\n<h4>2.5. Tim lợn hầm hạt sen táo đỏ</h4>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Táo đỏ và hạt sen đem ngâm với nước, tim lợn cần sơ chế kỹ để loại bỏ mùi hôi.</li>\r\n	<li aria-level=\"1\">Bước 2: Phi thơm hành băm rồi sau đó cho phần hạt sen đã hầm nhuyễn vào xào sơ. Cho tiếp vào nồi 1 lít nước sôi, thêm tim lợn, cà rốt và chút muối rồi ninh trong 10 phút.</li>\r\n	<li aria-level=\"1\">Bước 3: Bây giờ cho táo đỏ vào nồi rồi tiếp tục ninh trong khoảng 30 – 35 phút cho các nguyên liệu đều chín mềm. Cuối cùng chỉ cần nêm nếm lại cho vừa miệng và tắt bếp rồi bày lên đĩa và thưởng thức thôi.</li>\r\n</ul>\r\n\r\n<p>Tim lợn hầm hạt sen có vị ngọt lành và thanh mát chắc chắn sẽ là ăn ngon, bổ dưỡng cho cả gia đình bạn.</p>\r\n\r\n<h4>2.6. Cách nấu chè đậu xanh táo đỏ</h4>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Ngâm 10 quả táo đỏ và 20g đậu xanh với nước.</li>\r\n	<li aria-level=\"1\">Bước 2: Giã nát 20g lá bạch quả tươi 20g cho vào nồi cùng 600ml nước và đường trắng để đun sôi.</li>\r\n	<li aria-level=\"1\">Bước 3: Lọc nước, bỏ bã lá bạch quả sau đó mới đổ đậu xanh và táo đã ngâm vào nấu lửa nhỏ đến khi chín nhừ thì tắt bếp.</li>\r\n</ul>\r\n\r\n<p>Chè đậu xanh nấu cùng táo đỏ là món ăn có tác dụng bổ huyết rất hợp cho những người bị trúng gió, bệnh tim hay cao huyết áp sử dụng.</p>\r\n\r\n<h4>2.7. Cách pha saffron với táo đỏ</h4>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Cho táo đỏ đã rửa sạch và saffron vào hũ thủy tinh có nắp đậy kín. Nếu muốn dùng thêm kỷ tử vào cách ngâm táo đỏ với mật ong thì cũng cho luôn vào lúc này.</li>\r\n	<li aria-level=\"1\">Bước 2: Rót mật ong ngập các nguyên liệu sau đó đậu thật kín. Vì cả saffron và táo đỏ đều nổi trên bề mặt hũ mật ong. Vậy nên đừng quên thường xuyên đảo chiều để mật ong quyện với saffron và táo đỏ nhé!</li>\r\n	<li aria-level=\"1\">Bước 3: Sau 2-3 ngày ngâm là có thể sử dụng saffron với táo đỏ rồi đấy. Dùng 1 thìa mật ong ngâm saffron táo đỏ pha với khoảng 200ml nước ấm để uống buổi sáng sẽ là thời điểm thích hợp nhất.</li>\r\n</ul>\r\n\r\n<p>Cách pha saffron với táo đỏ đem lại nhiều tác dụng như làm đẹp da, chống lão hóa, thải độc tố, giúp vóc dáng thon gọn,…</p>\r\n\r\n<h4>2.8. Cách nấu sườn hầm táo đỏ</h4>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Sườn hầm táo đỏ cần phải mang đi ninh nhừ với khoảng 500ml trên lửa nhỏ trước.</li>\r\n	<li aria-level=\"1\">Bước 2: Kiểm tra thấy sườn mềm và chín mới cho cho táo đỏ, hạt sen, ngô vào hầm cùng. Tiếp tục đun ở lửa nhỏ khoảng 30 phút thì nêm nếm gia vị vừa ăn rồi tắt bếp là xong.</li>\r\n	<li aria-level=\"1\">Bước 3: Canh hạt sen táo đỏ hầm sườn non đã hoàn thành rồi đấy, chỉ cần múc ra bát thưởng thức thôi.</li>\r\n</ul>\r\n\r\n<p>Cách dùng táo đỏ khô hầm với sườn quả đúng là đơn giản đúng không nào? Chỉ cần bỏ chút thời gian là bạn đã nấu được món canh sườn táo đỏ ngon ngọt bổ dưỡng cho cả gia đình bổ sung dưỡng chất.</p>\r\n\r\n<h4>2.9. Cách nấu nấm linh chi với táo đỏ</h4>\r\n\r\n<p>Táo đỏ nấu với gì? Tiếp theo đây sẽ là món nấm linh chi nấu táo đỏ, kết hợp lại sẽ là siêu thực phẩm giúp tăng cường hệ miễn dịch, cân bằng lượng đường trong máu. Ngoài ra&nbsp;<a href=\"https://nugafood.vn/tac-dung-cua-nam-linh-chi-va-tao-do/\"><strong>tác dụng của nấm linh chi và táo đỏ</strong></a>&nbsp;còn có hỗ trợ thải bỏ độc tố nên món ăn này được khuyên dùng cho các đối tượng có cơ địa nhạy cảm như phụ nữ mang thai.</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Cho nấm linh chi, cam thảo, táo đỏ vào ấm trà rồi đổ trực tiếp nước sôi vào để hãm trà linh chi táo đỏ. Đừng quên đậy nắp thật kín trong vòng 10 phút để trà ngon và đậm vị.</li>\r\n	<li aria-level=\"1\">Bước 2: Cách nấu nấm linh chi với táo đỏ này có thể cho đường phèn để vừa vị để uống. Loại trà này có thể hãm tiếp để uống lần nữa, khi nào bạn cảm thấy vị không còn ngon thì mới bỏ đi. Lưu ý là trà táo đỏ với linh chi chỉ nên dùng trong ngày thôi nhé. Bạn có thể kết hợp thêm một số nguyên liệu để nấu cùng nấm linh chi táo đỏ.</li>\r\n</ul>\r\n\r\n<figure aria-describedby=\"caption-attachment-15998\" id=\"attachment_15998\"><img alt=\"Trà nấm linh chi và táo đỏ\" decoding=\"async\" height=\"500\" loading=\"lazy\" sizes=\"auto, (max-width: 800px) 100vw, 800px\" src=\"https://nugafood.vn/wp-content/uploads/2023/06/nam-linh-chi-va-tao-do-4.jpg\" srcset=\"https://nugafood.vn/wp-content/uploads/2023/06/nam-linh-chi-va-tao-do-4.jpg 800w, https://nugafood.vn/wp-content/uploads/2023/06/nam-linh-chi-va-tao-do-4-300x188.jpg 300w, https://nugafood.vn/wp-content/uploads/2023/06/nam-linh-chi-va-tao-do-4-768x480.jpg 768w, https://nugafood.vn/wp-content/uploads/2023/06/nam-linh-chi-va-tao-do-4-600x375.jpg 600w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-15998\">Trà nấm linh chi và táo đỏ</figcaption>\r\n</figure>\r\n\r\n<h4>2.10. Cách nấu chân giò hầm táo đỏ</h4>\r\n\r\n<p>Chân giò hầm táo đỏ sẽ là món ăn với táo đỏ tiếp theo, đây chắc chắn sẽ là món ăn vừa bổ dưỡng lại vừa kích thích vị giác nhận được sự yêu thích của rất nhiều người. Nếu bạn chưa biết món canh táo đỏ nào dành riêng cho phụ nữ mang thai thì hãy thử ngay chân giò hầm táo đỏ nhé!</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Táo đỏ và đậu nành ngâm trong 20 phút để nở rồi vớt ra cho ráo nước. Gừng mang đi gọt vỏ thái lát mỏng và chân giò cần chần sơ trước khi nấu.</li>\r\n	<li aria-level=\"1\">Bước 2: Cho móng giò, gừng, đậu nành và nồi sau đó thêm lượng nước vừa đủ vào đun sôi. Vớt bọt nếu có và vặn nhỏ lửa, hầm liên tục trong 2 giờ.</li>\r\n	<li aria-level=\"1\">Bước 3: Khi chân giò đủ mềm thì cho táo đỏ vào và nấu thêm 30 phút nữa trước khi nêm nếm.</li>\r\n</ul>\r\n\r\n<figure aria-describedby=\"caption-attachment-15846\" id=\"attachment_15846\"><img alt=\"Chân giò hầm táo đỏ bổ sung nhiều Vitamin\" decoding=\"async\" height=\"500\" loading=\"lazy\" sizes=\"auto, (max-width: 800px) 100vw, 800px\" src=\"https://nugafood.vn/wp-content/uploads/2023/06/mua-tao-do-o-dau-4.jpg\" srcset=\"https://nugafood.vn/wp-content/uploads/2023/06/mua-tao-do-o-dau-4.jpg 800w, https://nugafood.vn/wp-content/uploads/2023/06/mua-tao-do-o-dau-4-300x188.jpg 300w, https://nugafood.vn/wp-content/uploads/2023/06/mua-tao-do-o-dau-4-768x480.jpg 768w, https://nugafood.vn/wp-content/uploads/2023/06/mua-tao-do-o-dau-4-600x375.jpg 600w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-15846\">Chân giò hầm táo đỏ bổ sung nhiều Vitamin</figcaption>\r\n</figure>\r\n\r\n<h4>2.11. Cách nấu chè hạt sen đậu xanh táo đỏ</h4>\r\n\r\n<p>Các món từ táo đỏ tiếp theo sẽ là những món&nbsp;<a href=\"https://nugafood.vn/cach-nau-che-hat-sen-tao-do/\"><strong>chè hạt sen táo đỏ đơn giản</strong></a>&nbsp;với những nguyên liệu phô thông mà hầu như bất kỳ ai trong chúng ta đều đã dùng qua rồi. Cùng tìm hiểu nhé!</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Đầu tiên cho hạt sen và đậu xanh cùng 30g đường trắng vào nồi để sên cho hạt đậm vị. Lưu ý phải để lửa vừa và đảo đều tay để không có tình trạng cháy dính dưới đáy nồi.</li>\r\n	<li aria-level=\"1\">Bước 2: Cho 1,2 lít nước vào nồi hạt sen vừa sên, bật lửa lớn nấu đến khi nồi chè sôi thì hớt bỏ bọt. Tiếp tục cho táo đỏ 200g đường thốt nốt vào để nấu.</li>\r\n	<li aria-level=\"1\">Bước 3: Hạ nhỏ lửa rồi đậy kín nắp để ninh hạt sen, đậu xanh và táo đỏ cho thật mềm trong khoảng 20 phút là được.</li>\r\n</ul>\r\n\r\n<p>Cách nấu chè hạt sen đậu xanh táo đỏ cho ra thành quả thơm ngon, thanh mát rất tốt để giải nhiệt, an thần và cải thiện giấc ngủ.</p>\r\n\r\n<figure aria-describedby=\"caption-attachment-16025\" id=\"attachment_16025\"><img alt=\"Chè táo đỏ hạt sen giúp cải thiện giấc ngủ\" decoding=\"async\" height=\"500\" loading=\"lazy\" sizes=\"auto, (max-width: 800px) 100vw, 800px\" src=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-2.jpg\" srcset=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-2.jpg 800w, https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-2-300x188.jpg 300w, https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-2-768x480.jpg 768w, https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-2-600x375.jpg 600w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-16025\">Chè táo đỏ hạt sen giúp cải thiện giấc ngủ</figcaption>\r\n</figure>\r\n\r\n<h4>2.12. Cách nấu nước táo đỏ đường phèn</h4>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Táo đỏ sau khi rửa sạch thì bỏ hạt và cắt thành từng miếng nhỏ vừa ăn.</li>\r\n	<li aria-level=\"1\">Bước 2: Cách nấu táo đỏ đường phèn chỉ cần đun sôi nước rồi cho táo đỏ và đường phèn vào nấu thêm khoảng 15 phút là được.</li>\r\n	<li aria-level=\"1\">Bước 3: Cho nước táo đỏ vừa nấu ra ly và đợi bớt nóng để thưởng thức thôi nào! Có thể lọc bỏ bã táo hoặc không tùy vào sở thích của bạn, độ ngọt được điều chỉnh dựa trên khẩu vị của mỗi người.</li>\r\n</ul>\r\n\r\n<p>Nước táo đỏ đường phèn có thể dùng cho mọi đối tượng, mùa đông giúp giữ ấm cho cơ thể và phòng cảm cúm. Mùa hè uống nước táo đỏ lại có thể giúp giải nhiệt, thanh lọc cơ thể và tăng sức đề kháng.</p>\r\n\r\n<h4>2.13. Cách nấu chè đậu đen táo đỏ</h4>\r\n\r\n<p>Cách ăn táo đỏ khô không thể bỏ qua món chè đậu đen táo đỏ thanh mát. Món chè thơm ngon này sẽ giúp giải nhiệt, cải thiện sắc đẹp, duy trì làn da tươi tắn tràn đầy sức sống. Nếu không nấu thành món chè thì nước đậu đen táo đỏ cũng là một món ngon.</p>\r\n\r\n<p>Đậu đen và táo đỏ đều rửa sạch và ngâm với nước để mềm hơn. Cho khoảng 2 lít nước vào nồi nấu chung với táo đỏ và lá dứa trước. Sau khi sôi mới cho đậu đen vào, hạ nhỏ lửa để hầm cho chè thật mềm. Cách nấu chè đậu đen táo đỏ loãng hay đặc, ngọt ít hay nhiều bạn cứ gia giảm nước và đường tùy thích nhé!</p>\r\n\r\n<h4>2.14. Bồ câu hầm hạt sen táo đỏ</h4>\r\n\r\n<p>Món bồ câu hầm táo đỏ hạt sen sẽ là một món ngon phù hợp làm ấm người trong những ngày se lạnh đúng không? Bạn cũng có thể thay bồ câu thành gà hầm hạt sen táo đỏ. Vừa ăn ngon lại còn tăng sức đề kháng, bổ sung năng lượng và tốt cho trí não thì ngại gì không thử ngay hôm nay.</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Bồ câu sau khi sơ chế thì rửa sạch với nước muối loãng, ướp cùng tiêu, hạt nêm, muối, bột nghệ, dầu hào. Nên ướp ít nhất 30 phút để gia vị thấm đều vào bồ câu.</li>\r\n	<li aria-level=\"1\">Bước 2: Đậu gà cần ngâm qua đêm còn hạt sen, đậu xanh và táo đỏ chỉ cần ngâm trước 1 tiếng. Cho kỷ tử, đậu gà, hạt sen, đậu xanh, củ cải vào nồi đất hầm cùng chim câu với lượng nước lọc xăm sắp.</li>\r\n	<li aria-level=\"1\">Bước 3: Ninh lửa nhỏ khoảng 20 phút rồi cho thêm một bát nước, tiếp sau đói cho lê và cà rốt baby vào nồi. Bây giờ chỉ cần hầm cho tất cả nguyên liệu đều chín mềm là được.</li>\r\n</ul>\r\n\r\n<h4>2.15. Cách làm lê hấp táo đỏ trị ho</h4>\r\n\r\n<p>Món ngon với táo đỏ không thể bỏ qua chính là lê hấp táo đỏ, món này có tác dụng trị ho rất hiệu quả cho cả người lớn và trẻ em. Nếu cho bé dùng mẹ có thể thay mật ong thành đường phèn và chưng cách thủy khoảng 20 phút nhé! Ngoài ra nếu muốn dùng táo đỏ trị ho có thể làm trà gừng táo đỏ mật ong cũng rất hấp dẫn.</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Lê mang đi rửa sạch, để ráo sau đó cắt nắp và khoét cho rỗng ruột.</li>\r\n	<li aria-level=\"1\">Bước 2: Ngâm 3 quả táo đỏ cùng vài quả kỷ tử trong nước ấm 15 phút. Có thể thêm chút gừng băm nhỏ để gia tăng hiệu quả trị ho.</li>\r\n	<li aria-level=\"1\">Bước 3: Cho tất cả các nguyên liệu vào quả lê rỗng ruột, thêm 3 thìa mật ong cùng vài hạt muối vào. Bật bếp đun cách thủy trên lửa nhỏ tầm 15 phút là hoàn thành. Nên ăn ngay lúc nóng để thấy hiệu quả giảm ho nhanh chóng.</li>\r\n</ul>\r\n\r\n<figure aria-describedby=\"caption-attachment-16117\" id=\"attachment_16117\"><img alt=\"Lê hấp táo đỏ trị ho\" decoding=\"async\" height=\"500\" loading=\"lazy\" sizes=\"auto, (max-width: 800px) 100vw, 800px\" src=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-an-tao-do-kho-1-1.jpg\" srcset=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-an-tao-do-kho-1-1.jpg 800w, https://nugafood.vn/wp-content/uploads/2023/06/cach-an-tao-do-kho-1-1-300x188.jpg 300w, https://nugafood.vn/wp-content/uploads/2023/06/cach-an-tao-do-kho-1-1-768x480.jpg 768w, https://nugafood.vn/wp-content/uploads/2023/06/cach-an-tao-do-kho-1-1-600x375.jpg 600w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-16117\">Lê hấp táo đỏ trị ho</figcaption>\r\n</figure>\r\n\r\n<h4>2.16. Pha trà hồng sâm táo đỏ</h4>\r\n\r\n<p>Chế biến hồng sâm cùng với táo đỏ là một sự kết hợp đúng đắn cho những người không chịu được vị đắng của sâm. Trà hồng sâm táo đỏ có công dụng tăng cường hoạt động của não, cải thiện trí nhớ giúp phục hồi trí nhớ.</p>\r\n\r\n<p>Hồng sâm cắt lát, dùng 4-10gr hồng sâm thì pha cùng 3-4 trái táo đỏ. Cho nguyên liệu vào bình thủy tinh hoặc bình sứ rồi đổ nước sôi vào. Ủ khoảng 10 phút như những loại trà táo đỏ khác là có thể dùng. Đây cũng là cách chế biến táo đỏ thường dành cho các chủ danh nghiệp dùng làm quà biếu.</p>\r\n\r\n<h4>2.17. Làm nước long nhãn táo đỏ</h4>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Táo đỏ rửa sạch, cắt lát và ngâm với nước ít nhất 1 tiếng trước khi nấu.</li>\r\n	<li aria-level=\"1\">Bước 2: Cho cả táo đỏ và phần nước ngâm vào nấu chung với long nhãn. Đun sôi khoảng 25 phút để các nguyên liệu chín đều rồi cho thêm kỷ tử vào đảo đều 5 phút nữa. Có thể thêm một chút đường phèn nếu thích uống nước long nhãn táo đỏ có vị ngọt nhé!</li>\r\n</ul>\r\n\r\n<p>Nước long nhãn táo đỏ có công thức đơn giản nhưng hiệu quả giải nhiệt lại rất tốt. Những ngày hè nóng nực hãy tự thưởng cho mình một ly nước táo đỏ bạn nhé!</p>\r\n\r\n<figure aria-describedby=\"caption-attachment-16027\" id=\"attachment_16027\"><img alt=\"Nước long nhãn táo đỏ\" decoding=\"async\" height=\"500\" loading=\"lazy\" sizes=\"auto, (max-width: 800px) 100vw, 800px\" src=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-4.jpg\" srcset=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-4.jpg 800w, https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-4-300x188.jpg 300w, https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-4-768x480.jpg 768w, https://nugafood.vn/wp-content/uploads/2023/06/cach-chung-yen-voi-tao-do-4-600x375.jpg 600w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-16027\">Nước long nhãn táo đỏ</figcaption>\r\n</figure>\r\n\r\n<h4>2.18. Cách ngâm rượu táo đỏ</h4>\r\n\r\n<p><a href=\"https://nugafood.vn/cach-ngam-ruou-tao-do-kho/\"><strong>Táo đỏ ngâm rượu thanh nhiệt</strong></a>&nbsp;mang lại công dụng thanh lọc cơ thể, hỗ trợ giải độc cho thận và gan. Ngoài ra sử dụng điều độ còn giúp kích thích, tăng cường tiêu hóa và ăn ngon miệng hơn nữa đấy. Với những ai ưa thích trưng bày rượu ngâm thì đừng quên thử thưởng thức cách chế biến này nhé! Để tăng thêm dược tính bạn có thể ngâm thêm kỷ tử Ninh Hạ với táo đỏ.</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Táo đỏ khô rửa qua với nước muối loãng rồi tiếp tục tráng lại với rượu trắng sau đó vớt ra để ráo.</li>\r\n	<li aria-level=\"1\">Bước 2: Dùng dao khía một đường trên quả táo hoặc thái lát theo chiều ngang đều được.</li>\r\n	<li aria-level=\"1\">Bước 3: Cho táo đã sơ chế vào bình ngâm, cứ 1kg táo đỏ khô sẽ ngâm cùng 4-5 lít rượu là ngon ngọt chuẩn vị nhất.</li>\r\n</ul>\r\n\r\n<h4>2.19. Cách nấu cháo táo đỏ</h4>\r\n\r\n<p>Món ngon từ táo đỏ cuối cùng mà Nuga Food muốn chia sẻ là món&nbsp;<a href=\"https://nugafood.vn/cach-nau-chao-tao-do-kho/\"><strong>cháo táo đỏ bổ dưỡng</strong></a>. Nếu bạn đang tìm kiếm táo đỏ làm món gì bổ thận, dưỡng não thì món cháo này chính là sự lựa chọn hoàn hảo. Nên ăn cháo này lúc nóng sẽ càng thơm ngon hơn, vừa ấm người lại tận hưởng được trọn vẹn hương vị</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Bước 1: Táo đỏ rửa sạch để ráo rồi mới bỏ hạt, mang đi thái lát mỏng vừa ăn. Gạo tẻ vo sạch.</li>\r\n	<li aria-level=\"1\">Bước 2: Cho táo đỏ, hạt sen, gạo tẻ vào nồi sau đó đổ ngập nước và đun lửa lớn. Khi cháo sôi bùng rồi mới hạ nhỏ lửa nhỏ để ninh các nguyên liệu cho thật mềm như cách nấu cháo bình thường.</li>\r\n</ul>\r\n\r\n<p>Vậy là Nuga Food vừa chia sẻ xong 21 cách nấu táo đỏ khô đơn giản mà bất kỳ ai cũng có thể thực hiện, bạn hãy thườn xuyên thay đổi các món ăn nấu từ táo đỏ để tránh gây nhàm chán cũng như bổ sung thêm nhiều dưỡng chất cho cơ thể nhé!</p>\r\n\r\n<h2>Táo đỏ khô ăn sống được không?</h2>\r\n\r\n<p>Theo bạn nghĩ táo đỏ khô ăn sống được không? Không cần nghĩ nhiều, câu trả lời chắc chắn là Có. Trên thực tế, táo đỏ vốn được xử lý từ táo tàu tươi, nên có rất nhiều người gọi táo đỏ là táo tàu khô. Do vậy, táo đỏ khô hoàn toàn có thể ăn sống trực tiếp mà không cần nấu hay chế biến gì thêm. Tuy nhiên, vì được sấy khô nên táo đỏ khá cứng, bạn có thể cắt thành những lát mỏng và ngậm trong miệng sẽ cảm nhận được vị ngọt và thơm tự nhiên.</p>\r\n\r\n<figure aria-describedby=\"caption-attachment-15684\" id=\"attachment_15684\"><img alt=\"Táo đỏ khô chứa nhiều dinh dưỡng\" decoding=\"async\" height=\"500\" loading=\"lazy\" sizes=\"auto, (max-width: 800px) 100vw, 800px\" src=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-1-1.jpg\" srcset=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-1-1.jpg 800w, https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-1-1-300x188.jpg 300w, https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-1-1-768x480.jpg 768w, https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-1-1-600x375.jpg 600w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-15684\">Táo đỏ khô chứa nhiều dinh dưỡng</figcaption>\r\n</figure>\r\n\r\n<h2>Những lợi ích của táo đỏ đối với sức khỏe</h2>\r\n\r\n<p>Có lẽ mọi người đều biết đến táo tàu, táo đỏ được sử dụng trong đông y như một vị thuốc. Nhưng&nbsp;<a href=\"https://nugafood.vn/tao-do-kho/\"><strong>táo đỏ có tác dụng gì</strong></a>&nbsp;cụ thể thì không phải ai cũng hiểu rõ. Sau đây là những công dụng nổi bật của táo đỏ khô có thể sẽ khiến bạn bất ngờ.</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Ăn táo đỏ có tác dụng ngăn ngừa và hỗ trợ điều trị một số bệnh ung thư nguy hiểm.</li>\r\n	<li aria-level=\"1\">Giúp ổn định huyết áp và phòng chống một số bệnh lý về tim mạch.</li>\r\n	<li aria-level=\"1\">Ngăn ngừa táo bón, tăng cường khả năng hấp thu các chất dinh dưỡng cũng như cải thiện sức khỏe đường ruột.</li>\r\n	<li aria-level=\"1\">Chứa nhiều dưỡng chất quan trọng giúp kích thích lưu thông tuần hoàn máu và hỗ trợ thanh lọc máu.</li>\r\n	<li aria-level=\"1\">Kháng khuẩn, giúp chống lại sự xâm nhập của các loại vi trùng, virus cảm cúm.</li>\r\n	<li aria-level=\"1\">Làm chậm tiến trình oxy hóa trong cơ thể từ đó có khả năng cải thiện hoạt động của hệ miễn dịch.</li>\r\n	<li aria-level=\"1\">Hạt táo đỏ không nên bỏ phí vì nó&nbsp; cũng có nhiều tác dụng như an thần, chữa mất ngủ, chống co giật. Đồng thời rất hữu ích để bảo vệ tế bào não, kích thích mọc tóc…</li>\r\n</ul>\r\n\r\n<h2>Những ai nên dùng táo đỏ khô</h2>\r\n\r\n<p>Táo đỏ khô tốt cho sức khỏe là điều không cần phải bàn cãi nhiều. Tuy nhiên không phải đối tượng nào cũng nên dùng táo đỏ khô thường xuyên. Dưới đây là một số đối tượng nên hạn chế hoặc tránh sử dụng táo đỏ:</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Phụ nữ đang trong kỳ kinh nguyệt</li>\r\n	<li aria-level=\"1\">Người đàm thấp</li>\r\n	<li aria-level=\"1\">Người mắc bệnh tiểu đường</li>\r\n	<li aria-level=\"1\">Người vừa bị cảm</li>\r\n	<li aria-level=\"1\">Người thượng hỏa (mẫu người có thể chất hơi nóng)</li>\r\n</ul>\r\n\r\n<p>Đối tượng hạn chế không có nghĩa là không nên dùng, chỉ là không nên dùng quá nhiều và thương xuyên. Có rất nhiều cách chế biến táo đỏ thành nhiều món ngon, do vậy bạn vẫn có thể biến tấu và sử dụng táo đỏ với liều lượng phù hợp.</p>\r\n\r\n<h2>Những lưu ý cần biết khi dùng táo đỏ khô</h2>\r\n\r\n<p>Để đảm bảo tính an toàn và hiệu quả khi dùng táo đỏ bạn nên lưu ý một số điểm như sau:</p>\r\n\r\n<ul>\r\n	<li>Trẻ em, phụ nữ trong thai kỳ hoặc đang cho con bú cần hỏi ý kiến của bác sĩ nếu muốn dùng táo đỏ như một vị thuốc chữa bệnh.</li>\r\n	<li>Khi sử dụng có dấu hiệu ngộ độc hoặc dị ứng cần lập tức ngừng sử dụng và đến ngay các cơ sở y tế để kiểm tra.</li>\r\n	<li>Táo đỏ trong đông y được cho là kỵ&nbsp; bạch vị và nguyên sâm vậy nên khi chế biến món ăn không nên phối hợp chúng với nhau.</li>\r\n	<li>Chỉ sử dụng táo đỏ có nguồn gốc rõ ràng, chất lượng được đảm bảo, tránh xa hàng trôi nổi có hiện tượng nấm mốc.</li>\r\n</ul>\r\n\r\n<p>.</p>\r\n\r\n<h2>Giá táo đỏ bao nhiêu và nên mua ở đâu?</h2>\r\n\r\n<p>Táo đỏ khô đang được bán trên thị trường với giá khoảng 170.000đ đến 300.000đ cho 1kg. Để tránh tình trạng tiền mất tật mang do mua phải táo đỏ kém chất lượng bạn hãy chọn một&nbsp;<strong><a href=\"https://nugafood.vn/mua-tao-do-o-dau/\">địa chỉ mua táo đỏ uy tín</a></strong>&nbsp;nhé. Phải đảm bảo nguồn gốc xuất xứ, hàm lượng dinh dưỡng thì táo đỏ mới có thể phát huy được tác dụng của mình.</p>\r\n\r\n<figure aria-describedby=\"caption-attachment-15734\" id=\"attachment_15734\"><img alt=\"Nuga Food chuyên cung cấp táo đỏ uy tín\" decoding=\"async\" height=\"500\" loading=\"lazy\" sizes=\"auto, (max-width: 800px) 100vw, 800px\" src=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-3-2.jpg\" srcset=\"https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-3-2.jpg 800w, https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-3-2-300x188.jpg 300w, https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-3-2-768x480.jpg 768w, https://nugafood.vn/wp-content/uploads/2023/06/cach-nhan-biet-tao-do-tan-cuong-3-2-600x375.jpg 600w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-15734\">Nuga Food chuyên cung cấp táo đỏ uy tín</figcaption>\r\n</figure>\r\n\r\n<p>Nuga Food tự hào là địa chỉ cung cấp hạt dinh dưỡng và trái cây sấy chất lượng cao được nhiều khách hàng tin tưởng. Hiện nay Nuga Food đang cung cấp sản phẩm Táo đỏ Tân Cương hữu cơ khô tự nhiên. Mọi giấy tờ về kiểm định chất lượng và chứng minh nguồn gốc nhập khẩu đều được công khai cho khách hàng nên bạn có thể hoàn toàn yên tâm. Nhanh chóng liên hệ với Nuga Food qua thông tin liên hệ sau đây để được tư vấn và đặt mua táo đỏ bạn nhé!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Tổng hợp các câu hỏi về cách ăn táo đỏ khô hay nhất</h2>\r\n\r\n<p>Dưới đây là top những câu hỏi thường gặp nhất về cách ăn táo đỏ khô, giúp bạn biết cách dùng đúng để tốt cho sức khỏe.</p>\r\n\r\n<h3>1. Một ngày nên ăn bao nhiêu táo đỏ khô là hợp lý?</h3>\r\n\r\n<p>Trung bình một ngày bạn nên ăn 5–10 quả táo đỏ để bổ sung dinh dưỡng. Nếu bạn ăn quá nhiều có thể gây dư đường và khó tiêu.</p>\r\n\r\n<h3 data-end=\"757\" data-start=\"694\">2. Ăn táo đỏ khô có giúp ngủ ngon và giảm căng thẳng thật không?</h3>\r\n\r\n<p data-end=\"471\" data-start=\"261\">Câu trả lời là có. Táo đỏ chứa hoạt chất giúp an thần, hỗ trợ tuần hoàn máu, được dùng để pha trà và chè nhằm cải thiện giấc ngủ và giảm mệt mỏi.</p>\r\n\r\n<h3 data-end=\"554\" data-start=\"489\">3. Ăn nhiều táo đỏ khô có gây nổi mụn hoặc nóng trong người không?</h3>\r\n\r\n<p>Táo đỏ có thể gây nổi mụn và nóng trong người bởi vì táo đỏ khô chứa lượng đường tự nhiên khá cao. Khi ăn quá nhiều, cơ thể dễ bị nóng trong, nổi mụn hoặc đầy bụng.</p>\r\n\r\n<h3 data-end=\"714\" data-start=\"647\">4. Người cao tuổi ăn táo đỏ khô thế nào để bồi bổ sức khỏe tốt nhất?</h3>\r\n\r\n<p>Những người cao tuổi nên ăn 3–5 quả mỗi ngày, có thể nấu chè với hạt sen, kỷ tử hoặc hầm với gà, chim bồ câu để bổ huyết và tăng sức đề kháng.</p>\r\n\r\n<h3 data-end=\"714\" data-start=\"647\">5. Có nên ngâm rượu với táo đỏ khô để tăng cường sức khỏe không?</h3>\r\n\r\n<p>Có thể ngâm rượu táo đỏ vì rượu táo đỏ giúp lưu thông khí huyết và làm ấm cơ thể. Nhưng cần lưu ý nên uống lượng nhỏ từ 10–20ml/ngày và không dùng cho những người bị cao huyết áp, gan yếu hoặc phụ nữ mang thai.</p>\r\n\r\n<p>Vừa rồi là những thông tin về cách ăn táo khô và những công thức chế biến táo đỏ hấp dẫn tại nhà. Sự phối hợp nguyên liệu trong từng món nước táo đỏ, món chè hay các món canh hầm phức tạp hơn đều mang đến những lợi ích tuyệt vời cho sức khỏe. Hy vọng bài viết này đã đem đền kiến thức hữu ích và cho bạn thật nhiều công thức nấu ăn ngon!</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'en', 2),
(11, '20多种红枣干的健康吃法，营养又滋补 – 红枣养生食疗大全', '<p>&nbsp;</p>\r\n\r\n<p>不仅仅是美味食品，红枣水更是一味营养滋补的食疗佳品，为身体带来诸多健康益处。面对红枣制作的各种营养美食，实在令人难以抗拒。本文将为大家介绍多种简单易做的红枣干食用方法，在保留营养价值的同时，让你每天都能变换出不同的美味做法。赶快收藏这些食谱，把红枣变成每日健康美味吧！</p>\r\n\r\n<hr />\r\n<h2>正确食用红枣干，保留营养价值</h2>\r\n\r\n<p>如果掌握正确的红枣干食用方法，就可以放心烹饪而不必担心营养流失。红枣干原本是中医常用的食材之一，近年来因其多种健康功效而变得更加普及。</p>\r\n\r\n<p>红枣富含多种营养成分和维生素。</p>\r\n\r\n<hr />\r\n<h2>一、红枣烹饪注意事项</h2>\r\n\r\n<p>红枣干可以搭配多种菜肴，做法简单。但为了让汤水更加清甜，同时避免产生副作用，应注意以下几点：</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>用于炖汤的红枣应先用温水浸泡至软再使用。若用于煮茶或甜汤，浸泡约15分钟即可。</p>\r\n	</li>\r\n	<li>\r\n	<p>浸泡红枣还能清洁果面，使汤色更清澈不发暗。</p>\r\n	</li>\r\n	<li>\r\n	<p>用于泡酒的红枣应选择果实小、颜色均匀、果皮薄且皱纹较多的。</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>二、红枣干详细做法</h2>\r\n\r\n<p>以下是在家制作红枣干的多种方法，简单易做，营养丰富，适合全家食用。</p>\r\n\r\n<hr />\r\n<h3>2.1 红枣炖燕窝</h3>\r\n\r\n<p>步骤：</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>将燕窝和红枣用温水浸泡约20分钟至软，沥干水分。莲子浸泡60分钟。</p>\r\n	</li>\r\n	<li>\r\n	<p>将莲子和红枣一起炖至软烂。</p>\r\n	</li>\r\n	<li>\r\n	<p>燕窝隔水炖30–45分钟，可加入冰糖调味，再炖10分钟后加入红枣莲子中，小火煮5分钟即可。</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>功效：有助于增强免疫力、改善神经衰弱，适合产妇及老年人食用。</p>\r\n\r\n<hr />\r\n<h3>2.2 红枣蜂蜜浸泡</h3>\r\n\r\n<p>步骤：</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>150克红枣洗净，与50克冰糖小火煮至收汁。</p>\r\n	</li>\r\n	<li>\r\n	<p>加入250毫升纯蜂蜜搅拌均匀。</p>\r\n	</li>\r\n	<li>\r\n	<p>放入干净玻璃瓶中密封冷藏保存。</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>功效：暖身补气，适合冬季饮用。</p>\r\n\r\n<hr />\r\n<h3>2.3 当归红枣蜂蜜茶</h3>\r\n\r\n<p>2枚红枣、2片当归、6粒枸杞，用沸水冲泡10分钟，加蜂蜜调味。</p>\r\n\r\n<p>功效：促进血液循环，补肾养颜，抗衰老。</p>\r\n\r\n<hr />\r\n<h3>2.4 红枣奇亚籽饮</h3>\r\n\r\n<p>将红枣切片与奇亚籽、冰糖一起用热水冲泡10分钟即可。清热解暑，适合各年龄层。</p>\r\n\r\n<hr />\r\n<h3>2.5 猪心莲子红枣汤</h3>\r\n\r\n<p>猪心处理干净，与莲子、红枣炖煮约30分钟。</p>\r\n\r\n<p>功效：滋补养心。</p>\r\n\r\n<hr />\r\n<h3>2.6 红枣绿豆甜汤</h3>\r\n\r\n<p>绿豆、红枣小火慢煮至软烂。</p>\r\n\r\n<p>功效：补血、清热。</p>\r\n\r\n<hr />\r\n<h3>2.7 红枣藏红花饮</h3>\r\n\r\n<p>红枣搭配藏红花与蜂蜜浸泡2–3天，每日温水冲饮。</p>\r\n\r\n<p>功效：美容养颜、排毒抗氧化。</p>\r\n\r\n<hr />\r\n<h3>2.8 红枣排骨汤</h3>\r\n\r\n<p>排骨炖软后加入红枣、莲子、玉米再炖30分钟。</p>\r\n\r\n<p>营养丰富，增强体力。</p>\r\n\r\n<hr />\r\n<h3>2.9 灵芝红枣茶</h3>\r\n\r\n<p>灵芝、甘草、红枣冲泡10分钟。</p>\r\n\r\n<p>功效：增强免疫力，调节血糖。</p>\r\n\r\n<hr />\r\n<h3>2.10 猪蹄红枣汤</h3>\r\n\r\n<p>猪蹄与黄豆炖2小时，再加红枣炖30分钟。</p>\r\n\r\n<p>适合孕妇滋补。</p>\r\n\r\n<hr />\r\n<h3>2.11 莲子绿豆红枣甜汤</h3>\r\n\r\n<p>莲子、绿豆炒香后加水煮，加入红枣和红糖煮20分钟。</p>\r\n\r\n<p>安神助眠。</p>\r\n\r\n<hr />\r\n<h3>2.12 冰糖红枣水</h3>\r\n\r\n<p>红枣去核切块，与冰糖煮15分钟即可。</p>\r\n\r\n<p>冬暖夏凉。</p>\r\n\r\n<hr />\r\n<h3>2.13 红枣黑豆甜汤</h3>\r\n\r\n<p>黑豆与红枣同煮，清热美容。</p>\r\n\r\n<hr />\r\n<h3>2.14 乳鸽红枣莲子汤</h3>\r\n\r\n<p>乳鸽与莲子红枣炖煮，补气养血。</p>\r\n\r\n<hr />\r\n<h3>2.15 红枣蒸梨止咳</h3>\r\n\r\n<p>梨挖空加入红枣、枸杞、蜂蜜蒸15分钟。</p>\r\n\r\n<p>止咳润肺。</p>\r\n\r\n<hr />\r\n<h3>2.16 红参红枣茶</h3>\r\n\r\n<p>红参4–10克搭配3–4枚红枣冲泡。</p>\r\n\r\n<p>增强记忆力。</p>\r\n\r\n<hr />\r\n<h3>2.17 龙眼红枣水</h3>\r\n\r\n<p>红枣与龙眼煮25分钟，清热解暑。</p>\r\n\r\n<hr />\r\n<h3>2.18 红枣泡酒</h3>\r\n\r\n<p>1公斤红枣配4–5升白酒浸泡。</p>\r\n\r\n<p>促进血液循环。</p>\r\n\r\n<hr />\r\n<h3>2.19 红枣粥</h3>\r\n\r\n<p>红枣、莲子、大米同煮至软。</p>\r\n\r\n<p>补肾养脑。</p>\r\n\r\n<hr />\r\n<h2>红枣干可以直接吃吗？</h2>\r\n\r\n<p>可以。红枣干由新鲜红枣晒干制成，可直接食用。但口感较硬，建议切片慢慢含食。</p>\r\n\r\n<hr />\r\n<h2>红枣对健康的好处</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>预防和辅助抗癌</p>\r\n	</li>\r\n	<li>\r\n	<p>稳定血压</p>\r\n	</li>\r\n	<li>\r\n	<p>改善肠道健康</p>\r\n	</li>\r\n	<li>\r\n	<p>促进血液循环</p>\r\n	</li>\r\n	<li>\r\n	<p>抗菌抗病毒</p>\r\n	</li>\r\n	<li>\r\n	<p>抗氧化增强免疫力</p>\r\n	</li>\r\n	<li>\r\n	<p>红枣核可安神助眠</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>哪些人应慎用红枣？</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>经期女性</p>\r\n	</li>\r\n	<li>\r\n	<p>痰湿体质者</p>\r\n	</li>\r\n	<li>\r\n	<p>糖尿病患者</p>\r\n	</li>\r\n	<li>\r\n	<p>感冒发热者</p>\r\n	</li>\r\n	<li>\r\n	<p>体质偏热者</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>使用注意事项</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>孕妇及哺乳期女性应咨询医生</p>\r\n	</li>\r\n	<li>\r\n	<p>出现过敏应立即停用</p>\r\n	</li>\r\n	<li>\r\n	<p>避免与某些中药同用</p>\r\n	</li>\r\n	<li>\r\n	<p>选择来源正规、无霉变产品</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>红枣价格及购买建议</h2>\r\n\r\n<p>市场价格约170,000–300,000越盾/公斤。建议选择正规渠道购买，确保质量安全。</p>\r\n\r\n<hr />\r\n<h2>&nbsp;</h2>\r\n', 'zh', 2);
INSERT INTO `blog_translations` (`id`, `title`, `description`, `abbr`, `for_id`) VALUES
(12, 'Saffron Là Gì? Điều Cần Biết Về Nhụy Hoa Nghệ Tây', '<p>Trong thế giới gia vị cao cấp, saffron được mệnh danh là “vàng đỏ” với giá trị dinh dưỡng và y học vượt trội. Nhưng nhụy hoa nghệ tây là gì mà lại được săn đón đến vậy? Bài viết này sẽ chia sẻ 10 điều quan trọng nhất về loại thảo dược này mà bạn cần biết trước khi sử dụng.</p>\r\n\r\n<h2>Saffron là gì? (Nhụy hoa nghệ tây là gì?)</h2>\r\n\r\n<p>Saffron hay nhụy hoa nghệ tây là những sợi nhụy được lấy từ hoa của cây nghệ tây (Crocus sativus). Mỗi bông hoa nghệ tây chỉ có đúng 3 sợi nhụy màu đỏ cam đặc trưng, chứa đựng tinh hoa của thiên nhiên.</p>\r\n\r\n<p>Những sợi nhụy này có màu đỏ đậm, hình dáng mảnh dài và mang hương thơm độc đáo, hơi ngọt và hơi cay. Thành phần dinh dưỡng của chúng bao gồm vitamin C, vitamin A, kali, canxi, sắt, magie cùng các hoạt chất quý như crocin, safranal, picrocrocin. Chính những thành phần này tạo nên&nbsp;<a href=\"https://vuasaffron.com/blog/cong-dung-saffron-luu-y#chat_luong_cao\">công dụng của saffron</a>&nbsp;được nhiều người tin dùng.</p>\r\n\r\n<p>Để có được 1kg nhụy hoa nghệ tây, cần phải thu hoạch khoảng 170.000 bông hoa và tách nhụy hoàn toàn bằng thủ công. Chính vì vậy mà loại gia vị này được coi là đắt đỏ nhất thế giới.</p>\r\n\r\n<p><img alt=\"Nghệ tây là gì? Nghệ tây có công dụng thế nào mà đắt hơn vàng? - Saffron  Việt Nam\" data-lazy-src=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-nghe-tay-la-gi-1.jpg\" data-ll-status=\"loaded\" decoding=\"async\" height=\"383\" src=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-nghe-tay-la-gi-1.jpg\" width=\"600\" /></p>\r\n\r\n<h2>Nguồn gốc của Saffron (Nhụy hoa nghệ tây)</h2>\r\n\r\n<p>Nhụy hoa nghệ tây có nguồn gốc từ vùng Địa Trung Hải, có thể là Hy Lạp hoặc Tây Nam Á. Từ hàng ngàn năm trước, loại gia vị quý này đã được sử dụng trong các hoạt động thờ cúng, làm thuốc và nhuộm vải.</p>\r\n\r\n<p>Hiện nay, Iran được công nhận là quốc gia sản xuất saffron chất lượng cao nhất thế giới, chiếm gần 90% sản lượng toàn cầu. Điều kiện khí hậu khô nóng, đất tơi xốp và có mạch nước ngầm tại các vùng như Mashhad, Khorasan đã tạo nên những cây nghệ tây cho ra những sợi nhụy tốt nhất.</p>\r\n\r\n<p>Ngoài Iran, một số quốc gia khác như Tây Ban Nha, Hy Lạp, Ấn Độ, Thổ Nhĩ Kỳ cũng trồng nghệ tây nhưng chất lượng không thể sánh bằng Iran. Tổ chức Lương thực và Nông nghiệp Liên Hợp Quốc (FAO) đã công nhận nhụy hoa nghệ tây Iran là loại tốt nhất thế giới.</p>\r\n\r\n<p><img alt=\"Nước nhụy hoa nghệ tây để qua đêm có tốt không? Cách bảo quản nước nhụy hoa  nghệ tây - Nhà thuốc FPT Long Châu\" data-lazy-sizes=\"(max-width: 800px) 100vw, 800px\" data-lazy-src=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-nhuy_hoa_nghe_tay_de_qua_dem_co_tot_khong_1_c530f913e6-1.jpg\" data-lazy-srcset=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-nhuy_hoa_nghe_tay_de_qua_dem_co_tot_khong_1_c530f913e6-1.jpg 800w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-nhuy_hoa_nghe_tay_de_qua_dem_co_tot_khong_1_c530f913e6-1-533x400.jpg 533w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-nhuy_hoa_nghe_tay_de_qua_dem_co_tot_khong_1_c530f913e6-1-768x576.jpg 768w\" data-ll-status=\"loaded\" decoding=\"async\" height=\"600\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-nhuy_hoa_nghe_tay_de_qua_dem_co_tot_khong_1_c530f913e6-1.jpg\" srcset=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-nhuy_hoa_nghe_tay_de_qua_dem_co_tot_khong_1_c530f913e6-1.jpg 800w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-nhuy_hoa_nghe_tay_de_qua_dem_co_tot_khong_1_c530f913e6-1-533x400.jpg 533w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-nhuy_hoa_nghe_tay_de_qua_dem_co_tot_khong_1_c530f913e6-1-768x576.jpg 768w\" width=\"800\" /></p>\r\n\r\n<h2>Các cách sử dụng Saffron (Nhụy hoa nghệ tây) hiệu quả nhất</h2>\r\n\r\n<p>Để tận dụng tối đa công dụng của nhụy hoa nghệ tây, bạn có thể tham khảo các cách sử dụng phổ biến và hiệu quả dưới đây:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Pha Saffron với nước ấm uống hàng ngày</h3>\r\n\r\n	<p>Cách đơn giản nhất là pha với nước ấm. Bạn ngâm 3-5 sợi nhụy trong 150ml nước ấm khoảng 60-70°C trong 10-15 phút. Nước sẽ chuyển sang màu vàng đỏ đặc trưng và tỏa hương thơm nhẹ nhàng. Uống nước saffron pha ấm vào buổi sáng hoặc tối trước khi ngủ sẽ giúp cải thiện tâm trạng, hỗ trợ giấc ngủ và tăng cường sức đề kháng. Đây là cách sử dụng phù hợp nhất cho người mới bắt đầu làm quen với loại thảo dược này.</p>\r\n	</li>\r\n	<li>\r\n	<h3>Pha Saffron với mật ong</h3>\r\n\r\n	<p>Kết hợp nhụy hoa nghệ tây với mật ong tạo nên thức uống bổ dưỡng tuyệt vời. Ngâm 3-5 sợi saffron trong nước ấm, sau đó thêm 1 thìa mật ong nguyên chất và khuấy đều. Hỗn hợp này không chỉ có vị thơm ngọt dễ uống mà còn tăng cường hiệu quả làm đẹp da, hỗ trợ tiêu hóa và cung cấp năng lượng tự nhiên cho cơ thể.</p>\r\n	</li>\r\n	<li>\r\n	<h3>Pha Saffron với các loại trà hoa (hoa cúc, hoa hồng)</h3>\r\n\r\n	<p>Saffron kết hợp với trà hoa cúc hoặc hoa hồng tạo nên thức uống thư giãn hoàn hảo. Pha trà hoa cúc hoặc hoa hồng như bình thường, sau đó thêm 2-3 sợi nhụy vào khi nước còn nóng. Loại trà này đặc biệt phù hợp với phụ nữ trong thời kỳ tiền mãn kinh, giúp điều hòa nội tiết tố, giảm căng thẳng và cải thiện chất lượng giấc ngủ.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"Công thức sữa nhụy hoa nghệ tây siết mỡ, da căng mướt chỉ sau 4 tuần\" data-lazy-sizes=\"(max-width: 827px) 100vw, 827px\" data-lazy-src=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-sua-nhuy-hoa-nghe-tay5-1.jpg\" data-lazy-srcset=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-sua-nhuy-hoa-nghe-tay5-1.jpg 827w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-sua-nhuy-hoa-nghe-tay5-1-526x400.jpg 526w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-sua-nhuy-hoa-nghe-tay5-1-768x584.jpg 768w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-sua-nhuy-hoa-nghe-tay5-1-800x608.jpg 800w\" data-ll-status=\"loaded\" decoding=\"async\" height=\"629\" sizes=\"(max-width: 827px) 100vw, 827px\" src=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-sua-nhuy-hoa-nghe-tay5-1.jpg\" srcset=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-sua-nhuy-hoa-nghe-tay5-1.jpg 827w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-sua-nhuy-hoa-nghe-tay5-1-526x400.jpg 526w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-sua-nhuy-hoa-nghe-tay5-1-768x584.jpg 768w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-sua-nhuy-hoa-nghe-tay5-1-800x608.jpg 800w\" width=\"827\" /></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Pha Saffron với sữa</h3>\r\n\r\n	<p>Nguyên liệu này kết hợp với sữa tạo thành “thần dược” làm đẹp từ bên trong. Đun nóng 200ml sữa tươi đến khoảng 70°C, thêm 3-4 sợi nhụy hoa nghệ tây và một chút mật ong hoặc đường theo sở thích. Sữa saffron giúp nuôi dưỡng làn da từ sâu bên trong, cải thiện sắc tố da, giảm thâm nám và mang lại vẻ sáng mịn tự nhiên.</p>\r\n	</li>\r\n	<li>\r\n	<h3>Dùng Saffron làm gia vị nấu ăn (nấu cơm, món hầm)</h3>\r\n\r\n	<p>Đây là một loại gia vị tuyệt vời cho nhiều món ăn, đặc biệt là cơm và các món hầm. Khi nấu cơm, ngâm 4-5 sợi nhụy trong chút nước ấm rồi đổ vào nồi cơm khi gần chín. Đối với các món hầm hoặc súp, thêm loại gia vị này vào 15-20 phút cuối quá trình nấu để giữ nguyên hương vị và màu sắc. Nhụy hoa nghệ tây không chỉ tạo màu đẹp mắt mà còn tăng thêm hương vị tinh tế cho món ăn.</p>\r\n	</li>\r\n	<li>\r\n	<h3>Dùng Saffron làm mặt nạ (lotion mask)</h3>\r\n\r\n	<p>Loại gia vị này cũng có thể được sử dụng làm mặt nạ dưỡng da hiệu quả. Ngâm 5-6 sợi nhụy hoa trong 2 thìa sữa tươi hoặc nước hoa hồng trong 30 phút. Thêm 1 thìa mật ong nguyên chất và trộn đều. Đắp mặt nạ này lên mặt trong 15-20 phút rồi rửa sạch. Sử dụng 2-3 lần/tuần sẽ giúp da sáng mịn, giảm thâm mụn và chống lão hóa hiệu quả. Đây là một trong những&nbsp;<a href=\"https://vuasaffron.com/blog/cach-dung-saffron-cho-da-suc-khoe#huong_dan_dung\">cách dùng saffron cho da đẹp</a>&nbsp;mà nhiều người áp dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"Mật ong ngâm saffron có tác dụng gì? Lợi ích bất ngờ và cách dùng đúng\" data-lazy-sizes=\"(max-width: 845px) 100vw, 845px\" data-lazy-src=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-mat-ong-ngam-saffron-co-tac-dung-gi-voi-co-the-1-845x540-2.jpg\" data-lazy-srcset=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-mat-ong-ngam-saffron-co-tac-dung-gi-voi-co-the-1-845x540-2.jpg 845w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-mat-ong-ngam-saffron-co-tac-dung-gi-voi-co-the-1-845x540-2-626x400.jpg 626w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-mat-ong-ngam-saffron-co-tac-dung-gi-voi-co-the-1-845x540-2-768x491.jpg 768w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-mat-ong-ngam-saffron-co-tac-dung-gi-voi-co-the-1-845x540-2-800x511.jpg 800w\" data-ll-status=\"loaded\" decoding=\"async\" height=\"540\" sizes=\"(max-width: 845px) 100vw, 845px\" src=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-mat-ong-ngam-saffron-co-tac-dung-gi-voi-co-the-1-845x540-2.jpg\" srcset=\"https://vuasaffron.com/wp-content/uploads/saffron-la-gi-mat-ong-ngam-saffron-co-tac-dung-gi-voi-co-the-1-845x540-2.jpg 845w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-mat-ong-ngam-saffron-co-tac-dung-gi-voi-co-the-1-845x540-2-626x400.jpg 626w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-mat-ong-ngam-saffron-co-tac-dung-gi-voi-co-the-1-845x540-2-768x491.jpg 768w, https://vuasaffron.com/wp-content/uploads/saffron-la-gi-mat-ong-ngam-saffron-co-tac-dung-gi-voi-co-the-1-845x540-2-800x511.jpg 800w\" width=\"845\" /></p>\r\n\r\n<h2>Những lưu ý quan trọng khi sử dụng Saffron (Nhụy hoa nghệ tây)</h2>\r\n\r\n<p>Để đảm bảo an toàn và hiệu quả, bạn cần tuân thủ những nguyên tắc sau khi sử dụng nhụy hoa nghệ tây:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>Chú ý liều lượng sử dụng Saffron phù hợp</h3>\r\n\r\n	<p>Liều lượng sử dụng cần được kiểm soát cẩn thận. Mỗi lần sử dụng không nên vượt quá 30-50mg (tương đương 3-5 sợi) và không dùng quá 3 lần trong ngày. Tổng lượng dược liệu này trong một ngày không vượt quá 1.5g. Nếu sử dụng quá 5g/ngày có thể gây độc, và liều lượng từ 12-20g có thể gây nguy hiểm đến tính mạng.</p>\r\n	</li>\r\n	<li>\r\n	<h3>Không nên sử dụng Saffron kéo dài liên tục</h3>\r\n\r\n	<p>Mặc dù nhụy hoa nghệ tây có nhiều lợi ích cho sức khỏe, nhưng không nên sử dụng liên tục trong thời gian dài. Thời gian sử dụng tối đa là 6 tuần, sau đó nên nghỉ 2-3 tuần trước khi tiếp tục. Việc sử dụng sản phẩm cần có chu kỳ nghỉ ngơi để cơ thể không bị quen và duy trì hiệu quả tối ưu.</p>\r\n	</li>\r\n	<li>\r\n	<h3>Những đối tượng không nên dùng Saffron (Nhụy hoa nghệ tây)</h3>\r\n\r\n	<p>Phụ nữ mang thai, đặc biệt trong 3 tháng đầu, không nên sử dụng saffron vì có thể gây co bóp tử cung. Người mắc bệnh rối loạn lưỡng cực, huyết áp thấp, bệnh tim mạch cũng nên tránh sử dụng loại gia vị này. Những người có tiền sử dị ứng với các thực vật họ thơm cần thận trọng. Phụ nữ trong thời kỳ kinh nguyệt nên hạn chế sử dụng vì nó có thể kích thích co thắt tử cung, gây rong kinh.</p>\r\n	</li>\r\n	<li>\r\n	<h3>Thận trọng khi kết hợp Saffron với các loại thuốc khác</h3>\r\n\r\n	<p>Nhụy hoa nghệ tây có thể tương tác với một số loại thuốc, đặc biệt là thuốc chống đông máu, thuốc hạ huyết áp và thuốc an thần. Nếu đang sử dụng thuốc điều trị, cần tham khảo ý kiến bác sĩ trước khi dùng sản phẩm. Không nên tự ý kết hợp loại thảo dược này với các thảo dược khác mà không có sự tư vấn của chuyên gia.</p>\r\n	</li>\r\n</ul>\r\n', 'en', 3),
(13, '藏红花是什么？关于藏红花（番红花）你应该知道的知识', '<p>&nbsp;</p>\r\n\r\n<hr />\r\n<h1>什么是藏红花？关于番红花你需要了解的10个重要知识</h1>\r\n\r\n<p>在高端香料的世界里，藏红花被誉为“红色黄金”，因其卓越的营养价值和药用功效而备受推崇。那么，藏红花究竟是什么？为什么如此珍贵？以下是使用前你需要了解的重要信息。</p>\r\n\r\n<hr />\r\n<h2>1. 藏红花是什么？</h2>\r\n\r\n<p>藏红花（Saffron）是番红花植物的花蕊，其学名为 Crocus sativus。每朵花仅有3根红橙色花蕊，细长柔软，带有独特的微甜微辛香气。</p>\r\n\r\n<p>其主要成分包括维生素A、维生素C、钾、钙、铁、镁，以及珍贵活性物质如 crocin、safranal 和 picrocrocin，这些成分赋予其独特的颜色、香气和多种健康益处。</p>\r\n\r\n<p>获取1公斤藏红花大约需要采摘17万朵花，并且完全依靠人工分离花蕊，因此被认为是世界上最昂贵的香料之一。</p>\r\n\r\n<hr />\r\n<h2>2. 藏红花的起源</h2>\r\n\r\n<p>藏红花起源于地中海地区，可能源自希腊或西亚。数千年前，人们已将其用于宗教仪式、药用以及染色。</p>\r\n\r\n<p>目前，伊朗是全球最大的藏红花生产国，约占全球产量的90%。其干燥炎热的气候和肥沃土壤为优质番红花的生长提供了理想条件。</p>\r\n\r\n<p>西班牙、希腊、印度和土耳其等国家也种植藏红花，但产量和品质相对较低。</p>\r\n\r\n<hr />\r\n<h2>3. 藏红花的常见使用方法</h2>\r\n\r\n<h3>用温水冲泡</h3>\r\n\r\n<p>将3–5根花蕊放入150毫升60–70°C温水中浸泡10–15分钟，水会呈现金黄色并散发淡淡香气。可早晨或睡前饮用，有助于放松身心和改善睡眠。</p>\r\n\r\n<h3>搭配蜂蜜</h3>\r\n\r\n<p>在泡好的藏红花水中加入一勺纯蜂蜜，口感香甜，有助于美容养颜、促进消化并提升体力。</p>\r\n\r\n<h3>搭配花茶</h3>\r\n\r\n<p>可与菊花茶或玫瑰花茶一起冲泡，有助于缓解压力、调节情绪及改善睡眠质量。</p>\r\n\r\n<h3>搭配牛奶</h3>\r\n\r\n<p>将200毫升牛奶加热至约70°C，加入3–4根藏红花，可适量加入蜂蜜。此饮品有助于改善肤色并帮助睡眠。</p>\r\n\r\n<h3>作为烹饪香料</h3>\r\n\r\n<p>藏红花适合用于米饭、汤类和炖菜。建议先用温水浸泡后，在烹饪后期加入，以保持颜色和香气。</p>\r\n\r\n<h3>制作面膜</h3>\r\n\r\n<p>将5–6根花蕊浸泡在牛奶或玫瑰水中，加入蜂蜜后敷脸15–20分钟，每周2–3次，有助于提亮肤色和改善暗沉。</p>\r\n\r\n<hr />\r\n<h2>4. 使用注意事项</h2>\r\n\r\n<h3>控制用量</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>每次3–5根（约30–50毫克）</p>\r\n	</li>\r\n	<li>\r\n	<p>每日不超过3次</p>\r\n	</li>\r\n	<li>\r\n	<p>每日总量不超过1.5克</p>\r\n	</li>\r\n	<li>\r\n	<p>超过5克可能产生毒性</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>不宜长期连续使用</h3>\r\n\r\n<p>建议连续使用不超过6周，然后暂停2–3周，以保持效果并避免身体产生适应性。</p>\r\n\r\n<h3>不适宜人群</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>孕妇（尤其前三个月）</p>\r\n	</li>\r\n	<li>\r\n	<p>低血压患者</p>\r\n	</li>\r\n	<li>\r\n	<p>双相情感障碍患者</p>\r\n	</li>\r\n	<li>\r\n	<p>心血管疾病患者</p>\r\n	</li>\r\n	<li>\r\n	<p>对植物过敏者</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>月经期间女性应适量减少使用。</p>\r\n\r\n<h3>与药物的相互作用</h3>\r\n\r\n<p>&nbsp;</p>\r\n', 'zh', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `confirm_links`
--

CREATE TABLE `confirm_links` (
  `id` int(11) NOT NULL,
  `link` char(32) NOT NULL,
  `for_order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `confirm_links`
--

INSERT INTO `confirm_links` (`id`, `link`, `for_order`) VALUES
(1, '3d6d4f31b5dc8172b92822b26bb1db67', 1234),
(2, 'a0367b426592c0db52f2ecd872cd195b', 1235),
(3, '1ad1f061d788f77e992208ea13e0156c', 1236),
(4, 'b033e2d1c6cc7dcd9055ce20d61e015e', 1237),
(5, '88865d9eb3fa20a066445daba0dab83c', 1238);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cookie_law`
--

CREATE TABLE `cookie_law` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cookie_law_translations`
--

CREATE TABLE `cookie_law_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `learn_more` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `valid_from_date` int(10) UNSIGNED NOT NULL,
  `valid_to_date` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1-enabled, 0-disabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_codes`
--

INSERT INTO `discount_codes` (`id`, `type`, `code`, `amount`, `valid_from_date`, `valid_to_date`, `status`) VALUES
(1, 'percent', 'HUTECH123', '85', 1769382000, 1781733600, 1),
(2, 'percent', 'hutech', '15', 1762210800, 1785362400, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `currencyKey` varchar(5) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`id`, `abbr`, `name`, `currency`, `currencyKey`, `flag`) VALUES
(2, 'en', 'english', '$', 'USD', 'en.jpg'),
(9, 'zh', 'chinese', '¥', 'CNY', 'zh.svg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'point to public_users ID',
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'viewed status is change when change processed status',
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_code` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `products`, `date`, `referrer`, `clean_referrer`, `payment_type`, `paypal_status`, `processed`, `viewed`, `confirmed`, `discount_code`) VALUES
(1, 1234, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"7\";s:6:\"folder\";s:10:\"1771060611\";s:5:\"image\";s:12:\"IMG_1213.jpg\";s:4:\"time\";s:10:\"1771060695\";s:11:\"time_update\";s:10:\"1771062208\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"9\";s:8:\"quantity\";s:2:\"20\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:2:\"_7\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"2\";s:5:\"price\";s:2:\"13\";}s:16:\"product_quantity\";s:1:\"2\";}}', 1771063369, 'http://localhost:8080/Ecommerce-CodeIgniter-Bootstrap/zh', 'localhost', 'cashOnDelivery', NULL, 2, 1, 0, ''),
(2, 1235, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"2\";s:6:\"folder\";s:10:\"1770827486\";s:5:\"image\";s:12:\"IMG_1168.jpg\";s:4:\"time\";s:10:\"1770828031\";s:11:\"time_update\";s:10:\"1770828149\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"5\";s:8:\"quantity\";s:2:\"20\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:36:\"Set_Trà_Thanh_Nhiệt_Vị_Thảo_2\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"2\";s:5:\"price\";s:2:\"19\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1771078834, 'http://localhost:8080/Ecommerce-CodeIgniter-Bootstrap/zh', 'localhost', 'BankMBBank', NULL, 1, 1, 0, 'hutech'),
(3, 1236, 1, 'a:3:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"1\";s:6:\"folder\";s:10:\"1770800680\";s:5:\"image\";s:12:\"IMG_1161.jpg\";s:4:\"time\";s:10:\"1770801002\";s:11:\"time_update\";s:10:\"1771075224\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"5\";s:8:\"quantity\";s:2:\"20\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:11:\" Saffron_1\";s:16:\"virtual_products\";s:0:\"\";s:8:\"brand_id\";N;s:8:\"position\";s:1:\"1\";s:5:\"price\";s:2:\"22\";}s:16:\"product_quantity\";s:1:\"4\";}i:1;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"8\";s:6:\"folder\";s:10:\"1771061436\";s:5:\"image\";s:12:\"IMG_1223.jpg\";s:4:\"time\";s:10:\"1771061596\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"6\";s:8:\"quantity\";s:2:\"20\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:35:\"Bột_Đậu_Nành_Nguyên_Chất_8\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"3\";s:5:\"price\";s:2:\"22\";}s:16:\"product_quantity\";s:1:\"4\";}i:2;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"22\";s:6:\"folder\";s:10:\"1771074877\";s:5:\"image\";s:12:\"IMG_1249.jpg\";s:4:\"time\";s:10:\"1771075087\";s:11:\"time_update\";s:10:\"1771078735\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"9\";s:8:\"quantity\";s:2:\"45\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:44:\"Bánh_phô_mai_dâu_tây_Mochi_Hoàng_gia_22\";s:16:\"virtual_products\";s:0:\"\";s:8:\"brand_id\";N;s:8:\"position\";s:1:\"8\";s:5:\"price\";s:2:\"10\";}s:16:\"product_quantity\";s:1:\"6\";}}', 1771086256, 'http://localhost:8080/Ecommerce-CodeIgniter-Bootstrap/zh', 'localhost', 'cashOnDelivery', NULL, 0, 0, 0, 'hutech'),
(4, 1237, 1, 'a:3:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"1\";s:6:\"folder\";s:10:\"1770800680\";s:5:\"image\";s:12:\"IMG_1161.jpg\";s:4:\"time\";s:10:\"1770801002\";s:11:\"time_update\";s:10:\"1771075224\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"5\";s:8:\"quantity\";s:2:\"20\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:11:\" Saffron_1\";s:16:\"virtual_products\";s:0:\"\";s:8:\"brand_id\";N;s:8:\"position\";s:1:\"1\";s:5:\"price\";s:2:\"22\";}s:16:\"product_quantity\";s:1:\"7\";}i:1;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"2\";s:6:\"folder\";s:10:\"1770827486\";s:5:\"image\";s:12:\"IMG_1168.jpg\";s:4:\"time\";s:10:\"1770828031\";s:11:\"time_update\";s:10:\"1770828149\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"5\";s:8:\"quantity\";s:2:\"19\";s:11:\"procurement\";s:1:\"1\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:36:\"Set_Trà_Thanh_Nhiệt_Vị_Thảo_2\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"2\";s:5:\"price\";s:2:\"19\";}s:16:\"product_quantity\";s:1:\"6\";}i:2;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"3\";s:6:\"folder\";s:10:\"1770828259\";s:5:\"image\";s:12:\"IMG_1155.jpg\";s:4:\"time\";s:10:\"1770828850\";s:11:\"time_update\";s:10:\"1771062812\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"5\";s:8:\"quantity\";s:2:\"99\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:15:\"Trà_tâm_sen_3\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"3\";s:5:\"price\";s:2:\"18\";}s:16:\"product_quantity\";s:1:\"5\";}}', 1771086373, 'http://localhost:8080/Ecommerce-CodeIgniter-Bootstrap/zh', 'localhost', 'cashOnDelivery', NULL, 0, 0, 0, 'hutech'),
(5, 1238, 1, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"7\";s:6:\"folder\";s:10:\"1771060611\";s:5:\"image\";s:12:\"IMG_1213.jpg\";s:4:\"time\";s:10:\"1771060695\";s:11:\"time_update\";s:10:\"1771062208\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"9\";s:8:\"quantity\";s:2:\"20\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:2:\"_7\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"2\";s:5:\"price\";s:2:\"13\";}s:16:\"product_quantity\";s:1:\"7\";}}', 1771087770, 'http://localhost:8080/Ecommerce-CodeIgniter-Bootstrap/zh', 'localhost', 'cashOnDelivery', NULL, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_clients`
--

CREATE TABLE `orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(500) NOT NULL,
  `post_code` varchar(500) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_clients`
--

INSERT INTO `orders_clients` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `post_code`, `notes`, `for_id`) VALUES
(1, '0dd38aba3d045274719d8af0f8561e755670a2ef354cc7410adac4f991eee6404215f54f3ea1c6f9e0612cf68b96a8a1876335e88df67daf225ff4ab640c3147o4E8xF8Q2my47MjnVRkISgPlaYpXfTt97rIPyXn8soU=', '9f2ae4352e375f9d7877e7e377b34b5a7bfe08ecf80a7e7c34553bfb1a99adcc2e5c964dc3b75dde335a01ec643d6af4e20aac544767813b3b807b40870c147dD3e2PnEMYkQN3zGGhEanr6Y4FCNp/EMhc4ZIn7P/YMU=', 'f7ab84d3e0dd4aa191e1181a2b3e54476cff6fe634fbda7253d4c08acc265f61b8f26d5fecaaa1d16ac40e7be0308c0913dabc91a9e72847fe221022199ca0e5so5slmplVHoUnnE3cC3kYSbbolPW055yKnouJv0CVcIEp07tU37Rr4w3MJvImT39', '4c6624604a6f86a2bb965853d01c663c05207dc3a85b49c44297475fbd5cba92e67431dbd7ae0479339d85987877bb48fb8b835a958519de7167d0b58c045cb0NBmilgNujvAiEryHyT62PlvBrYVsFBZmTow/KGzKYCc=', 'dc3df1c5d25c17944585261ddbb81a43d01023853d39b6a40ca106932322394203fb922437966a5955303bc9c3d5766f90a0d2ede594537f1d201e8e7c172cc9oPFjDDA3XgpTWSCyDIjDkpm3GnhYemAXZUSWlwZ67EQ=', 'b614c0489647529d96495afff6df094a194ccaf7ed9f295208331a5bf695cc4d8f139d98d2984929112c17be1e97486b8fd624c4466afdaaf69c40e6ee32f0d6cx0naliv5RBdVZcFjK0VHDfV2oL3N+BcGxMDUvqX/+A=', '87bea08e869a597a738f750721ec611a51231bcf6161361ab9440f2701fd82db93d462527893080b666f5853d979f24a397647a82eeb1b3e87a3744b3529e3e59s3DRPgLY+5u9EaSk8OC6k9xGqPgEytlfV6rgQN/tUY=', 'dec95a896d7b222fb15cf0a8d339e8e4beaa08a8e5420ba07b25159af09c097343d8fce6c487f5b5d549220e7990e272a16f7907f03417707b0d1e5ab20db1d82P1Zq/ihj37XqDsXO8IC/fJBDbki9a4IIq5XKzShF/0=', 1),
(2, 'a4230995a6988b6f60c45b90a510e9d21c3eaa848344536c83b5e548e4eef7525863c27a756c914dbffddafe7b1a7d0979cca9b077bfed80c27f1eb46c46c6abQN3i0CRaVCuoUqqLgIXjjDN4zbUs4Awcm3/Of5Fzmew=', '7f209bfd90dc0a1c66043a9a3619f8cfe76054ee2946e6a4d28338512288e0c8fcf8946ba549a70f81552ef5b3133ff78401244959f2ef2b8a5f46dbad18c2552AeF17MyK9nkyndsC1uL1HT1Z7bHUD1Ls1thgC3rcAw=', '2a93b10f98a2e4c4390c270225d04ae1fd3b93366a1ffcf09d1445ccc6b84095e6d82bf78aacfa9ac007e8e46df7cc86d5f51d1e7f5a95f5bf179ffe8c7e6664qKTsXoulXnApbGWY9x6PVGrrm3wI7mnkOMwaADi41YBs4E17p7T9IsRqmS0i4Jfy', '5f40ca45fd780bf27aaa3286645af5aeaefc55af67ab7c5e4d0c07a2d481084e9fa35ac99df760a49b74a6639fb26f3b348a67f248feb40264761bc4e26c206dePFsErc7e4To5bu4RP4FAwOwkuDQujtSVqzkcBaaKRY=', 'e17bf9aad5f3eeda5c0bc9b41292c10db78d96bc2e0275449ef76bdaa319418cead9f6945ec88cf730e1e73d361f56c8db15cb7f2ad6e7f205ebe0f699ccf3f0KRraoksz+50Df2Ky7UUxhvi0vuOnIWLgjFZmtnsoGpQ=', '78b83b44a04700ceba4fad31df9a00cddebf5e06b3e70283f96b4681b6a7270964fc39bef90439fd22ffaf5220131785ac6e63742aab0f9bc2e27074a5105275D3iU8BDuGt+JzrpVDntsgLDz2huorGvMYdpqIq/Sm2w=', 'c7f69ffa5e073df842075bc5ada8d7910faf240727e2aee2377c141a41b2570703707ca745af95436930bc67699252b855604f8e0329466054d8c42dd086268ePtZ6EqMs5LrK0URRF/F0GW+o6yE8C4VKF8Upqtnqrmg=', '2a9cc16eb71874c45c7eeceb612c787aa4934ee5831791b961e680560c4f189f3e0b61ffcbb51c49855edb937f44d2ec3afdeac2f39c62ed6d140576629cae034pMgcAi8M6v8l1sDiRt+zYxAdyktBC/EiHUs3v9buQyXXmln+fvuw4lT/8TUuPnIZAJrkpMm6MqnuWfTsw7QIbQKtl1Hix/Cp5+YaE9O0GXd++jEZn24uaMRbQkOtJh3', 2),
(3, '760a4b010864dfac164ffd4b1965251384efde524aa403f4457f0ff714f5b650065177119a8b5f6fb10ad213a9bebcad74a88d07ccd949603685f21345ede80arofToGN9DB3Jdz2kAxAIpFavOtn2FS7EyQHMEJSzkB8=', 'a9d85a04956e27f3768dc6b771e13e9c381622fd62be558157ae671487b895d22f281670253790f9affc68bef9b1b280f8c6e5b8a837faeaa2830bd24a25e869wUXUMmtDRoamrTPT6Wxn73UZddMgjwfLGTgrmucAhdI=', '1e556818db3f036850ad21dfc2b3b0cdbaa2032d39332b2ab4c26ae28691a6be8e0c7da0b44d0a2765a1a631214049f5b440d51907fc033c0cf60da6911064b40xL5Y9ZpqB0H9Mara+8ucnX77GnEpjKIT3D/o8qLJ91lHUM5d1JXLNzrRJuc5K9f', 'fe6c78b55377f74d9267628ab5f4621ef7871b116c18dbdbf8bd6444f666bd71cfac3fd9b3456091240e31bd61b37afb406590cf1c15ff86983f6b5f51fa7d7aMD/vQrp6TohiN8KA1sZvi3fnGAytDBCtJb+Gj+/ej2s=', '390de047ef92bf7a0ce0beaa56a8fb77076b5013fe65b140b98b3a9dafc8ba6f439ffb39f052a3c46052334d7dc67d09517aef4b57d658f25df600e9c32eb47bkoBTU/2PZSWh8fjc4Y8VFkH+GHjhD2biqwLK+MZYVLfq7BmHUMtno4ewqyNpghha', '3d3b9b7be7a00ea43605b6747228153c51a8231de7948bf47a86ff4b0d541433ec619a56beb18c7fe63c8c95329011271f7d014a37dd8ac621ca778efc3d4acccJ/Awtl2LFvxQPbwBXMrPRzN7x/1qu1VFZ4WqaEt9t4=', '7b4e7209e8298148bb66b2613fab9f90e5e7a850591e25b7d957c56a23e6d2ddb1aa4527857238beff37628f394b49f4becc81b527f39dea0cc67114ed6bd438QumXs7vI5jOgNocqKArcRVVDd0vBu2MNZlKAgXvu60U=', '3cc4690f84fee1ec78cd4d7e3083deb62ddf9d67d96a0e39f42595cd7ca5d515d44b30d7ae725a516af335391b44ae82f471011d57c0d44e4d290f566ca559adpAqIrP8EdkdaAJ/O20PHoT19sgNWnxjAmX9v3bRAHuM=', 3),
(4, '89bef55e28bc3aa1e23093c4032eec4b122f8658f264f2e3820958cc5f1daa4f7d4c7fb375fe656396f273ef8e50cd2b96e8b52f5e2562c83fd395e26f038e43ZpdmyMIAuyOD/tXCXGTycD7PwdWMtI757zQGoRthcVg=', '1ba3fcfdf240c0c0e1429f0d5b1e040110f9eae2beb56c09fa5b56a27b52b73a63bc48a9a40a8a5e5a882c6160775edb28444ff0c0383c5a16daf73847c855afgJGbidpWUFHOWyWXi9GI3jiSuk3kN9p7HnxyscbRh4U=', 'b239e73af20c8c6ca0f01c6a2cef6d3b11b806bc34b708b892dccd947c5ee66fcd58fe3caa4fe17633ec7db7914dd077cd623188a44991bff51b00669dd2b3fdm+2BRY7z8nu9v8mGMapfEhh+Ad+/Xi+i10jB+qNKAyjwXPMbkOMVk+WVs5BNOY3M', 'c7d6638d0572c43dc25e1fdf1ee7f0d191a7444efea3ba126204eca0e813e169af16f9fa2807e61310c21e52dbd2fbb005c061be981463deb1f5e61629771714FdvlXJnei/5FDUK7L5cXUSjNC1UpUUlnJ+3PF/Xhh4o=', '3c1c02483f232f84dce18d7c68a6ced43f5842e88b7dd5e7c3868ae1b27d5234a7123322e4fd9a100e072e19953850b4bbb5e6cf94cf39cf3c464915fff507a7xJiEpDFzC46MvtIj/Bnj8nAMMPeDt31qLSHV+OdklCyu8aHdlc66sVtfyfVS7BhQ', '5f5ffb3df778ea4805ea1d6d3611732c0469486b4ec5799a8691da4902e5ed5491d5a7cb2dd8cf4162cde5a2101fab526f22e432627d8d9b6e47392b31bff01cjS+Q0kYt4HCw7I+44z3HnC//2jKToLlPz65xWh2Bhho=', '44f89dfea5b32ac1713692729dc1f5c907ff0f0aa710a0956874943de8c61b6016a5830657ed88b50fb4ba082714b33d5a82f59e9f42d497b66370b7112f7993VTJVj4Pl5BIRyIIaF/wk6fvGny38pT/z1WarY/U9YI0=', '23be9bfa448f8742d2688c474bcae294e2797ec3395999144355030930f6e77dcd2413aa75b17063675013f736b83c057ccd0f388673f5095cce70a2739d824dQNnM6sreLQGTQ2gf+UQ2mr0JOVS7QIqxg0pbyXTC02w=', 4),
(5, '7bb77cb1651b6300a80821eecb6af5042a0849a7dd105a01c043503246e554f1107e941a605b02ffc0ec7d3e5e97f55fd00db16e8e3220d0a13ba1ea1867fdc0/JYL21THDb54oFAP9glUkTcDmLvkJEB6Ph1DvNF8KB0=', 'ec2126bc3079801d1156543d915ef4021af018d7cb1ae08906b6368088121f2cfd04440da3fdd451426ff8097eedfb6d60711681eacb1d86fbe0cece6b603de4oKgw+9y6f9k+nKfOVRAQETWX++/B8R1RuKwFlj6Erzk=', '0f77a59dc7868ef452095efbc6411ee6d798898a29b1821e191d5cb2654391383629fa632556bccf295fa337e943c442cc6d4d376d298f90ff072688b21bcffapbRG1F+73V8f1xAl0kc/WsjVfjaJmctUeV3X4FMuY0olPG9ijE3N3pKCr6/CJPbH', 'ad5e7458e2d45896833ab0589ce8d2ee183d231d8dc62f2b8184c1292050beed337bf927103e6672772737be0aa096948fbadd5523143e5d6027edc2bed80554Ec/zW6uyjsEoVlYx6T5DgspvlUvn6vxbPszhLY9xBYw=', 'a28bd69cd8635ba0a3a88ba66c09c1e7cca6f8dd9b41ef4221f3fc425c3b193e96b7e2e5d1a6b7a955e0712a44e06dfaa0d85a519a4d0e61bb525498cfa85207aV/YZ7B0mFDeddSBzUY0VkZE7/XEwJVodxk6v8w+2emij7T2IO+j9bEZfv5MC2Nj', '27842c9b1866a0605add822b7abb40d8c828b276ad9d8f020aa7802ed5e823874e07e55f93d129b8a61693c6ed8e408b3814e61093df7415b823e07a119ac8855t3eLKaPTJdEOlCunpKy9s/d8jXHFQnM+heV5CFqphc=', 'f9ca268b6bf9823b8a22577c0388385f6808d844ab8c987f759a63ec39a21378926ebbd834dc226f7c75267fc630d7363407e57dbf9b9ee4cb05db20a20d4b40+ZM6Ox5yO/8TruGbaLSLJjhvAw3LqpXeB3tiAbz3LOk=', '859f5c485bbf121943dbde688ad483b4bef4314dfc0824dac2d2bc1dfe38240c9486d55ea999c060e6cd2d93dc81cebe471fb7e6ed132f1f572ec8508d31e9b4ZZX6RliKZqPefufLXrKTl+Pln9sVr7E/Ke7CS/v0rdY=', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder` int(10) UNSIGNED DEFAULT NULL COMMENT 'folder with images',
  `image` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL COMMENT 'time created',
  `time_update` int(10) UNSIGNED NOT NULL COMMENT 'time updated',
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `shop_categorie` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `procurement` int(10) UNSIGNED NOT NULL,
  `in_slider` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `virtual_products` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` int(5) DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `folder`, `image`, `time`, `time_update`, `visibility`, `shop_categorie`, `quantity`, `procurement`, `in_slider`, `url`, `virtual_products`, `brand_id`, `position`, `vendor_id`) VALUES
(1, 1770800680, 'IMG_1161.jpg', 1770801002, 1771075224, 1, 5, 20, 0, 0, ' Saffron_1', '', NULL, 1, 0),
(2, 1770827486, 'IMG_1168.jpg', 1770828031, 1770828149, 1, 5, 19, 1, 0, 'Set_Trà_Thanh_Nhiệt_Vị_Thảo_2', NULL, NULL, 2, 0),
(3, 1770828259, 'IMG_1155.jpg', 1770828850, 1771062812, 1, 5, 99, 0, 0, 'Trà_tâm_sen_3', NULL, NULL, 3, 0),
(6, 1771060351, 'IMG_1204.jpg', 1771060401, 1771075232, 1, 9, 99, 0, 0, 'Hộp_g_socola_Nama_tươi_6', '', NULL, 5, 0),
(7, 1771060611, 'IMG_1213.jpg', 1771060695, 1771062208, 1, 9, 20, 0, 0, '_7', NULL, NULL, 2, 0),
(8, 1771061436, 'IMG_1223.jpg', 1771061596, 0, 1, 6, 20, 0, 0, 'Bột_Đậu_Nành_Nguyên_Chất_8', NULL, NULL, 3, 0),
(9, 1771061611, 'z5821120385106_b5271e92f5eee5a544f8caa95467788d_1da924e8cfe64830afeb15072a10a259_master.jpg', 1771061772, 1771074850, 1, 6, 99, 0, 0, 'Cafe_sữa_dừa_Rockcafe_9', '', NULL, 5, 0),
(10, 1771061892, 'IMG_1231.jpg', 1771062072, 1771074874, 1, 9, 20, 0, 0, 'Kim_quất_sấy_cam_thảo_10', '', NULL, 7, 0),
(21, 1771074701, 'IMG_12541.jpg', 1771074822, 1771078777, 1, 9, 20, 0, 0, 'Kẹo_Dừa_Sáp_Phủ_Mè_21', '', NULL, 7, 0),
(22, 1771074877, 'IMG_1249.jpg', 1771075087, 1771078735, 1, 9, 45, 0, 0, 'Bánh_phô_mai_dâu_tây_Mochi_Hoàng_gia_22', '', NULL, 8, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_translations`
--

CREATE TABLE `products_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `basic_description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `old_price` varchar(20) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products_translations`
--

INSERT INTO `products_translations` (`id`, `title`, `description`, `basic_description`, `price`, `old_price`, `abbr`, `for_id`) VALUES
(2, ' Saffron', '<p data-end=\"28\" data-start=\"0\"><em><span style=\"font-size:22px;\"><strong data-end=\"28\" data-start=\"0\"><font dir=\"auto\" style=\"vertical-align: inherit;\"><font dir=\"auto\" style=\"vertical-align: inherit;\">&nbsp;</font></font></strong><font dir=\"auto\" style=\"vertical-align: inherit;\"><font dir=\"auto\" style=\"vertical-align: inherit;\">Saffron</font></font></span></em></p>\r\n\r\n<p data-end=\"28\" data-start=\"0\">&nbsp;</p>\r\n\r\n<p data-end=\"435\" data-is-last-node=\"\" data-is-only-node=\"\" data-start=\"30\">Nhụy hoa nghệ tây là một sản phẩm cao cấp được thu hoạch từ hoa nghệ tây (Crocus sativus). Với hương thơm tinh tế và màu sắc tự nhiên đặc trưng, ​​nghệ tây không chỉ được sử dụng trong nấu ăn mà còn nổi tiếng với nhiều lợi ích cho sức khỏe. Nó giúp cải thiện giấc ngủ, giảm căng thẳng, làm đẹp da và tăng cường hệ miễn dịch. Thích hợp để pha trà, ngâm mật ong hoặc sử dụng trong các món ăn bổ dưỡng.</p>\r\n', '<p>With its delicate aroma and distinctive natural color, saffron is not only used in cooking but is also known for its many health benefits. It helps improve sleep, reduce stress, beautify the skin, and boost immunity. Suitable for brewing tea, soaking in honey, or using in nutritious dishes.</p>\r\n', '22', '29', 'en', 1),
(9, ' Saffron', '<p>藏红花（藏红花柱头）是从番红花（Crocus sativus）花朵中采摘的优质产品。它香气馥郁，色泽独特，不仅用于烹饪，更以其诸多健康益处而闻名。藏红花有助于改善睡眠、缓解压力、美化肌肤、增强免疫力。可用于泡茶、蜂蜜浸泡或烹制营养菜肴。</p>\r\n', '', '150', '199', 'zh', 1),
(10, 'Set Trà Thanh Nhiệt 13 Vị Thảo ', '<p>Set trà gồm 13 loại thảo mộc tự nhiên, kết hợp hài hòa mang đến hương thơm dịu, vị thanh mát và nhiều lợi ích cho cơ thể. Phù hợp dùng hàng ngày để thư giãn, thanh lọc cơ thể và tăng cường sức khỏe.</p>\r\n', '', '19', '29', 'en', 2),
(11, '草本茶', '<p>这款茶具包含13种天然草本植物，精心调配，香气淡雅，口感清爽，并具有多种保健功效。适合日常饮用，有助于放松身心、排毒养颜，并改善整体健康状况。</p>\r\n', '', '199', '230', 'zh', 2),
(12, 'Hạt sen', '<p>Trà tâm sen là loại trà được làm từ phần mầm xanh bên trong hạt sen (gọi là tâm sen hoặc liên tâm).</p>\r\n\r\n<p>&nbsp;Công dụng:,<br />\r\nGiúp an thần, dễ ngủ,<br />\r\nGiảm mất ngủ, stress,<br />\r\nHỗ trợ hạ huyết áp,<br />\r\nThanh nhiệt, giải độc,<br />\r\nGiảm nóng trong người,</p>\r\n\r\n<p>&nbsp;Cách pha:,<br />\r\nDùng khoảng 1–2g tâm sen khô,<br />\r\nTráng qua nước sôi nhanh (để giảm vị đắng),<br />\r\nHãm với 200–300ml nước sôi trong 5–10 phút,<br />\r\nCó thể thêm cam thảo hoặc táo đỏ để dễ uống hơn,</p>\r\n\r\n<p>&nbsp;Lưu ý:,<br />\r\nTâm sen có vị rất đắng,<br />\r\nKhông nên uống quá nhiều (chỉ 1 ly/ngày),<br />\r\nPhụ nữ mang thai, người huyết áp thấp nên hỏi ý kiến bác sĩ trước khi dùng</p>\r\n', '', '18', '23', 'en', 3),
(13, '莲子心茶', '<p>莲子心茶 是用莲子中间的绿色胚芽（莲子心）制作的茶。</p>\r\n\r\n<p>&nbsp;功效：,<br />\r\n安神助眠,<br />\r\n改善失眠,<br />\r\n清热降火,<br />\r\n降低血压,<br />\r\n缓解压力,</p>\r\n\r\n<p>&nbsp;冲泡方法：,<br />\r\n取 1–2克干莲子心,<br />\r\n用开水快速冲洗一次（减少苦味）,<br />\r\n加入 200–300毫升热水，浸泡 5–10 分钟,<br />\r\n可以加入红枣或甘草调味,</p>\r\n\r\n<p>&nbsp;注意事项：,<br />\r\n味道较苦,<br />\r\n不宜长期大量饮用,<br />\r\n低血压或孕妇饮用前请咨询医生,<br />\r\n&nbsp;</p>\r\n', '', '99', '130', 'zh', 3),
(18, 'Táo đỏ', '<p>Táo Đỏ Hòa Điền (Hotan) – Đại Táo Nội Địa Trung Trứ Danh, Ngọt Đậm – Thịt Siêu Dày</p>\r\n\r\n<p>Táo đỏ Hòa Điền là loại táo đỏ cao cấp nhất của Tân Cương, nổi tiếng với quả to – thịt dày – ngọt thanh, được người tiêu dùng đánh giá cao về chất lượng và hàm lượng dinh dưỡng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>✨ Đặc điểm nổi bật</p>\r\n\r\n<p>✔ Quả rất to – tròn đẹp, màu đỏ nâu sẫm đặc trưng.</p>\r\n\r\n<p>✔ Thịt cực dày, mềm dẻo, không khô bở.</p>\r\n\r\n<p>✔ Độ ngọt tự nhiên cao, hương thơm đặc biệt của vùng Hòa Điền.</p>\r\n\r\n<p>✔ Ít hạt – hạt nhỏ, ăn phần thịt nhiều.</p>\r\n\r\n<p>✔ Sấy lạnh tự nhiên giữ nguyên dưỡng chất, không chất bảo quản.</p>\r\n\r\n<p>✔ Thích hợp cho người cần bồi bổ sức khỏe.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>???? Công dụng tốt cho sức khỏe</p>\r\n\r\n<p>- Bổ huyết, tăng cường khí lực</p>\r\n\r\n<p>- Cải thiện giấc ngủ</p>\r\n\r\n<p>- Hỗ trợ tiêu hoá và tăng sức đề kháng</p>\r\n\r\n<p>- Làm đẹp da, chống oxy hoá</p>\r\n\r\n<p>- Phù hợp với phụ nữ sau sinh, người lớn tuổi, người suy nhược</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>???? Cách dùng</p>\r\n\r\n<p>- Ăn trực tiếp</p>\r\n\r\n<p>- Ngâm trà táo đỏ – kỷ tử</p>\r\n\r\n<p>- Hầm gà, nấu cháo, nấu chè dưỡng nhan</p>\r\n\r\n<p>- Ngâm mật ong hoặc rượu táo đỏ</p>\r\n', '', '21', '24', 'en', 6),
(19, '新疆若羌红枣天然有嚼劲，不含防腐剂', '<p><font dir=\"auto\"><font dir=\"auto\">- 新疆若羌红枣天然有嚼劲，不含防腐剂，保留了其美味和营养价值。</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">这种水果果肉紧实，果肉呈柔软的黄色，味道略带甜味，非常适合保健，也是泡茶或烹饪的原料。</font></font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">灵活的重量选择????</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">- 该产品在重量和每公斤水果数量方面提供多种选择，适合不同的使用需求。</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">- 一些受欢迎的规格：130-150 个水果/公斤，160-180 个水果/公斤，包装在方便的盒子或拉链袋中。</font></font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">对你有用的信息????</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">这些红枣是自然风干的，未经任何化学处理。</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">- 适合节食者、需要营养补充剂的人，或作为健康礼物赠送。</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">- 不含防腐剂，确保您的健康安全。</font></font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">来自新疆的Velma Food的若罟红枣——既健康又美味，是您的理想之选！</font></font></p>\r\n', '', '', '', 'zh', 6),
(20, 'Khô mực cán tẩm gia vị', '<p>????Mực cán tẩm vị????</p>\r\n\r\n<p>Khô mực cán tẩm gia vị cay nguyên con miếng lớn - Hộp 500gram - Hải sản sấy khô ăn liền</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>???? Khô Mực Cán Tẩm Vị</p>\r\n\r\n<p>????Size Lớn, Giá Nhỏ????</p>\r\n\r\n<p>- Để có một con mực khô thơm ngon cần phải trải qua quá trình chọn lựa và sơ chế kỹ lưỡng, cùng với công thức tẩm ướp gia vị độc đáo giúp cho miếng khô không bị quá ngọt hay quá mặn, thấm vị vừa ăn.</p>\r\n\r\n<p>- Hiểu được nhu cầu của người dùng, khô mực cán bên shop được sấy không quá ướt để nặng cân hay không quá khô làm mất đi độ ngọt của miếng mực.</p>\r\n\r\n<p>???? Gia vị tỏi , ớt cay.</p>\r\n\r\n<p>☘️ Nguyên liệu sạch tẩm ướp thơm ngon, xào thiệt kỹ thấm gia vị, xấy khô nhưng vẫn còn độ mềm của mực.</p>\r\n\r\n<p>???? Ăn vặt xuyên lục địa là đây, dã ngoại , tiệc ngoài trời tiện dụng.</p>\r\n\r\n<p>- Hạn sử dụng: 06 tháng</p>\r\n\r\n<p>- Hướng dẫn sử dụng: Dùng ăn trực tiếp ngay sau khi mở hộ và giữ kín miệng hũ sau mỗi lần sử dụng.</p>\r\n\r\n<p>- Hướng dẫn bảo quản: Nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp.</p>\r\n\r\n<p>Lưu ý: Khi ăn nên chấm với tương ớt sẽ ngon hơn, gỡ các miếng mực thành từng miếng nhỏ</p>\r\n\r\n<p>Bảo quản ngăn mát tủ lạnh sẽ giữ được lâu hơn.</p>\r\n', '', '13', '15', 'en', 7),
(21, '克罐装调味扁鱿鱼。', '<p><font dir=\"auto\"><font dir=\"auto\">新鲜整只鱿鱼 - 天然风味????</font></font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">品尝新鲜整只鱿鱼的鲜美滋味，压扁后保留了其天然的鲜甜。天然调味料赋予其浓郁鲜美的口感，却又不至于过于刺激，是放松身心或工作间隙的理想之选。</font></font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">????多种重量选择????</font></font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">- 200克蒜蓉辣椒猪皮</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">- 250克椰奶蒸鱿鱼</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">- 500克 - 2罐</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">- 250克 - 1罐</font></font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">您可以轻松选择适合您需求的产品。</font></font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">????️易于存放????️</font></font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">本产品保质期长（6个月），易于存放于干燥处。随时享用这款美味佳肴吧！</font></font></p>\r\n', '', '199', '230', 'zh', 7),
(22, 'Bột Đậu Nành Nguyên Chất', '<p><strong>Bột đậu nành nguyên chất</strong> được làm từ 100% hạt đậu nành tự nhiên, rang chín và xay mịn, không pha tạp, không chất bảo quản.</p>\r\n\r\n<h3><img alt=\"????\" data-name=\":herb:\" data-type=\"emoji\" draggable=\"false\" src=\"https://discord.com/assets/2f27d1889c5c9725.svg\" /> Công dụng:</h3>\r\n\r\n<ul>\r\n	<li>Bổ sung <strong>đạm thực vật</strong> và năng lượng</li>\r\n	<li>Giàu <strong>canxi, sắt, vitamin B</strong></li>\r\n	<li>Hỗ trợ <strong>tim mạch</strong></li>\r\n	<li>Tốt cho <strong>phụ nữ</strong> (chứa isoflavone – nội tiết tố thực vật)</li>\r\n	<li>Hỗ trợ tiêu hóa</li>\r\n</ul>\r\n\r\n<h3><img alt=\"☕\" data-name=\":coffee:\" data-type=\"emoji\" draggable=\"false\" src=\"https://discord.com/assets/55186960dfe71730.svg\" /> Cách sử dụng:</h3>\r\n\r\n<ul>\r\n	<li>Pha 2–3 muỗng với 200–250ml nước ấm</li>\r\n	<li>Có thể thêm đường, sữa hoặc mật ong tùy khẩu vị</li>\r\n	<li>Dùng 1–2 ly/ngày</li>\r\n</ul>\r\n\r\n<h3><img alt=\"⚠️\" data-name=\":warning:\" data-type=\"emoji\" draggable=\"false\" src=\"https://discord.com/assets/fb6fd920c79bd504.svg\" /> Lưu ý:</h3>\r\n\r\n<ul>\r\n	<li>Không nên pha với nước quá sôi (tránh vón cục)</li>\r\n	<li>Người bị dị ứng đậu nành không nên dùng</li>\r\n	<li>Nên bảo quản nơi khô ráo, kín gió</li>\r\n</ul>\r\n', '', '22', '24', 'en', 8),
(23, '纯天然豆粉', '<p><strong>纯天然豆粉</strong> 是由100%天然黄豆烘烤后研磨而成，不添加任何添加剂或防腐剂。</p>\r\n\r\n<h3><img alt=\"????\" data-name=\":herb:\" data-type=\"emoji\" draggable=\"false\" src=\"https://discord.com/assets/2f27d1889c5c9725.svg\" /> 功效：</h3>\r\n\r\n<ul>\r\n	<li>补充植物蛋白</li>\r\n	<li>富含钙、铁和维生素B</li>\r\n	<li>有助于心血管健康</li>\r\n	<li>含有大豆异黄酮，有助于女性健康</li>\r\n	<li>促进消化</li>\r\n</ul>\r\n\r\n<h3><img alt=\"☕\" data-name=\":coffee:\" data-type=\"emoji\" draggable=\"false\" src=\"https://discord.com/assets/55186960dfe71730.svg\" /> 食用方法：</h3>\r\n\r\n<ul>\r\n	<li>取2–3勺加入200–250毫升温水搅拌</li>\r\n	<li>可根据口味加入糖、牛奶或蜂蜜</li>\r\n	<li>每天1–2杯</li>\r\n</ul>\r\n\r\n<h3><img alt=\"⚠️\" data-name=\":warning:\" data-type=\"emoji\" draggable=\"false\" src=\"https://discord.com/assets/fb6fd920c79bd504.svg\" /> 注意事项：</h3>\r\n\r\n<ul>\r\n	<li>不要用过热的开水冲泡（避免结块）</li>\r\n	<li>对大豆过敏者不宜食用</li>\r\n	<li>存放于干燥阴凉处</li>\r\n</ul>\r\n', '', '150', '199', 'zh', 8),
(24, 'Cafe sữa dừa Rockcafe ', '<p><font dir=\"auto\" style=\"vertical-align: inherit;\"><font dir=\"auto\" style=\"vertical-align: inherit;\">Cafe sữa dừa Rockcafe là một món ăn khá phổ biến trong các quán cafe ở Việt Nam, đặc biệt là ở các quán phong cách trẻ trung, hiện đại. Món này có hương vị ngọt ngào từ sữa và béo ngậy từ dừa, kết hợp với cafe đậm đà, tạo nên một sự kết hợp rất thú vị. Bạn đã thử món ăn này bao giờ chưa? Hoặc nếu bạn đang tìm hiểu về cách làm quán cà phê sữa dừa tại nhà, tôi có thể hướng dẫn cho bạn!</font></font></p>\r\n', '', '22', '24', 'en', 9),
(25, '是在越南的咖啡馆中非常受欢迎的', '<p><font dir=\"auto\" style=\"vertical-align: inherit;\"><font dir=\"auto\" style=\"vertical-align: inherit;\">是在越南的咖啡馆中非常受欢迎的一款饮品,特别是在那些年轻、现代风格的咖啡馆中。这款饮品的特点是从牛奶中带来的甜美味道和椰子的浓郁香气,与浓烈的咖啡相结合,形成了一种非常有趣的味觉体验。 你有没有尝譣在寻找如何在家制作椰子牛奶咖啡的方法,我可以为你提供指导!</font></font></p>\r\n', '', '150', '230', 'zh', 9),
(26, 'Kim quất sấy cam thảo', '<p>1. GIỚI THIỆU CHUNG</p>\r\n\r\n<p>Thương hiệu Đồ Ăn Vặt Nhà Họ Chu chuyên cung cấp các sản phẩm đồ ăn vặt có nguồn gốc từ thiên nhiên, giàu dinh dưỡng, phù hợp cho những người theo đuổi lối sống lành mạnh như ăn k.i.êng và eat clean...vv..</p>\r\n\r\n<p>Với cam kết từ nguồn gốc nguyên liệu sạch và quy trình chế biến cẩn thận, Nhà Họ Chu mang đến những món ăn nhẹ vừa ngon miệng vừa bổ dưỡng, giúp duy trì sức khỏe và cân bằng dinh dưỡng hàng ngày. Sản phẩm không chỉ phù hợp cho những ai có thói quen ăn vặt mà còn đáp ứng nhu cầu của người tiêu dùng hiện đại, yêu thích thực phẩm lành mạnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. MÔ TẢ SẢN PHẨM</p>\r\n\r\n<p>Quất tắc sấy cam thảo là loại ô mai, hoa quả sấy dẻo được nhà họ Chu chế biến từ những trái tắc tươi, vỏ mỏng và trái mọng nước được tuyển chọn từ những nông trại uy tín chất lượng,chưng với đường phèn theo quy trình sản xuất hiện đại, qua quá trình sấy dẻo, tạo ra sản phẩm mềm dẻo, và tẩm với cam thảo hương thơm ngào ngạt, kết hợp hài hòa với vị chua của tắc và vị ngọt thanh của đường phèn. Sản phẩm từ thiên nhiên, không phẩm màu hóa học, an toàn cho sức khỏe.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tác dụng ô mai, quất tắc cam thảo</p>\r\n\r\n<p>- Chống oxy hóa</p>\r\n\r\n<p>- Làm dịu và hỗ trợ hệ hô hấp</p>\r\n\r\n<p>- Gi.ảm ho, ti.êu đờm</p>\r\n\r\n<p>- bổ sung nhiều khoáng chất cho cơ thể</p>\r\n\r\n<p>Thông tin chi tiết sản phẩm</p>\r\n\r\n<p>▪️ Thành phần: Quất tắc, cam thảo</p>\r\n\r\n<p>▪️ Trọng lượng: Túi 500g</p>\r\n\r\n<p>▪️ Cách sử dụng: Dùng ngay sau khi mở bao bì, không cần chế biến.</p>\r\n\r\n<p>▪️ Cách bảo quản: bảo quản kín trong tủ lạnh sau khi mở nắp.</p>\r\n\r\n<p>▪️ Ngày sản xuất: in trên bao bì</p>\r\n\r\n<p>▪️ Hạn sử dụng: 6 tháng (kể từ ngày sản xuất)</p>\r\n', '', '13', '19', 'en', 10),
(27, '金桔干和甘草干，天然干燥的整颗金桔和甘草', '<p><font dir=\"auto\"><font dir=\"auto\">. 总论</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">楚氏家族​​零食品牌专注于提供天然、营养的零食产品，适合那些追求健康生活方式（如节食、健康饮食等）的人士。</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">秉承对原料清洁和精细加工的坚持，朱家之家提供美味营养的零食，帮助人们保持健康，均衡每日营养。这些产品不仅适合喜欢零食的人士，也满足了现代消费者对健康食品的需求。</font></font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">2. 产品描述</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">甘草金桔干是一种蜜饯，由朱家精心挑选来自信誉良好的农场的新鲜金桔制成，金桔皮薄果肉饱满多汁。采用现代工艺，将金桔与冰糖慢煮，再经干燥而成，口感软糯Q弹，并融入甘草的芬芳，完美融合了金桔的酸甜与冰糖的清甜。本产品纯天然，不含人工色素和化学添加剂，安全健康。</font></font></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">腌制李子、金橘和甘草的影响。</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">- 抗氧化剂</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">- 舒缓并支持呼吸系统</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">- 减少咳嗽，清除痰液。</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">- 为身体提供多种矿物质。</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">产品详情</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">▪️成分：金橘、甘草</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">▪️产地：中国制造</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">▪️ 重量：500克袋装</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">▪️ 使用方法：开封后立即食用；无需进一步准备。</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">▪️ 储存说明：开封后请置于密封容器中冷藏保存。</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">▪️ 生产日期：印在包装上</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">▪️保质期：6个月（自生产日期起）</font></font></p>\r\n', '', '150', '170', 'zh', 10),
(45, 'Kẹo Dừa Sáp Phủ Mè', '<p>Viên kẹo rất mềm dẽo, có độ ngọt vừa phải, độ dính răng rất rất ít. Điểm nổi bật của sản phẩm là lớp phủ bên ngoài là mè đen siêu ngon. Bên trong là vị đậu phộng béo bùi. Mang lại hương vị độc đáo và lạ miệng. Kẹo dừa sáp phủ mè là món ăn vặt lý tưởng cho những ai yêu thích hương vị mới lạ và đang tìm kiếm những trải nghiệm ẩm thực mới mẻ.</p>\r\n', '', '20', '27', 'en', 21),
(46, '芝麻椰子糖', '<p><font dir=\"auto\">主要成分：纯椰肉、黑芝麻、花生、糖、椰奶、麦芽糖浆。</font></p>\r\n\r\n<p><font dir=\"auto\">保质期：6个月</font></p>\r\n\r\n<p><font dir=\"auto\">净重：200克</font></p>\r\n\r\n<p><font dir=\"auto\">这款椰子糖口感柔软有嚼劲，甜度适中，几乎不粘牙。其亮点在于外层裹着一层香浓的黑芝麻。内馅则是浓郁的花生香味，带来独特而新颖的味觉体验。对于喜爱新奇口味、追求美食新体验的人来说，这款芝麻椰子糖是理想的零食之选。</font></p>\r\n', '', '220', '239', 'zh', 21),
(47, 'Bánh phô mai dâu tây Mochi Hoàng gia', '<p><font dir=\"auto\">&nbsp;</font><strong><font dir=\"auto\">Bánh phô mai dâu tây Mochi Hoàng Gia – Ngọt ngào, béo ngậy và hương vị bánh dâu tây</font></strong><br />\r\n<strong><font dir=\"auto\">Bánh phô mai dâu tây Mochi Hoàng Gia</font></strong><font dir=\"auto\">&nbsp;kết hợp&nbsp;</font><strong><font dir=\"auto\">kết cấu mềm mại và đàn hồi của mochi Nhật Bản</font></strong><font dir=\"auto\">&nbsp;với&nbsp;</font><strong><font dir=\"auto\">lớp kem béo ngậy gợi nhớ đến bánh phô mai dâu tây</font></strong><font dir=\"auto\">&nbsp;, tạo nên một miếng cắn ngọt ngào, thơm ngon và hấp dẫn sẽ chinh phục bạn ngay từ miếng đầu tiên.</font></p>\r\n\r\n<p><font dir=\"auto\">Tuyệt vời để dùng làm món tráng miệng, ăn nhẹ, hoặc dùng kèm với một tách cà phê hay trà ngon.</font></p>\r\n\r\n<p><font dir=\"auto\">&nbsp;</font><strong><font dir=\"auto\">Xuất xứ:</font></strong><font dir=\"auto\">&nbsp;Đài Loan</font><br />\r\n<font dir=\"auto\">&nbsp;</font><strong><font dir=\"auto\">Hương vị:</font></strong><font dir=\"auto\">&nbsp;Bánh phô mai dâu tây</font></p>\r\n\r\n<p><font dir=\"auto\">&nbsp;</font><strong><font dir=\"auto\">Kết cấu:</font></strong><font dir=\"auto\">&nbsp;Bột gạo mềm với nhân kem trái cây béo ngậy</font><br />\r\n<font dir=\"auto\">&nbsp;</font><strong><font dir=\"auto\">Hậu vị:</font></strong><font dir=\"auto\">&nbsp;Ngọt ngào, tươi mát và rất ngon miệng</font></p>\r\n\r\n<p><font dir=\"auto\">&nbsp;</font><strong><font dir=\"auto\">Thích hợp cho:</font></strong><font dir=\"auto\">&nbsp;Món tráng miệng, ăn vặt, những khoảnh khắc ngọt ngào hoặc chia sẻ</font></p>\r\n', '', '10', '28', 'en', 22),
(48, '皇家麻糬草莓芝士蛋糕', '<p><font dir=\"auto\"><font dir=\"auto\">????</font></font><strong><font dir=\"auto\"><font dir=\"auto\">皇家麻糬草莓芝士蛋糕 – 香甜浓郁，带有草莓蛋糕风味</font></font></strong><br />\r\n<strong><font dir=\"auto\"><font dir=\"auto\">皇家麻糬草莓芝士蛋糕</font></font></strong><font dir=\"auto\"><font dir=\"auto\">将</font></font><strong><font dir=\"auto\"><font dir=\"auto\">日本麻糬柔软有弹性的口感</font></font></strong><font dir=\"auto\"><font dir=\"auto\">与</font></font><strong><font dir=\"auto\"><font dir=\"auto\">草莓芝士蛋糕般的奶油馅料完美</font></font></strong><font dir=\"auto\"><font dir=\"auto\">结合，打造出香甜可口、果香四溢的美味，让你一口倾心。</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">无论是作为甜点、零食，还是搭配一杯好咖啡或茶，都是绝佳的选择。</font></font></p>\r\n\r\n<p><font dir=\"auto\"><font dir=\"auto\">????????</font></font><strong><font dir=\"auto\"><font dir=\"auto\">产地：</font></font></strong><font dir=\"auto\"><font dir=\"auto\">台湾</font></font><br />\r\n<font dir=\"auto\"><font dir=\"auto\">????</font></font><strong><font dir=\"auto\"><font dir=\"auto\">口味：</font></font></strong><font dir=\"auto\"><font dir=\"auto\">草莓芝士蛋糕</font></font><br />\r\n<font dir=\"auto\"><font dir=\"auto\">????</font></font><strong><font dir=\"auto\"><font dir=\"auto\">口感：</font></font></strong><font dir=\"auto\"><font dir=\"auto\">软糯的米糕，内馅是香浓的草莓奶油</font></font><br />\r\n<font dir=\"auto\"><font dir=\"auto\">????</font></font><strong><font dir=\"auto\"><font dir=\"auto\">余味：</font></font></strong><font dir=\"auto\"><font dir=\"auto\">香甜清新，令人沉醉</font></font><br />\r\n<font dir=\"auto\"><font dir=\"auto\">????️</font></font><strong><font dir=\"auto\"><font dir=\"auto\">适用场合：</font></font></strong><font dir=\"auto\"><font dir=\"auto\">甜点、零食、甜蜜时刻或与朋友分享</font></font></p>\r\n', '', '199', '299', 'zh', 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo_pages`
--

CREATE TABLE `seo_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `seo_pages`
--

INSERT INTO `seo_pages` (`id`, `name`) VALUES
(1, 'home'),
(2, 'checkout'),
(3, 'contacts'),
(4, 'blog');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo_pages_translations`
--

CREATE TABLE `seo_pages_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `page_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_for` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `sub_for`, `position`) VALUES
(5, 0, 0),
(6, 0, 0),
(9, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_categories_translations`
--

CREATE TABLE `shop_categories_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_categories_translations`
--

INSERT INTO `shop_categories_translations` (`id`, `name`, `abbr`, `for_id`) VALUES
(23, 'Tea & Health Products', 'en', 5),
(24, '茶饮与健康产品', 'zh', 5),
(25, 'Coffee', 'en', 6),
(26, '咖啡', 'zh', 6),
(31, 'Snacks', 'en', 9),
(32, '零食', 'zh', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscribed`
--

CREATE TABLE `subscribed` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `subscribed`
--

INSERT INTO `subscribed` (`id`, `email`, `browser`, `ip`, `time`) VALUES
(1, 'khoikid789@gmail.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '::1', '1771068144');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `textual_pages_tanslations`
--

CREATE TABLE `textual_pages_tanslations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'notifications by email',
  `last_login` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `notify`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'your@email.com', 0, 1771251579);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_public`
--

CREATE TABLE `users_public` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `post_code` varchar(100) NOT NULL DEFAULT '',
  `preferred_payment_type` varchar(50) NOT NULL DEFAULT 'cashOnDelivery',
  `password` varchar(40) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users_public`
--

INSERT INTO `users_public` (`id`, `name`, `email`, `phone`, `address`, `city`, `post_code`, `preferred_payment_type`, `password`, `created`) VALUES
(1, 'user1', 'caterjonh13@gmail.com', '0777796589', '95 lê văn duyệt', 'tphcm', '700000', 'cashOnDelivery', '21232f297a57a5a743894a0e4a801fc3', '2026-02-14 16:47:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `value_store`
--

CREATE TABLE `value_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `thekey` varchar(50) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `value_store`
--

INSERT INTO `value_store` (`id`, `thekey`, `value`) VALUES
(1, 'sitelogo', 'Thiết_kế_chưa_có_tên.png'),
(2, 'navitext', ''),
(3, 'footercopyright', 'Your organization.'),
(4, 'contactspage', '<ul data-end=\"488\" data-start=\"428\">\r\n	<li data-end=\"447\" data-start=\"428\">\r\n	<p data-end=\"447\" data-start=\"430\"><strong data-end=\"447\" data-start=\"433\">Our Office: Điện Biên Phủ , Q.Bình Thạnh , TPHCM ,VN</strong></p>\r\n	</li>\r\n	<li data-end=\"458\" data-start=\"448\">\r\n	<p data-end=\"458\" data-start=\"450\">&nbsp;Phone 012345678</p>\r\n	</li>\r\n	<li data-end=\"469\" data-start=\"459\">\r\n	<p data-end=\"469\" data-start=\"461\">✉️ Email&nbsp;HUTECH_ThanhKhoi.dev</p>\r\n	</li>\r\n	<li data-end=\"488\" data-start=\"470\">\r\n	<p data-end=\"488\" data-start=\"472\">&nbsp;Opening Hours 8AM-21PM</p>\r\n	</li>\r\n</ul>\r\n'),
(5, 'footerContactAddr', ''),
(6, 'footerContactEmail', 'HUTECH_ThanhKhoi.dev'),
(7, 'footerContactPhone', ''),
(8, 'googleMaps', '42.671840, 83.279163'),
(9, 'footerAboutUs', ' LIKEFOOD – Nền tảng bán đặc sản Việt Nam tại thị trường Mỹ Lĩnh vực: Thương mại điện tử – Bán lẻ thực phẩm – Nền tảng số Phạm vi triển khai: Thị trường Hoa Kỳ (phục vụ cộng đồng người Việt) Hình thức triển khai: Kết hợp kinh doanh offline hiện hữu và online (Omnichannel) Bối cảnh & vấn đề cần giải quyết Cộng đồng người Việt tại Mỹ có nhu cầu lớn đối với các đặc sản truyền thống Việt Nam như'),
(10, 'footerSocialFacebook', 'https://www.facebook.com/hutechuniversity/?locale=vi_VN'),
(11, 'footerSocialTwitter', ''),
(12, 'footerSocialGooglePlus', 'https://www.hutech.edu.vn/'),
(13, 'footerSocialPinterest', ''),
(14, 'footerSocialYoutube', 'https://www.youtube.com/c/HUTECHChannel'),
(16, 'contactsEmailTo', 'HUTECH_ThanhKhoi.dev'),
(17, 'shippingOrder', '1'),
(18, 'addJs', ''),
(19, 'publicQuantity', '0'),
(20, 'paypal_email', ''),
(21, 'paypal_sandbox', '0'),
(22, 'publicDateAdded', '1'),
(23, 'googleApi', ''),
(24, 'template', 'wind2026'),
(25, 'cashondelivery_visibility', '1'),
(26, 'showBrands', '0'),
(27, 'showInSlider', '0'),
(28, 'codeDiscounts', '1'),
(29, 'virtualProducts', '1'),
(30, 'multiVendor', '0'),
(31, 'outOfStock', '0'),
(32, 'hideBuyButtonsOfOutOfStock', '0'),
(33, 'moreInfoBtn', '1'),
(34, 'refreshAfterAddToCart', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendors_orders`
--

CREATE TABLE `vendors_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_code` varchar(20) NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendors_orders_clients`
--

CREATE TABLE `vendors_orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(500) NOT NULL,
  `post_code` varchar(500) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `active_pages`
--
ALTER TABLE `active_pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Chỉ mục cho bảng `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `confirm_links`
--
ALTER TABLE `confirm_links`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cookie_law`
--
ALTER TABLE `cookie_law`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`abbr`,`for_id`) USING BTREE;

--
-- Chỉ mục cho bảng `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders_clients`
--
ALTER TABLE `orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_translations`
--
ALTER TABLE `products_translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `seo_pages`
--
ALTER TABLE `seo_pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subscribed`
--
ALTER TABLE `subscribed`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users_public`
--
ALTER TABLE `users_public`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `value_store`
--
ALTER TABLE `value_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`thekey`);

--
-- Chỉ mục cho bảng `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `vendors_orders`
--
ALTER TABLE `vendors_orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `active_pages`
--
ALTER TABLE `active_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `confirm_links`
--
ALTER TABLE `confirm_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `cookie_law`
--
ALTER TABLE `cookie_law`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders_clients`
--
ALTER TABLE `orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `products_translations`
--
ALTER TABLE `products_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `seo_pages`
--
ALTER TABLE `seo_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `subscribed`
--
ALTER TABLE `subscribed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users_public`
--
ALTER TABLE `users_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `value_store`
--
ALTER TABLE `value_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vendors_orders`
--
ALTER TABLE `vendors_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
