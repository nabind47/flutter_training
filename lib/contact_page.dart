import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Contact Page 👋")),
      body: ListView.builder(
        itemCount: students.length,
          shrinkWrap: true,
          itemBuilder: (context,index){
        return studentsList(students[index]);
      })
    );
  }

  Widget studentsList(String name) {
    Future<void> launchCaller({required String actionMsg}) async {
      if (!await launchUrl(Uri.parse(actionMsg))) {
        throw Exception('Could not launch $actionMsg');
      }
    }
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name, style: const TextStyle(fontSize: 16)),
            Row(
              children: [
                IconButton(onPressed: (){
                  launchCaller(actionMsg: "mailto:nabindhmai14@gmail.com");
                }, icon: const Icon(Icons.mail)),
                IconButton(onPressed: (){

                  launchCaller(actionMsg: "tel:+977 9840034689");
                }, icon: const Icon(Icons.call)),

              ],
            )
          ],

        ),
      )),
    );
  }
}

List<String> students = [
  "Nabin Dhami",
  "Namdul Lama",
  "Susan Shrestha",
  "Rajat Khakda",
  "Suyog Bista",
  "Suman Sapkota",
  "Prabin Bogati",
  "Saurav Khatri",
  "Deepak Chhetri",
  "Shristi Tater",
  "Sirjana Maharjan",
  "Aayush Kayastha",
  "Binita Rana",
  "Sezal Baniya",
  "Sameer Bhatta",
  "Susheel Baral",
  "Saujanya Shrestha",
];
