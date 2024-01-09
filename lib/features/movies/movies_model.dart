class MoviesModel {
  num? page;
  List<Movie> results;
  num? totalPages;
  num? totalResults;

  MoviesModel({
    this.page,
    required this.results,
    this.totalPages,
    this.totalResults,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return MoviesModel(
      page: json['page'],
      results: List<Movie>.from(json['results'].map((result) => Movie.fromJson(result))),
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }
}

class Movie {
  bool? adult;
  String? backdropPath;
  List<num>? genreIds;
  num? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  num? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  num? voteAverage;
  num? voteCount;

  Movie({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      genreIds: List<num>.from(json['genre_ids'].map((id) => id)),
      id: json['id'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
    );
  }
}
