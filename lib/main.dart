import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Button'),
        ),
        body: Center(
          child: column,
        ),
      ),
    );
  }
}