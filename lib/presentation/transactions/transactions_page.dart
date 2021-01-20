import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction'),
        backgroundColor: Colors.amber[300],
      ),
      body: Center(
        child: Text('You have not done any transaction yet.'),
      ),
    );
  }
}
