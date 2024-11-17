import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/movie_controller.dart';
import '../widgets/movie_card.dart';
import 'search_screen.dart';

class HomeScreen extends StatelessWidget {
  final MovieController movieController = Get.put(MovieController());

   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => Get.to(() => SearchScreen()),
          ),
        ],
      ),
      body: Obx(() {
        if (movieController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: movieController.movies.length,
            itemBuilder: (context, index) {
              final movie = movieController.movies[index];
              return MovieCard(movie: movie);
            },
          );
        }
      }),
    );
  }
}
