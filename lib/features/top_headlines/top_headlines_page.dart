import 'package:flutter/material.dart';
import 'package:flutter_class/config/network/network_request.dart';
import 'package:flutter_class/features/top_headlines/headline_model.dart';

class Healines extends StatefulWidget {
  const Healines({super.key});

  @override
  State<Healines> createState() => _HealinesState();
}

class _HealinesState extends State<Healines> {
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
                  itemBuilder: (context,index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Text(result[index].content ?? ""),
                          // Image(image: Image.network(result[index].urlToImage));
                        ]),
                      ),
                    );
                  }
                );

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
