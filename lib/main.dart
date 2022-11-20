import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var textEditController = TextEditingController();
    var column = Column(
      children: [
        TextField(
          controller: textEditController,
          autofillHints: const ['your name'],
        ),
        ElevatedButton(
          onPressed: () {
            var snackBar = SnackBar(content: Text(textEditController.text));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Print'),
        ),
      ],
    );
    return column;
  }
}
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter button'),
      ),
      body: const MyApp(),
    ),
  ));
}































