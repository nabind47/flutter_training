import 'package:flutter/material.dart';
import 'package:flutter_class/features/top_headlines/headline_model.dart';
import 'package:flutter_class/features/top_headlines/news_card.dart';

class NewsDetails extends StatefulWidget {
  const NewsDetails({required this.index,super.key});

  final Articles

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News Details")),
      body: ListView(
        children: [
          NewsCard(result: widget.result)
        ],
      ),
    );
  }
}
