import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: theme,
    home: const Homepage(),
  ));
}

ThemeData theme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(
        cardColor: Colors.purple, backgroundColor: Colors.white));

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var count = 0;

  void incrementFun() {
    count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my first flutter app :3'),
      ),
      body: Center(
        child: Text(
          "Counter\n$count",
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incrementFun();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
