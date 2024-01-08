import 'package:flutter/material.dart';
import 'package:flutter_class/config/network/network_request.dart';
import 'package:flutter_class/features/top_headlines/headline_model.dart';
import 'package:flutter_class/features/top_headlines/news_card.dart';

class TopHeadlines extends StatefulWidget {
  const TopHeadlines({super.key});

  @override
  State<TopHeadlines> createState() => _TopHeadlinesState();
}

class _TopHeadlinesState extends State<TopHeadlines> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FutureBuilder<List<Articles>?>(
            future: NetworkRequest().getTopHeadings(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var result = snapshot.data ?? [];
                return ListView.builder(
                    itemCount: result.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: NewsCard(result: result[index]),
                      );
                    });
              } else if (snapshot.hasError) {
                return const Center(child: Text("Error fetching data!!"));
              } else {
                return const CircularProgressIndicator();
              }
            })
      ],
    );
  }
}
