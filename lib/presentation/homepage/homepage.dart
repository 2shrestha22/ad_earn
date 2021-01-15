import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AdEarn'),
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () {
          print('button is clicked');
        },
        child: Text('Watch Video to earch coin'),
      )),
    );
  }
}
