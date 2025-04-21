import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Card Widget",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return _cardItem();
        },
      ),
    );
  }
}

_cardItem() {
  return Card(
    color: Colors.white,
    margin: EdgeInsets.all(10),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: Icon(Icons.music_note, size: 50),
          title: Text("Unknown Artist"),
          subtitle: Text("Prepared by Unknown person"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text("Delete", style: TextStyle(color: Colors.blueAccent)),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Listen", style: TextStyle(color: Colors.blueAccent)),
            ),
          ],
        ),
      ],
    ),
  );
}
