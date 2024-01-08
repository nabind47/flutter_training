import 'package:dio/dio.dart';
import 'package:flutter_class/config/network/api_endpoints.dart';
import 'package:flutter_class/features/home/dogs_breed_model.dart';
import 'package:flutter_class/features/top_headlines/headline_model.dart';

class NetworkRequest {
  final dio = Dio();

  Future<List<Articles>?> getTopHeadings() async {
    final response = await dio.get(ApiEndpoints.topHeadlines);

    if(response.statusCode == 200 || response.statusCode == 201){
      return HeadlineModel.fromJson(response.data).articles;
    } else {
      return [];
    }
  }

  Future<DogsBreedModel>? getDogBreeds() async {
    final response = await dio.get(ApiEndpoints.dogsBreed);

    if(response.statusCode == 200 || response.statusCode == 201){
      return DogsBreedModel.fromJson(response.data);
    } else {
      return DogsBreedModel();
    }
  }
}
