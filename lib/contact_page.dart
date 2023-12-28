import 'package:flutter/material.dart';
import 'package:flutter_class/constants/app_strings.dart';
import 'package:flutter_class/contact_details.dart';
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
            itemCount: AppString.names.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContactDetails(index: index)));
                },
                child: studentsList(
                    name: AppString.names[index],
                    email: AppString.emails[index],
                    contact: AppString.contacts[index]),
              );
            }));
  }

  Widget studentsList(
      {required String name,
      required String email,
      required String contact,
      String? address}) {
    Future<void> launchCaller({required String actionMsg}) async {
      if (!await launchUrl(Uri.parse(actionMsg))) {
        throw Exception('Could not launch $actionMsg');
      }
    }

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 16)),
                Text(address ?? "Darchula, Nepal",
                    style: const TextStyle(fontSize: 12)),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      launchCaller(actionMsg: "tel:+977 $contact");
                    },
                    icon: const Icon(Icons.call)),
                IconButton(
                    onPressed: () {
                      launchCaller(actionMsg: "mailto: $email");
                    },
                    icon: const Icon(Icons.mail)),
              ],
            )
          ],
        ),
      )),
    );
  }
}
