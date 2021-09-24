class News {
  final String title;
  final String subtitle;
  final String content;
  final String category;
  final String time;
  final String author;
  final String seen;
  final String favorite;
  final String image;
  final String estimate;

  News({
    this.author,
    this.content,
    this.category,
    this.estimate,
    this.favorite,
    this.image,
    this.seen,
    this.subtitle,
    this.time,
    this.title,
  });
}

List<News> popularList = [
  News(
    author: "Thể thao quốc tế",
    estimate: "3",
    category: "Bitcoin",
    favorite: "700",
    seen: "4.5K",
    time: "4 hours ago",
    title: "Thất bại của Djokovic và đoạn kết của ‘Big 3’",
    image:
        "https://i1-thethao.vnecdn.net/2021/09/17/2-3486-1631853268.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=5qn5zvhissP2pT0sz5jkRw",
    subtitle:
        "Novak Djokovic đoạt ba Grand Slam mùa 2021, nhưng nhiều dấu hiệu cho thấy các đàn em đã sẵn sàng cạnh tranh sòng phẳng với anh.",
    content:
        "Novak Djokovic đoạt ba Grand Slam mùa 2021, nhưng nhiều dấu hiệu cho thấy các đàn em đã sẵn sàng cạnh tranh sòng phẳng với anh.Sau trận thua Daniil Medvedev hôm 12/9, Djokovic thừa nhận chịu áp lực tâm lý khi theo đuổi kỷ lục 21 Grand Slam. Anh biết về áp lực khi nhắc lại chuyện Serena Williams thua bốn trận chung kết liên tiếp trong nỗ lực bắt kịp kỷ lục 24 Grand Slam của huyền thoại Margaret Court. Nhưng Djokovic không tìm được giải pháp đối phó áp lực và thua Medvedev chỉ sau ba set.Tôi thấy nhẹ nhõm vì mọi thứ đã kết thúc, sau nhiều tháng tâm lý bị dồn nén, Djokovic bày tỏ sau chung kết Mỹ Mở rộng. Tôi phải đối phó với cảm xúc suốt thời gian dài và dù không giành Grand Slam thứ 21, tôi đã được giải thoát",
  ),
  News(
    author: "Thể thao trong nước",
    estimate: "5",
    category: "Business",
    favorite: "502",
    seen: "1.2K",
    time: "10 hours ago",
    title: "FIFA tiếc bàn thắng hụt của thủ môn Hồ Văn Ý",
    image:
        "https://i1-thethao.vnecdn.net/2021/09/17/gettyimages-1340738691-2048x20-6215-4630-1631851514.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=R-sI4BweHX1MJrjcdUnI2A",
    subtitle:
        "Bài viết trên trang chủ FIFA nhắc đến pha hỏng ăn của thủ môn Việt Nam, trong trận thắng Panama ở lượt hai futsal World Cup 2021.",
    content:
        "Bài viết trên trang chủ FIFA nhắc đến pha hỏng ăn của thủ môn Việt Nam, trong trận thắng Panama ở lượt hai futsal World Cup 2021. Các thủ môn hiếm khi được cảm nhận được sự phấn khích khi ghi bàn, nhưng không điều gì trong bóng đá ngăn cản họ thử vận may. Ở lượt trận hôm qua, thủ môn Hồ Văn Ý và Guitta - những chốt chặn cuối cùng của Việt Nam và Brazil - chỉ còn cách bàn thắng một vài centimet, bài viết có đoạn. Hồ Văn Ý một lần đưa bóng trúng cột dọc và một lần khác làm rung chuyển cả xà ngang lẫn cột dọc khung thành Panama. Thủ thành Brazil cũng tung cú sút căng từ vạch giữa sân nhưng bóng dội trúng khung thành CH Czech",
  ),
  News(
    author: "Jon Fingas",
    estimate: "12",
    category: "Tech",
    favorite: "23K",
    seen: "40.5K",
    time: "12 Hours ago",
    title: "Barca lỗ nặng nhất lịch sử",
    image:
        "https://i1-thethao.vnecdn.net/2021/09/17/barca-1631854906-4700-1631855082.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=hubGFk21JyiJFNH4UrPiBw",
    subtitle:
        "Barca phá sâu hơn gấp đôi kỷ lục thua lỗ của Man City, khi thông báo lợi nhuận sau thuế của mùa giải 2020-2021 âm 566 triệu USD.",
    content:
        "Barca phá sâu hơn gấp đôi kỷ lục thua lỗ của Man City, khi thông báo lợi nhuận sau thuế của mùa giải 2020-2021 âm 566 triệu USD. Hội đồng quản trị Barca hôm 16/9 báo lỗ 481 triệu euro (566 triệu USD), nhiều hơn cả số liệu Chủ tịch Joan Laporta từng công bố trước đây. Trong họp báo tháng 8/2021, Laporta nói rằng Barca chịu lỗ 531 triệu USD ở mùa trước, và đang trong quá trình kiểm toán. Barca thâm hụt hơn gấp đôi so với thua lỗ kỷ lục 268 triệu USD của Man City mùa 2010-2011. Họ thế chỗ Man City để thành CLB lỗ nặng nhất lịch sử bóng đá.",
  ),
  News(
    author: "Kirsten Korosec",
    estimate: "8",
    category: "Tech",
    favorite: "12K",
    seen: "30K",
    time: "22 Hours ago",
    title: "Tuyển thủ futsal tặng chiến thắng cho người dân Việt Nam",
    image:
        "https://i1-thethao.vnecdn.net/2021/09/17/gettyimages-1340729367-2048x20-1621-5261-1631823735.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=eBW0r_y-UHZLMZ1wLRO20A",
    subtitle:
        "Tuyển thủ Nguyễn Minh Trí mong chiến thắng trước Panama ở futsal World Cup tối 16/9 là động lực để người dân vượt qua đại dịch Covid-19.",
    content:
        'Tuyển thủ Nguyễn Minh Trí mong chiến thắng trước Panama ở futsal World Cup tối 16/9 là động lực để người dân vượt qua đại dịch Covid-19. Chúng tôi rất vui mừng và hạnh phúc khi đã giành được chiến thắng quan trọng, để mở ra cơ hội đi tiếp cho futsal Việt Nam ở World Cup", Nguyễn Minh Trí chia sẻ sau trận thắng 3-2 trước Panama. "Chúng tôi xin được dành tặng cho người hâm mộ. Mong rằng, đó sẽ là động lực tinh thần cho người dân vượt qua đại dịch đang diễn biến phức tạp ở Việt Nam',
  ),
  News(
    author: "Darrell Etherington",
    estimate: "6",
    category: "Tech",
    favorite: "21K",
    seen: "40.2K",
    time: "8 Hours ago",
    title: "Rahm tiếc vì hụt giải Golfer xuất sắc PGA Tour",
    image:
        "https://i1-thethao.vnecdn.net/2021/09/17/AP21248819062918-jpeg-7391-1631864276.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=a9HkwhxYbSCkwXincg8c1A",
    subtitle:
        "Golfer Jon Rahm cho rằng anh không được công nhận giỏi nhất PGA Tour mùa này vì bị loại bất đắc dĩ ở hai sự kiện.",
    content:
        "Golfer Jon Rahm cho rằng anh không được công nhận giỏi nhất PGA Tour mùa này vì bị loại bất đắc dĩ ở hai sự kiện. Về nhì không hẳn vui. Tôi nghĩ thành tích cá nhân mùa này đủ cao để ẵm danh hiệu Golfer xuất sắc, nhưng sự cố ở Memorial làm hỏng việc. Nếu đấu tiếp giải đó, tôi có thể thắng và được tín nhiệm cao hơn. Ở Olympic, tôi cũng có cơ hội như thế nhưng phải ngồi ngoài cuộc, Rahm nói trên Golf Channel hôm 16/9 khi được đề nghị phân tích lợi thế cạnh tranh trong cuộc đua Golfer xuất sắc PGA Tour mùa này.",
  ),
];

List<News> trendingList = [
  News(
    author: "Bóng đá trong nước",
    estimate: "3",
    category: "Bitcoin",
    favorite: "700",
    seen: "4.51K",
    time: "4 hours ago",
    title: "Tại sao FIFA lại lắp thanh chắn chéo ở khung thành futsal?",
    image:
        "https://i1-thethao.vnecdn.net/2021/09/17/2012-jpeg-1631816797-163181681-2928-4957-1631817118.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=Lbs-D1_GWj0uqgQ6EWHzQg",
    subtitle:
        "Just days ago, Bitcoin was trading at \$9,800, just days away from decisively passing \$10,000. Now, the cryptocurrency is trading at \$9,200, having collapsed on the back of fears of Satoshi Nakamoto dumping his cryptocurrency",
    content:
        "LITHUANIAThanh chắn, tạo hình tam giác nối từ cột dọc xuống thanh sát đất, đã cướp đi hai bàn thắng của Việt Nam và Kazakhstan ở futsal World Cup 2021. Phút 11, khi Việt Nam dẫn Panama 2-1 tối 16/9, thủ môn Hồ Văn Ý phất từ cấm địa đưa bóng đập trúng mép trong cột phải, rơi xuống đất rồi nảy tới mép thanh chắn và bật ra ngoài khung thành. Trọng tài cho trận đấu tiếp tục, nhưng HLV Phạm Minh Giang khiếu nại ngay khi bóng ra biên. Sau khi xem video quay chậm, trọng tài chính người Bồ Đào Nha Eduardo Fernandes vẫn không công nhận bàn cho Việt Nam. Thầy trò Minh Giang vẫn thắng chung cuộc 3-2, nhưng có thể cải thiện chút hiệu số bàn thắng - bại nếu cú đá của Văn Ý được công nhận thành bàn. Khó khẳng định được trọng tài đã sai, nhưng gần như chắc chắn Việt Nam đã ghi bàn nếu không có thanh chắn chéo ở khung thành. Khi đó, bóng sẽ bay vào mép trong lưới và trọng tài không cần phải xem lại video để công nhận bàn. Một ngày trước đó, khi Kazakhstan dẫn Lithuania 1-0 ở bảng A, tiền đạo Albert Akbalikov đệm cận thành trúng vào thanh chắn khung thành đội chủ nhà. Kazakhstan sau đó cũng khiếu nại, nhưng bị trọng tài từ chối bàn. Nếu không có thanh chắn đó, Kazakhstan đã nâng tỷ số lên 2-0. Trong điều lệ giải và luật futsal 2021-2022 của FIFA, không có phần nào nhắc tới quy định về thanh chắn này. Nhưng, các trận đấu đã qua ở futsal World Cup 2021 đều có thanh chéo này gắn ở cầu môn.",
  ),
  News(
    author: "Khoa học Công nghệ",
    estimate: "5",
    category: "Business",
    favorite: "502",
    seen: "1.21K",
    time: "10 hours ago",
    title: "Quế Ngọc Hải muốn cải thiện thành tích trước Trung Quốc",
    image:
        "https://i1-thethao.vnecdn.net/2021/09/16/AC7Y0330-2450-1631802601.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=VqqTz7MZhXoafJFeGGLR8w",
    subtitle:
        "Trước buổi tập chiều 16/9, đội trưởng Quế Ngọc Hải khẳng định anh và đồng đội đang hướng đến kết quả tích cực ở các lượt trận tiếp theo tại vòng loại World Cup 2022.",
    content:
        "Trước buổi tập chiều 16/9, đội trưởng Quế Ngọc Hải khẳng định anh và đồng đội đang hướng đến kết quả tích cực ở các lượt trận tiếp theo tại vòng loại World Cup 2022. \n\nMột khi đã vào đến vòng loại thứ ba, chắc chắn Trung Quốc và Oman đều mạnh, anh nói về hai đối thủ sắp tới của Việt Nam. Ban huấn luyện và tất cả các cầu thủ sẽ cố gắng để phân tích kỹ hơn, nhằm đưa ra những giải pháp phù hợp. Mục tiêu của chúng tôi là nỗ lực hết sức để đạt kết quả tốt hơn so với hai trận đầu tiên",
  ),
  News(
    author: "Jon Fingas",
    estimate: "12",
    category: "Tech",
    favorite: "23K",
    seen: "40.51K",
    time: "12 Hours ago",
    title: "Đặng Văn Lâm lỡ trận gặp Trung Quốc vì chấn thương nặng",
    image:
        "https://i1-thethao.vnecdn.net/2021/09/15/a1-1303-1631706728.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=wIWhOVES5upI5NKVcnGzFg",
    subtitle:
        "Thủ môn Đặng Văn Lâm chấn thương vai, sẽ vắng mặt khi Việt Nam làm khách của Trung Quốc và Oman tại vòng loại World Cup 2022.",
    content:
        "Thủ môn Đặng Văn Lâm chấn thương vai, sẽ vắng mặt khi Việt Nam làm khách của Trung Quốc và Oman tại vòng loại World Cup 2022. Đặng Văn Lâm chấn thương vai khi tập luyện ở Cerezo Osaka. Thủ môn của Việt Nam có thể phải phẫu thuật, xa sân cỏ vài tháng. Điều này đồng nghĩa với việc Văn Lâm không thể cùng đội tuyển làm khách của Trung Quốc ngày 7/10 và Oman ngày 12/10. Trước đó, thủ môn mang hai dòng máu Việt Nam và Nga được HLV Park Hang-seo cho bắt chính trong trận thua Australia 0-1 trên sân Mỹ Đình ngày 7/9. Do vấn đề cùa Văn Lâm, HLV Park đã gọi bổ sung Trần Nguyên Mạnh. Bên cạnh đó, đội tuyển còn có Bùi Tấn Trường, Nguyễn Văn Toản và Nguyễn Văn Hoàng.",
  ),
  News(
    author: "Kirsten Korosec",
    estimate: "8",
    category: "Tech",
    favorite: "12K",
    seen: "30.1K",
    time: "22 Hours ago",
    title: "Việt Nam bùng hy vọng vào vòng 1/8 futsal World Cup",
    image:
        "https://i1-thethao.vnecdn.net/2021/09/17/241379967-2928910910754568-521-7235-1150-1631834768.jpg?w=220&h=132&q=100&dpr=1&fit=crop&s=C3OwqujWiIBetNnl3puI4A",
    subtitle:
        "Bàn độc diễn của Văn Hiếu cùng sự xuất sắc của thủ môn Văn Ý giúp Việt Nam thắng Panama 3-2 ở lượt trận thứ hai bảng D, tối 16/9.",
    content:
        'Bàn độc diễn của Văn Hiếu cùng sự xuất sắc của thủ môn Văn Ý giúp Việt Nam thắng Panama 3-2 ở lượt trận thứ hai bảng D, tối 16/9. Chiến thắng là mục tiêu duy nhất hai đội cùng hướng đến, vì đều đã thất bại ở trận ra quân. Tuy thể hình kém hơn, Việt Nam đã tận dụng tốt những tình huống cố định khi nhập cuộc. Phút thứ 3, từ một pha đá biên, pivot Minh Trí rảnh chân sút tung nóc lưới thủ môn Hernandez. Bàn nhân đôi cách biệt của Việt Nam đến theo một kịch bản tương tự, lần này là quả phạt góc ở cánh phải. Đoàn Phát nhấn bóng một nhịp rồi sút căng chéo góc, khiến thủ môn Panama không kịp phản xạ.',
  ),
  News(
    author: "Darrell Etherington",
    estimate: "6",
    category: "Tech",
    favorite: "21K",
    seen: "41.5K",
    time: "8 Hours ago",
    title:
        "New non-profit from Google Maps co-creator offers temporary ‘safe’ passes to aid COVID-19 reopening effort",
    image: "https://images.wsj.net/im-190173",
    subtitle:
        "There are a number of different technologies both proposed and in development to help smooth the reopening of parts of the economy even as the threat of the COVID-19 pandemic continues.",
    content:
        "There are a number of different technologies both proposed and in development to help smooth the reopening of parts of the economy even as the threat of the COVID-19 pandemic continues. One such tech solution launching today comes from Brian McClendon,  co-founder of Keyhole,  the company that Google  purchased in 2004 that would form the basis of Google Earth and Google Maps. McClendon’s new CVKey Project is a registered nonprofit that is launching with an app for symptom self-assessment that generates a temporary QR code, which will work with participating community facilities as a kind of health “pass” on an opt-in basis.\n\nUltimately, CVKey Project hopes to launch an entire suite of apps dedicated to making it easier to reopen public spaces safely.  Apple and Google recently launched an exposure notification API that would allow CVKey to include those notifications in its apps. CVKey also plans to provide information about facilities open under current government guidelines and their policies to prevent the spread of COVID-19 as much as possible.\n\nThe core element of CVKey Project’s approach, however, is the use of a QR code generated by its app that essentially acts as a verification that you’re “safe” to enter one of these shared spaces. The system is designed with user privacy in mind, according to McClendon. Any identity or health data exists only on a user’s individual device — no date is ever uploaded to a cloud server or shared without a user’s consent. Information is also provided about what that sharing entails. Users voluntarily offer their health info, and the app never asks for location information. Most of what it does can be done without an internet connection at all, McClendon explains.\n\nWhen you generate and scan a QR code at a participating location, a simple binary display (based on the location’s policies) indicates whether you’re cleared to pass. The location won’t see any specifics about your health information. The code simply transmits the particulars of shown symptoms (which ones and how recently, for instance), and then that is matched against the  public space’s policy. The app then provides a “go”/”no-go” response.\n\nMcClendon created CVKey Project with former Google Earth, Google Maps and Uber  co-workers Manik Gupt and Waleed Kadous, as well as Dr. Marci Nielsen, a public health specialist with a long history of public and private institution leadership.\n\nThe apps created by CVKey Project will be available soon, and the nonprofit is looking for potential partners to participate in its program. Like just about everything else designed to address the COVID-19 crisis, it’s not a simple fix, but it could form part of a larger strategy that provides a path forward for dealing with the pandemic.",
  ),
];

List<News> recentList = [
  News(
    author: "Nick Chong",
    estimate: "3",
    category: "Bitcoin",
    favorite: "700",
    seen: "41.51K",
    time: "4 hours ago",
    title: "Tại sao FIFA lại lắp thanh chắn chéo ở khung thành futsal?",
    image:
        "https://i1-thethao.vnecdn.net/2021/09/17/2012-jpeg-1631816797-163181681-2928-4957-1631817118.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=Lbs-D1_GWj0uqgQ6EWHzQg",
    subtitle:
        "Just days ago, Bitcoin was trading at \$9,800, just days away from decisively passing \$10,000. Now, the cryptocurrency is trading at \$9,200, having collapsed on the back of fears of Satoshi Nakamoto dumping his cryptocurrency",
    content:
        "LITHUANIAThanh chắn, tạo hình tam giác nối từ cột dọc xuống thanh sát đất, đã cướp đi hai bàn thắng của Việt Nam và Kazakhstan ở futsal World Cup 2021. Phút 11, khi Việt Nam dẫn Panama 2-1 tối 16/9, thủ môn Hồ Văn Ý phất từ cấm địa đưa bóng đập trúng mép trong cột phải, rơi xuống đất rồi nảy tới mép thanh chắn và bật ra ngoài khung thành. Trọng tài cho trận đấu tiếp tục, nhưng HLV Phạm Minh Giang khiếu nại ngay khi bóng ra biên. Sau khi xem video quay chậm, trọng tài chính người Bồ Đào Nha Eduardo Fernandes vẫn không công nhận bàn cho Việt Nam. Thầy trò Minh Giang vẫn thắng chung cuộc 3-2, nhưng có thể cải thiện chút hiệu số bàn thắng - bại nếu cú đá của Văn Ý được công nhận thành bàn. Khó khẳng định được trọng tài đã sai, nhưng gần như chắc chắn Việt Nam đã ghi bàn nếu không có thanh chắn chéo ở khung thành. Khi đó, bóng sẽ bay vào mép trong lưới và trọng tài không cần phải xem lại video để công nhận bàn. Một ngày trước đó, khi Kazakhstan dẫn Lithuania 1-0 ở bảng A, tiền đạo Albert Akbalikov đệm cận thành trúng vào thanh chắn khung thành đội chủ nhà. Kazakhstan sau đó cũng khiếu nại, nhưng bị trọng tài từ chối bàn. Nếu không có thanh chắn đó, Kazakhstan đã nâng tỷ số lên 2-0. Trong điều lệ giải và luật futsal 2021-2022 của FIFA, không có phần nào nhắc tới quy định về thanh chắn này. Nhưng, các trận đấu đã qua ở futsal World Cup 2021 đều có thanh chéo này gắn ở cầu môn.",
  ),
  News(
    author: "BBC News",
    estimate: "5",
    category: "Business",
    favorite: "502",
    seen: "11.21K",
    time: "10 hours ago",
    title: "Rahm tiếc vì hụt giải Golfer xuất sắc PGA Tour",
    image:
        "https://i1-thethao.vnecdn.net/2021/09/17/AP21248819062918-jpeg-7391-1631864276.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=a9HkwhxYbSCkwXincg8c1A",
    subtitle:
        "Golfer Jon Rahm cho rằng anh không được công nhận giỏi nhất PGA Tour mùa này vì bị loại bất đắc dĩ ở hai sự kiện.",
    content:
        "Golfer Jon Rahm cho rằng anh không được công nhận giỏi nhất PGA Tour mùa này vì bị loại bất đắc dĩ ở hai sự kiện. Về nhì không hẳn vui. Tôi nghĩ thành tích cá nhân mùa này đủ cao để ẵm danh hiệu Golfer xuất sắc, nhưng sự cố ở Memorial làm hỏng việc. Nếu đấu tiếp giải đó, tôi có thể thắng và được tín nhiệm cao hơn. Ở Olympic, tôi cũng có cơ hội như thế nhưng phải ngồi ngoài cuộc, Rahm nói trên Golf Channel hôm 16/9 khi được đề nghị phân tích lợi thế cạnh tranh trong cuộc đua Golfer xuất sắc PGA Tour mùa này.",
  ),
  News(
    author: "Jon Fingas",
    estimate: "12",
    category: "Tech",
    favorite: "213K",
    seen: "41.51K",
    time: "12 Hours ago",
    title: "Việt Nam bùng hy vọng vào vòng 1/8 futsal World Cup",
    image:
        "https://i1-thethao.vnecdn.net/2021/09/17/241379967-2928910910754568-521-7235-1150-1631834768.jpg?w=220&h=132&q=100&dpr=1&fit=crop&s=C3OwqujWiIBetNnl3puI4A",
    subtitle:
        "Bàn độc diễn của Văn Hiếu cùng sự xuất sắc của thủ môn Văn Ý giúp Việt Nam thắng Panama 3-2 ở lượt trận thứ hai bảng D, tối 16/9.",
    content:
        'Bàn độc diễn của Văn Hiếu cùng sự xuất sắc của thủ môn Văn Ý giúp Việt Nam thắng Panama 3-2 ở lượt trận thứ hai bảng D, tối 16/9. Chiến thắng là mục tiêu duy nhất hai đội cùng hướng đến, vì đều đã thất bại ở trận ra quân. Tuy thể hình kém hơn, Việt Nam đã tận dụng tốt những tình huống cố định khi nhập cuộc. Phút thứ 3, từ một pha đá biên, pivot Minh Trí rảnh chân sút tung nóc lưới thủ môn Hernandez. Bàn nhân đôi cách biệt của Việt Nam đến theo một kịch bản tương tự, lần này là quả phạt góc ở cánh phải. Đoàn Phát nhấn bóng một nhịp rồi sút căng chéo góc, khiến thủ môn Panama không kịp phản xạ.',
  ),
  News(
    author: "Kirsten Korosec",
    estimate: "8",
    category: "Tech",
    favorite: "12K",
    seen: "31.1K",
    time: "22 Hours ago",
    title: "Đặng Văn Lâm lỡ trận gặp Trung Quốc vì chấn thương nặng",
    image:
        "https://i1-thethao.vnecdn.net/2021/09/15/a1-1303-1631706728.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=wIWhOVES5upI5NKVcnGzFg",
    subtitle:
        "Thủ môn Đặng Văn Lâm chấn thương vai, sẽ vắng mặt khi Việt Nam làm khách của Trung Quốc và Oman tại vòng loại World Cup 2022.",
    content:
        "Thủ môn Đặng Văn Lâm chấn thương vai, sẽ vắng mặt khi Việt Nam làm khách của Trung Quốc và Oman tại vòng loại World Cup 2022. Đặng Văn Lâm chấn thương vai khi tập luyện ở Cerezo Osaka. Thủ môn của Việt Nam có thể phải phẫu thuật, xa sân cỏ vài tháng. Điều này đồng nghĩa với việc Văn Lâm không thể cùng đội tuyển làm khách của Trung Quốc ngày 7/10 và Oman ngày 12/10. Trước đó, thủ môn mang hai dòng máu Việt Nam và Nga được HLV Park Hang-seo cho bắt chính trong trận thua Australia 0-1 trên sân Mỹ Đình ngày 7/9. Do vấn đề cùa Văn Lâm, HLV Park đã gọi bổ sung Trần Nguyên Mạnh. Bên cạnh đó, đội tuyển còn có Bùi Tấn Trường, Nguyễn Văn Toản và Nguyễn Văn Hoàng.",
  ),
  News(
    author: "Darrell Etherington",
    estimate: "6",
    category: "Tech",
    favorite: "21K",
    seen: "42.5K",
    time: "8 Hours ago",
    title:
        "New non-profit from Google Maps co-creator offers temporary ‘safe’ passes to aid COVID-19 reopening effort",
    image: "https://images.wsj.net/im-190173",
    subtitle:
        "There are a number of different technologies both proposed and in development to help smooth the reopening of parts of the economy even as the threat of the COVID-19 pandemic continues.",
    content:
        "There are a number of different technologies both proposed and in development to help smooth the reopening of parts of the economy even as the threat of the COVID-19 pandemic continues. One such tech solution launching today comes from Brian McClendon,  co-founder of Keyhole,  the company that Google  purchased in 2004 that would form the basis of Google Earth and Google Maps. McClendon’s new CVKey Project is a registered nonprofit that is launching with an app for symptom self-assessment that generates a temporary QR code, which will work with participating community facilities as a kind of health “pass” on an opt-in basis.\n\nUltimately, CVKey Project hopes to launch an entire suite of apps dedicated to making it easier to reopen public spaces safely.  Apple and Google recently launched an exposure notification API that would allow CVKey to include those notifications in its apps. CVKey also plans to provide information about facilities open under current government guidelines and their policies to prevent the spread of COVID-19 as much as possible.\n\nThe core element of CVKey Project’s approach, however, is the use of a QR code generated by its app that essentially acts as a verification that you’re “safe” to enter one of these shared spaces. The system is designed with user privacy in mind, according to McClendon. Any identity or health data exists only on a user’s individual device — no date is ever uploaded to a cloud server or shared without a user’s consent. Information is also provided about what that sharing entails. Users voluntarily offer their health info, and the app never asks for location information. Most of what it does can be done without an internet connection at all, McClendon explains.\n\nWhen you generate and scan a QR code at a participating location, a simple binary display (based on the location’s policies) indicates whether you’re cleared to pass. The location won’t see any specifics about your health information. The code simply transmits the particulars of shown symptoms (which ones and how recently, for instance), and then that is matched against the  public space’s policy. The app then provides a “go”/”no-go” response.\n\nMcClendon created CVKey Project with former Google Earth, Google Maps and Uber  co-workers Manik Gupt and Waleed Kadous, as well as Dr. Marci Nielsen, a public health specialist with a long history of public and private institution leadership.\n\nThe apps created by CVKey Project will be available soon, and the nonprofit is looking for potential partners to participate in its program. Like just about everything else designed to address the COVID-19 crisis, it’s not a simple fix, but it could form part of a larger strategy that provides a path forward for dealing with the pandemic.",
  ),
];
