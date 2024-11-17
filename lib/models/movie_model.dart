class MovieModel {
  final String title;
  final String image;
  final String summary;

  MovieModel({required this.title, required this.image, required this.summary});

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      title: json['show']['name'] ?? '',
      image: json['show']['image']?['medium'] ?? '',
      summary: json['show']['summary'] ?? '',
    );
  }
}
