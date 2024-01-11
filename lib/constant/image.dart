const ImagesplasScreen = "images/Splashscreen.png"; // ImagesplasScreen

List lstPlayNow = [
  "images/movie1.png",
  "images/movie2.png",
  "images/movie3.png",
  "images/movie4.png",
  "images/movie5.png",
  "images/movie6.png",
  "images/movie3.png",
  "images/movie4.png",
  "images/movie5.png",
];

class DataHome {
  String type = "";
  String labbel = "";
  List<ImageDetail> images = [];

  DataHome(String type, String label, List<ImageDetail> images) {
    this.type = type;
    this.labbel = label;
    this.images = images;
  }
}

class ImageDetail {
  String profileImg = "";
  String coverImg = "";
  String title = "";
  String detail = "";

  ImageDetail(String profileImg, String coverImg, String title, String detail) {
    this.profileImg = profileImg;
    this.coverImg = coverImg;
    this.title = title;
    this.detail = detail;
  }

  factory ImageDetail.fromJson(Map<String, dynamic> json) {
    return ImageDetail(
      json["profileImg"],
      json["coverImg"],
      json["title"],
      json["detail"],
    );
  }

  Map toJson() {
    return {
      'profileImg': profileImg,
      'coverImg': coverImg,
      'title': title,
      'detail': detail,
    };
  }
}

const String noneWatchListImage = "images/magic-box.png";

List<DataHome> dataHOme = [
  DataHome("NowPlaying", "Now playing", [
    ImageDetail(
      "images/NowPlaying/profile/pf1.png",
      "images/NowPlaying/cover/cv1.png",
      "Fukrey 3 (2023)",
      "In the third installment, the Fukras plan to take over Delhi, and run for city elections. However, they have no money and so they take on an international job to make a quick buck, which changes their lives forever. ",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf2.png",
      "images/NowPlaying/cover/cv2.png",
      "Bhagavanth Kesari (2023)",
      "Bhagavanth Kesari's life takes an unexpected turn when he becomes the guardian of Vijaya Lakshmi aka Vijji, daughter of his jailer. Kesari, with his unwavering sense of justice, embarks on a journey to nurture Vijji into a resilient young woman aspiring to join the Indian army.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf3.png",
      "images/NowPlaying/cover/cv3.png",
      "Monarch: Legacy of Monsters (2023)",
      "After surviving Godzilla's attack on San Francisco, Cate is shaken yet again by a shocking secret. Amid monstrous threats, she embarks on a globetrotting adventure to learn the truth about her family—and the mysterious organization known as Monarch.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf4.png",
      "images/NowPlaying/cover/cv4.png",
      "Squid Game: The Challenge (2023)",
      "There are no options to watch Squid Game: The Challenge for free online today in India. You can select 'Free' and hit the notification bell to be notified when show is available to watch for free on streaming services and TV.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf5.png",
      "images/NowPlaying/cover/cv5.png",
      "Naruto: Shippuden (2007)",
      "Naruto Uzumaki, is a loud, hyperactive, adolescent ninja who constantly searches for approval and recognition, as well as to become Hokage, who is acknowledged as the leader and strongest of all ninja in the village.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf6.png",
      "images/NowPlaying/cover/cv6.png",
      "Tee Yod",
      "Faster than the speed of light, Barry Allen aka The Flash uses his powers to travel back in time and save his mother from dying. But things don’t go as planned, and Flash finds himself stuck in a reality ruled by the evil General Zod. Flash and his allies; an out of shape Batman, and an imprisoned Supergirl join forces to undo this mess and save the world from Zod’s master plan for destruction. ",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf7.png",
      "images/NowPlaying/cover/cv7.png",
      "Tee Yod",
      "Faster than the speed of light, Barry Allen aka The Flash uses his powers to travel back in time and save his mother from dying. But things don’t go as planned, and Flash finds himself stuck in a reality ruled by the evil General Zod. Flash and his allies; an out of shape Batman, and an imprisoned Supergirl join forces to undo this mess and save the world from Zod’s master plan for destruction. ",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf8.png",
      "images/NowPlaying/cover/cv8.png",
      "Trolls: Band Together",
      "Faster than the speed of light, Barry Allen aka The Flash uses his powers to travel back in time and save his mother from dying. But things don’t go as planned, and Flash finds himself stuck in a reality ruled by the evil General Zod. Flash and his allies; an out of shape Batman, and an imprisoned Supergirl join forces to undo this mess and save the world from Zod’s master plan for destruction. ",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf9.png",
      "images/NowPlaying/cover/cv9.png",
      "The Hunger Games",
      "Faster than the speed of light, Barry Allen aka The Flash uses his powers to travel back in time and save his mother from dying. But things don’t go as planned, and Flash finds himself stuck in a reality ruled by the evil General Zod. Flash and his allies; an out of shape Batman, and an imprisoned Supergirl join forces to undo this mess and save the world from Zod’s master plan for destruction. ",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf10.png",
      "images/NowPlaying/cover/cv10.png",
      "Smugglers (KR)",
      "Faster than the speed of light, Barry Allen aka The Flash uses his powers to travel back in time and save his mother from dying. But things don’t go as planned, and Flash finds himself stuck in a reality ruled by the evil General Zod. Flash and his allies; an out of shape Batman, and an imprisoned Supergirl join forces to undo this mess and save the world from Zod’s master plan for destruction. ",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf11.png",
      "images/NowPlaying/cover/cv11.png",
      "Wish",
      "Faster than the speed of light, Barry Allen aka The Flash uses his powers to travel back in time and save his mother from dying. But things don’t go as planned, and Flash finds himself stuck in a reality ruled by the evil General Zod. Flash and his allies; an out of shape Batman, and an imprisoned Supergirl join forces to undo this mess and save the world from Zod’s master plan for destruction. ",
    ),
    ImageDetail(
      "images/upcoming/profile/pf5.PNG",
      "images/upcoming/cover/cv5.png",
      "Kantara (2022)",
      "Shiva, a tribal vagabond lives with his mother in hamlet, stays away from the traditional Daivaradhane and Bhoota Kola legacy due to an unforgettable childhood incident. He is happy loafing around with his friends and doing petty jobs for his landlord. When Forest officer Murali enters the scene, it gives a fresh dimension to the man-vs-nature fight. Can Shiva save the forest from Murali? Or is Murali just a dummy bait cast by bigger fish?",
    ),
    ImageDetail(
      "images/upcoming/profile/pf6.PNG",
      "images/upcoming/cover/cv6.png",
      "Fair Play (2023)",
      "An unexpected promotion at a cutthroat hedge fund pushes a young couple's relationship to the brink, threatening to unravel not only their recent engagement but their lives.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf4.png",
      "images/NowPlaying/cover/cv4.png",
      "Squid Game: The Challenge (2023)",
      "There are no options to watch Squid Game: The Challenge for free online today in India. You can select 'Free' and hit the notification bell to be notified when show is available to watch for free on streaming services and TV.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf5.png",
      "images/NowPlaying/cover/cv5.png",
      "Naruto: Shippuden (2007)",
      "Naruto Uzumaki, is a loud, hyperactive, adolescent ninja who constantly searches for approval and recognition, as well as to become Hokage, who is acknowledged as the leader and strongest of all ninja in the village.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf6.png",
      "images/NowPlaying/cover/cv6.png",
      "The Flash (2023)",
      "Faster than the speed of light, Barry Allen aka The Flash uses his powers to travel back in time and save his mother from dying. But things don’t go as planned, and Flash finds himself stuck in a reality ruled by the evil General Zod. Flash and his allies; an out of shape Batman, and an imprisoned Supergirl join forces to undo this mess and save the world from Zod’s master plan for destruction. ",
    ),
  ]),

  /// Upcoming
  DataHome("Upcoming", "Upcoming", [
    ImageDetail(
      "images/upcoming/profile/pf1.PNG",
      "images/upcoming/cover/cv1.png",
      "Satyaprem Ki Katha (2023)",
      "Sparks fly when Satyaprem, a Gujarati boy next-door desperate to tie the knot lays his eyes on the town's most beautiful girl, Katha. This musical rom-com tells the story of their rollercoaster romance as their love deepens.  ",
    ),
    ImageDetail(
      "images/upcoming/profile/pf2.PNG",
      "images/upcoming/cover/cv2.png",
      "Tiger Zinda Hai (2017)",
      "When a group of Indian and Pakistani nurses are held hostage in Iraq by a terrorist organization, a secret agent is drawn out of hiding to rescue them.",
    ),
    ImageDetail(
      "images/upcoming/profile/pf3.PNG",
      "images/upcoming/cover/cv3.png",
      "Monarch: Legacy of Monsters (2023)",
      "After surviving Godzilla's attack on San Francisco, Cate is shaken yet again by a shocking secret. Amid monstrous threats, she embarks on a globetrotting adventure to learn the truth about her family—and the mysterious organization known as Monarch.",
    ),
    ImageDetail(
      "images/upcoming/profile/pf4.PNG",
      "images/upcoming/cover/cv4.png",
      "Man Up (2015)",
      "A 34 year old single woman, Nancy, hung-over again, exhausted by the endless fruitless set ups by her friends, traveling across London to toast another 10 years of her parent's successful happy magical marriage runs in with a 40 year old divorcee, Jack, who mistakes her for his 24 year old blind date. Nancy, deciding to go with it, happens to hop on the most chaotic yet hilarious journey of her life which neither of them will ever forget",
    ),
    ImageDetail(
      "images/upcoming/profile/pf5.PNG",
      "images/upcoming/cover/cv5.png",
      "Kantara (2022)",
      "Shiva, a tribal vagabond lives with his mother in hamlet, stays away from the traditional Daivaradhane and Bhoota Kola legacy due to an unforgettable childhood incident. He is happy loafing around with his friends and doing petty jobs for his landlord. When Forest officer Murali enters the scene, it gives a fresh dimension to the man-vs-nature fight. Can Shiva save the forest from Murali? Or is Murali just a dummy bait cast by bigger fish?",
    ),
    ImageDetail(
      "images/upcoming/profile/pf6.PNG",
      "images/upcoming/cover/cv6.png",
      "Fair Play (2023)",
      "An unexpected promotion at a cutthroat hedge fund pushes a young couple's relationship to the brink, threatening to unravel not only their recent engagement but their lives.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf4.png",
      "images/NowPlaying/cover/cv4.png",
      "Squid Game: The Challenge (2023)",
      "There are no options to watch Squid Game: The Challenge for free online today in India. You can select 'Free' and hit the notification bell to be notified when show is available to watch for free on streaming services and TV.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf5.png",
      "images/NowPlaying/cover/cv5.png",
      "Naruto: Shippuden (2007)",
      "Naruto Uzumaki, is a loud, hyperactive, adolescent ninja who constantly searches for approval and recognition, as well as to become Hokage, who is acknowledged as the leader and strongest of all ninja in the village.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf6.png",
      "images/NowPlaying/cover/cv6.png",
      "The Flash (2023)",
      "Faster than the speed of light, Barry Allen aka The Flash uses his powers to travel back in time and save his mother from dying. But things don’t go as planned, and Flash finds himself stuck in a reality ruled by the evil General Zod. Flash and his allies; an out of shape Batman, and an imprisoned Supergirl join forces to undo this mess and save the world from Zod’s master plan for destruction. ",
    ),
    ImageDetail(
      "images/upcoming/profile/pf1.PNG",
      "images/upcoming/cover/cv1.png",
      "Satyaprem Ki Katha (2023)",
      "Sparks fly when Satyaprem, a Gujarati boy next-door desperate to tie the knot lays his eyes on the town's most beautiful girl, Katha. This musical rom-com tells the story of their rollercoaster romance as their love deepens.  ",
    ),
    ImageDetail(
      "images/upcoming/profile/pf2.PNG",
      "images/upcoming/cover/cv2.png",
      "Tiger Zinda Hai (2017)",
      "When a group of Indian and Pakistani nurses are held hostage in Iraq by a terrorist organization, a secret agent is drawn out of hiding to rescue them.",
    ),
  ]),

  // top rated

  DataHome("Top Rated", "Top Rated", [
    ImageDetail(
      "images/upcoming/profile/pf6.PNG",
      "images/upcoming/cover/cv6.png",
      "Fair Play (2023)",
      "An unexpected promotion at a cutthroat hedge fund pushes a young couple's relationship to the brink, threatening to unravel not only their recent engagement but their lives.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf4.png",
      "images/NowPlaying/cover/cv4.png",
      "Squid Game: The Challenge (2023)",
      "There are no options to watch Squid Game: The Challenge for free online today in India. You can select 'Free' and hit the notification bell to be notified when show is available to watch for free on streaming services and TV.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf5.png",
      "images/NowPlaying/cover/cv5.png",
      "Naruto: Shippuden (2007)",
      "Naruto Uzumaki, is a loud, hyperactive, adolescent ninja who constantly searches for approval and recognition, as well as to become Hokage, who is acknowledged as the leader and strongest of all ninja in the village.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf6.png",
      "images/NowPlaying/cover/cv6.png",
      "The Flash (2023)",
      "Faster than the speed of light, Barry Allen aka The Flash uses his powers to travel back in time and save his mother from dying. But things don’t go as planned, and Flash finds himself stuck in a reality ruled by the evil General Zod. Flash and his allies; an out of shape Batman, and an imprisoned Supergirl join forces to undo this mess and save the world from Zod’s master plan for destruction. ",
    ),
    ImageDetail(
      "images/upcoming/profile/pf1.PNG",
      "images/upcoming/cover/cv1.png",
      "Satyaprem Ki Katha (2023)",
      "Sparks fly when Satyaprem, a Gujarati boy next-door desperate to tie the knot lays his eyes on the town's most beautiful girl, Katha. This musical rom-com tells the story of their rollercoaster romance as their love deepens.  ",
    ),
    ImageDetail(
      "images/upcoming/profile/pf2.PNG",
      "images/upcoming/cover/cv2.png",
      "Tiger Zinda Hai (2017)",
      "When a group of Indian and Pakistani nurses are held hostage in Iraq by a terrorist organization, a secret agent is drawn out of hiding to rescue them.",
    ),
    ImageDetail(
      "images/upcoming/profile/pf3.PNG",
      "images/upcoming/cover/cv3.png",
      "Monarch: Legacy of Monsters (2023)",
      "After surviving Godzilla's attack on San Francisco, Cate is shaken yet again by a shocking secret. Amid monstrous threats, she embarks on a globetrotting adventure to learn the truth about her family—and the mysterious organization known as Monarch.",
    ),
    ImageDetail(
      "images/upcoming/profile/pf4.PNG",
      "images/upcoming/cover/cv4.png",
      "Man Up (2015)",
      "A 34 year old single woman, Nancy, hung-over again, exhausted by the endless fruitless set ups by her friends, traveling across London to toast another 10 years of her parent's successful happy magical marriage runs in with a 40 year old divorcee, Jack, who mistakes her for his 24 year old blind date. Nancy, deciding to go with it, happens to hop on the most chaotic yet hilarious journey of her life which neither of them will ever forget",
    ),
    ImageDetail(
      "images/upcoming/profile/pf5.PNG",
      "images/upcoming/cover/cv5.png",
      "Kantara (2022)",
      "Shiva, a tribal vagabond lives with his mother in hamlet, stays away from the traditional Daivaradhane and Bhoota Kola legacy due to an unforgettable childhood incident. He is happy loafing around with his friends and doing petty jobs for his landlord. When Forest officer Murali enters the scene, it gives a fresh dimension to the man-vs-nature fight. Can Shiva save the forest from Murali? Or is Murali just a dummy bait cast by bigger fish?",
    ),
    ImageDetail(
      "images/upcoming/profile/pf6.PNG",
      "images/upcoming/cover/cv6.png",
      "Fair Play (2023)",
      "An unexpected promotion at a cutthroat hedge fund pushes a young couple's relationship to the brink, threatening to unravel not only their recent engagement but their lives.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf4.png",
      "images/NowPlaying/cover/cv4.png",
      "Squid Game: The Challenge (2023)",
      "There are no options to watch Squid Game: The Challenge for free online today in India. You can select 'Free' and hit the notification bell to be notified when show is available to watch for free on streaming services and TV.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf5.png",
      "images/NowPlaying/cover/cv5.png",
      "Naruto: Shippuden (2007)",
      "Naruto Uzumaki, is a loud, hyperactive, adolescent ninja who constantly searches for approval and recognition, as well as to become Hokage, who is acknowledged as the leader and strongest of all ninja in the village.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf6.png",
      "images/NowPlaying/cover/cv6.png",
      "The Flash (2023)",
      "Faster than the speed of light, Barry Allen aka The Flash uses his powers to travel back in time and save his mother from dying. But things don’t go as planned, and Flash finds himself stuck in a reality ruled by the evil General Zod. Flash and his allies; an out of shape Batman, and an imprisoned Supergirl join forces to undo this mess and save the world from Zod’s master plan for destruction. ",
    ),
    ImageDetail(
      "images/upcoming/profile/pf1.PNG",
      "images/upcoming/cover/cv1.png",
      "Satyaprem Ki Katha (2023)",
      "Sparks fly when Satyaprem, a Gujarati boy next-door desperate to tie the knot lays his eyes on the town's most beautiful girl, Katha. This musical rom-com tells the story of their rollercoaster romance as their love deepens.  ",
    ),
    ImageDetail(
      "images/upcoming/profile/pf2.PNG",
      "images/upcoming/cover/cv2.png",
      "Tiger Zinda Hai (2017)",
      "When a group of Indian and Pakistani nurses are held hostage in Iraq by a terrorist organization, a secret agent is drawn out of hiding to rescue them.",
    ),
  ]),

  // populor

  DataHome("Populor", "Populor", [
    ImageDetail(
      "images/NowPlaying/profile/pf4.png",
      "images/NowPlaying/cover/cv4.png",
      "Squid Game: The Challenge (2023)",
      "There are no options to watch Squid Game: The Challenge for free online today in India. You can select 'Free' and hit the notification bell to be notified when show is available to watch for free on streaming services and TV.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf5.png",
      "images/NowPlaying/cover/cv5.png",
      "Naruto: Shippuden (2007)",
      "Naruto Uzumaki, is a loud, hyperactive, adolescent ninja who constantly searches for approval and recognition, as well as to become Hokage, who is acknowledged as the leader and strongest of all ninja in the village.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf6.png",
      "images/NowPlaying/cover/cv6.png",
      "The Flash (2023)",
      "Faster than the speed of light, Barry Allen aka The Flash uses his powers to travel back in time and save his mother from dying. But things don’t go as planned, and Flash finds himself stuck in a reality ruled by the evil General Zod. Flash and his allies; an out of shape Batman, and an imprisoned Supergirl join forces to undo this mess and save the world from Zod’s master plan for destruction. ",
    ),
    ImageDetail(
      "images/upcoming/profile/pf1.PNG",
      "images/upcoming/cover/cv1.png",
      "Satyaprem Ki Katha (2023)",
      "Sparks fly when Satyaprem, a Gujarati boy next-door desperate to tie the knot lays his eyes on the town's most beautiful girl, Katha. This musical rom-com tells the story of their rollercoaster romance as their love deepens.  ",
    ),
    ImageDetail(
      "images/upcoming/profile/pf2.PNG",
      "images/upcoming/cover/cv2.png",
      "Tiger Zinda Hai (2017)",
      "When a group of Indian and Pakistani nurses are held hostage in Iraq by a terrorist organization, a secret agent is drawn out of hiding to rescue them.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf1.png",
      "images/NowPlaying/cover/cv1.png",
      "Fukrey 3 (2023)",
      "In the third installment, the Fukras plan to take over Delhi, and run for city elections. However, they have no money and so they take on an international job to make a quick buck, which changes their lives forever. ",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf2.png",
      "images/NowPlaying/cover/cv2.png",
      "Bhagavanth Kesari (2023)",
      "Bhagavanth Kesari's life takes an unexpected turn when he becomes the guardian of Vijaya Lakshmi aka Vijji, daughter of his jailer. Kesari, with his unwavering sense of justice, embarks on a journey to nurture Vijji into a resilient young woman aspiring to join the Indian army.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf3.png",
      "images/NowPlaying/cover/cv3.png",
      "Monarch: Legacy of Monsters (2023)",
      "After surviving Godzilla's attack on San Francisco, Cate is shaken yet again by a shocking secret. Amid monstrous threats, she embarks on a globetrotting adventure to learn the truth about her family—and the mysterious organization known as Monarch.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf4.png",
      "images/NowPlaying/cover/cv4.png",
      "Squid Game: The Challenge (2023)",
      "There are no options to watch Squid Game: The Challenge for free online today in India. You can select 'Free' and hit the notification bell to be notified when show is available to watch for free on streaming services and TV.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf5.png",
      "images/NowPlaying/cover/cv5.png",
      "Naruto: Shippuden (2007)",
      "Naruto Uzumaki, is a loud, hyperactive, adolescent ninja who constantly searches for approval and recognition, as well as to become Hokage, who is acknowledged as the leader and strongest of all ninja in the village.",
    ),
    ImageDetail(
      "images/NowPlaying/profile/pf6.png",
      "images/NowPlaying/cover/cv6.png",
      "The Flash (2023)",
      "Faster than the speed of light, Barry Allen aka The Flash uses his powers to travel back in time and save his mother from dying. But things don’t go as planned, and Flash finds himself stuck in a reality ruled by the evil General Zod. Flash and his allies; an out of shape Batman, and an imprisoned Supergirl join forces to undo this mess and save the world from Zod’s master plan for destruction. ",
    ),
  ]),
];
