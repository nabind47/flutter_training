import 'package:flutter/material.dart';
import 'package:flutter_class/config/network/network_request.dart';
import 'package:flutter_class/features/movies/movies_model.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      children: [
        FutureBuilder<MoviesModel?>(
            future: NetworkRequest().getMovies(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var res = snapshot.data?.results ?? [];
                return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: res.length,
                  padding: const EdgeInsets.all(8.0),
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Image.network(
                              "https://image.tmdb.org/t/p/original/${res[index].posterPath}"),
                          Text(res[index].originalTitle ?? '',  style: TextStyle(fontSize: 20)),
                          Text(res[index].overview ?? '',  style: TextStyle(fontSize: 15)),
                          Text(res[index].title ?? '',  style: TextStyle(fontSize:15 )),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                );
              } else if (snapshot.hasError) {
                return const Center(child: Text("Error fetching data!!"));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }),
      ],
    ));
  }
}
