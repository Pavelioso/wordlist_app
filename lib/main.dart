import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wordlist/widgets/word_row.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

/* List<WordPair> wordPairs = [];

void parseJson(String jsonString) {
  List<dynamic> decodedJson = jsonDecode(jsonString);
  wordPairs = decodedJson
      .map((wordPair) => WordPair(wordPair["Spanish"], wordPair["English"]))
      .toList();
}

class WordPair {
  final String spanish;
  final String english;

  WordPair(this.spanish, this.english);
} */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
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
  void initState() {
    super.initState();
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.centerStart,
      persistentFooterButtons: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.remove_red_eye),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.hide_image),
          color: Colors.white,
        ),
      ],
      backgroundColor: Colors.grey[900],
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: Container(),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: WordList(),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        onPressed: () {},
        tooltip: 'Add Word',
        child: const Icon(Icons.add),
      ),
    );
  }
}

Widget WordList() {
  return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return WordRow(word1: "Cheese", word2: "Queso");
      });
}
