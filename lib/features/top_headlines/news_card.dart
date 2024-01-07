import 'package:flutter/material.dart';

import 'headline_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({required this.result, super.key});

  final Articles result;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              result.urlToImage ?? "",
              errorBuilder: (BuildContext context,
                  Object error, StackTrace? stackTrace) {
                return const SizedBox
                    .shrink(); // You can customize this to show a placeholder or an error message.
              },
            ),
          ),

          const SizedBox(
            height: 16.0,
          ),
          Text(
            result.content ?? "",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  result.author ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ),
              Text(
                getPublishedDate(
                    result.publishedAt ?? ""),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ],
          ),

          // Image(image: Image.network(result[index].urlToImage));
        ]),
      ),
    );
  }

  String getPublishedDate(String date) {
    if (date.isEmpty) return "";

    return date.substring(0, 10);
  }
}


