import 'package:flutter/material.dart';
import 'package:flutter_class/constants/app_images.dart';
import 'package:flutter_class/constants/app_strings.dart';
import 'package:flutter_class/features/contacts/widgets/contact_row.dart';

class ContactDetails extends StatefulWidget {
  ContactDetails({required this.index, super.key});

  int index;

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppString.names[widget.index])),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: <Widget>[
            // ClipRRect(
            //   child: Image.asset(AppImages.maleProfileImage),
            // ),

            CircleAvatar(
                backgroundImage: AssetImage(AppImages.maleProfileImage),
                radius: 100),
            const SizedBox(
              height: 16.0,
            ),

            ContactRow(label: "Name", value: AppString.names[widget.index]),
            const SizedBox(
              height: 16.0,
            ),

            ContactRow(label: "Email", value: AppString.emails[widget.index]),
            const SizedBox(
              height: 16.0,
            ),
            ContactRow(label: "Number", value: AppString.contacts[widget.index]),
            const SizedBox(
              height: 16.0,
            ),

            ContactRow(
                label: "Address", value: AppString.addresses[widget.index]),
            const SizedBox(
              height: 16.0,
            ),


          ],
        ),
      ),
    );
  }
}
