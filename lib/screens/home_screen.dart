import 'package:flutter/material.dart';
import 'package:pilem/models/movie.dart';
import 'package:pilem/service/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ApiService _apiService = ApiService();

  List<Movie> _allMovies = [];
  List<Movie> _trendingMovies = [];

  Future<void> _loadMovies() async {
    final List<Map<String, dynamic>> allMovieData =
        await _apiService.getAllMovie();

    final List<Map<String, dynamic>> trendingMovieData =
        await _apiService.getTrendingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
