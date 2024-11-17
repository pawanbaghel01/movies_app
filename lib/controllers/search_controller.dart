import 'package:get/get.dart';
import 'package:movies_app/models/movie_model.dart';
import '../services/api_service.dart';

class MySearchController extends GetxController {
  var isLoading = false.obs;
  var searchResults = <MovieModel>[].obs;

  void searchMovies(String query) async {
    try {
      isLoading(true);
      var results = await ApiService.fetchMovies(query);
      searchResults.assignAll(results);
    } finally {
      isLoading(false);
    }
  }
}
