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
        PopupMenuButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            color: Colors.white,
            onSelected: (value) {
              var snackBar = SnackBar(content: Text(value));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            itemBuilder: (context) {
          return [
            const PopupMenuItem(
              value: 'Item 1',
              child: Text('Item 1'),
            ),
            const PopupMenuItem(
              value: 'Item 2',
              child: Text('Item 2'),
            ),
            const PopupMenuItem(
              value: 'Item 3',
              child: Text('Item 3'),
            ),
          ];
        }),
        DropdownButton(
          items: const [
            DropdownMenuItem(
              value: 'Item 1',
              child: Text('Item 1'),
            ),
            DropdownMenuItem(
              value: 'Item 2',
              child: Text('Item 2'),
            ),
            DropdownMenuItem(
              value: 'Item 3',
              child: Text('Item 3'),
            ),
          ],
          onChanged: (value) => setState(() {
            var snackBar = SnackBar(content: Text(value!));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }),
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