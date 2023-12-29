import 'package:flutter/material.dart';
import 'package:flutter_class/constants/app_strings.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact Details")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppString.names[widget.index]),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.verified_user))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppString.contacts[widget.index]),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.call))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        AppString.addresses[widget.index] ?? "Darchula, Nepal"),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.location_city))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppString.emails[widget.index]),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.email))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("WhatsAPP"),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mobile_friendly))
                  ],
                ),
              ],
            ), //
          ],
        ),
      ),
    );
  }
}
