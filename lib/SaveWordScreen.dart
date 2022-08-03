import 'package:flutter/material.dart';

class SavedWordScreen extends StatelessWidget {
  var savedWord = [];

  SavedWordScreen(this.savedWord);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Saved Word'),
        ),
        body: Center(
            child:
                Text(savedWord.join(' - '), style: TextStyle(fontSize: 40))));
  }
}
