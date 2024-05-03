class Images {
  final int imageID;
  final String imageAlt;
  final String imagePotraitPath;

  const Images({
    required this.imageID,
    required this.imageAlt,
    required this.imagePotraitPath,
  });

  factory Images.fromJson(Map<String, dynamic> json)=>Images(
    imageID: json["id"] as int,
    imageAlt: json["alt"] as String,
    imagePotraitPath: json["src"]["portrait"] as String,
  );

  Images.emptyConstructor({
    this.imageID = 0,
    this.imageAlt = '',
    this.imagePotraitPath = '',
  });
}
