import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/widgets/movie_card.dart';
import '../controllers/search_controller.dart';

class SearchScreen extends StatelessWidget {
  final MySearchController searchController = Get.put(MySearchController());
  final TextEditingController searchTextController = TextEditingController();

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: searchTextController,
          decoration: const InputDecoration(
            hintText: "Search for a movie...",
          ),
          onSubmitted: (query) {
            searchController.searchMovies(query);
          },
        ),
      ),
      body: Obx(() {
        if (searchController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else if (searchController.searchResults.isEmpty) {
          return const Center(child: Text("No results found"));
        } else {
          return ListView.builder(
            itemCount: searchController.searchResults.length,
            itemBuilder: (context, index) {
              final movie = searchController.searchResults[index];
              return MovieCard(movie: movie);
            },
          );
        }
      }),
    );
  }
}


