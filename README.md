# Flutter Classes

```dart
import 'package:flutter/cupertino.dart';

void main() {
  runApp(app);
}
```

## Types of widgets

> Stateless ---> stless
> Stateful ---> stful

```dart
import 'package:flutter/material.dart';
import 'package:flutter_class/contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Class",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: ContactPage(),
    );
  }
}
```

```dart
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
```

```dart
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}cons

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Page 👋")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var student in students) studentsList(student),
          ],
        ),
      ),
    );
  }

  Widget studentsList(String name) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(name, style: TextStyle(fontSize: 16)),
          ],
        ),
      )),
    );
  }
}
```

> Format -> `ctrl + alt + l`


## Resuable Widgets
```dart

```


## Future

## Stream

> [flutter url launcher](https://pub.dev/packages/url_launcher)