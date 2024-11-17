import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/movie_model.dart';

class ApiService {
  static const String baseUrl = "https://api.tvmaze.com";

  static Future<List<MovieModel>> fetchMovies(String query) async {
    final url = Uri.parse("$baseUrl/search/shows?q=$query");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((item) => MovieModel.fromJson(item)).toList();
    } else {
      throw Exception("Failed to fetch movies");
    }
  }
}
