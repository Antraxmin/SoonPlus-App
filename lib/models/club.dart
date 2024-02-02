class Club {
  int id;
  String name;             // 동아리 이름
  String category;         // 카테고리
  String description;      // 한줄 소개
  String logoImage;        // 로고 이미지
  String endDate;          // 모집 종료일
  bool isRecruit;          // 모집 여부
  bool isAlways;           // 상시 모집 여부
  String? link;            // 지원 링크 (선택)
  List<String>? media;     // SNS 링크 (선택)
  List<String>? post;      // 동아리 게시물 (선택)

  Club({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.logoImage,
    required this.endDate,
    required this.isRecruit,
    required this.isAlways,
    this.link,
    this.media,
    this.post,
  });
}
