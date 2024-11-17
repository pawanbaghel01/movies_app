import 'package:get/get.dart';
import '../models/movie_model.dart';
import '../services/api_service.dart';

class MovieController extends GetxController {
  var isLoading = true.obs;
  var movies = <MovieModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchMovies();
  }

  void fetchMovies() async {
    try {
      isLoading(true);
      var fetchedMovies = await ApiService.fetchMovies("all");
      movies.assignAll(fetchedMovies);
    } finally {
      isLoading(false);
    }
  }
}
