class Movies {
  final int id;
  final String name;
  final List categories;
  final String imageUrl;
  final String videoPlayUrl;
  final double ratings;

  Movies({
    required this.id,
    required this.name,
    required this.categories,
    required this.imageUrl,
    required this.videoPlayUrl,
    required this.ratings,
  });

  static Movies fromJson(json) => Movies(
        id: json['id'],
        name: json['name'],
        categories: json['categories'],
        imageUrl: json['imageUrl'],
        videoPlayUrl: json['videoPlayUrl'],
        ratings: json['ratings'],
      );
}
