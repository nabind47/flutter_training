import 'package:flutter/material.dart';
import 'package:flutter_class/config/network/network_request.dart';
import 'package:flutter_class/features/home/dogs_breed_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // NetworkRequest().getTopHeadings();

    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          FutureBuilder<DogsBreedModel>(
              future: NetworkRequest().getDogBreeds(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var res = snapshot.data?.message ?? [];
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Container(
                            height: 200,
                            child: Image.network(
                              // "https://th.bing.com/th/id/R.4c0dad47f8ae646eb159556b0cee4ca9?rik=RTrM15kQDNzB5w&pid=ImgRaw&r=0",
                              res[index],
                              errorBuilder: (BuildContext context, Object error,
                                  StackTrace? stackTrace) {
                                return const SizedBox.shrink(); // You can customize this to show a placeholder or an error message.
                              },
                            ),
                          ),
                        );
                      });
                } else if (snapshot.hasError) {
                  return const Center(child: Text("Error fetching data!!"));
                } else {
                  return Center(child: const CircularProgressIndicator());
                }
              })
        ],
      ),
    );
  }
}
