import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'SaveWordScreen.dart';

class RandomWord extends StatefulWidget {
  @override
  _RandomWordState createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  var savedWord = [];
  String randomWord = WordPair.random().asString;
  void _changeWord() {
    setState(() {
      randomWord = WordPair.random().asString;
    });
  }

  void _saveWord() {
    savedWord.add(randomWord);
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SavedWordScreen(savedWord)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Flutter Pertama'),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(randomWord, style: TextStyle(fontSize: 40)),
        IconButton(onPressed: _saveWord, icon: Icon(Icons.favorite_border))
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeWord,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
