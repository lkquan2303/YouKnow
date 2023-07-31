class BannerModel {
  BannerModel({
    this.title = '',
    this.imagePath = '',
    this.expriedDay = 0,
    this.discount = 0,
    this.rating = 0.0,
  });

  String title;
  int expriedDay;
  int discount;
  double rating;
  String imagePath;

  static List<BannerModel> bannerTop = <BannerModel>[
    BannerModel(
      imagePath: 'assets/images/webInterFace.png',
      title: 'User interface Design',
      expriedDay: 24,
      discount: 25,
      rating: 4.3,
    ),
    BannerModel(
      imagePath: 'assets/images/interFace1.png',
      title: 'User interface Design',
      expriedDay: 22,
      discount: 18,
      rating: 4.6,
    ),
    BannerModel(
      imagePath: 'assets/images/interFace1.png',
      title: 'User interface Design',
      expriedDay: 24,
      discount: 25,
      rating: 4.3,
    ),
    BannerModel(
      imagePath: 'assets/images/interFace1.png',
      title: 'User interface Design',
      expriedDay: 22,
      discount: 18,
      rating: 4.6,
    ),
  ];
}
