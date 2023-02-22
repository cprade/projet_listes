class Place {
  String name;
  String imagePath;
  String desc;
  int? index;

  Place({
    required this.name,
    required this.imagePath,
    required this.desc,
    this.index,
  });

  String getFolderPath() => "images/$imagePath.jpg";
}
