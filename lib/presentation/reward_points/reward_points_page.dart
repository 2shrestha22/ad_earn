import 'package:flutter/material.dart';

class RewardPointsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reward Points'),
        backgroundColor: Colors.amber[300],
      ),
      body: Center(
        child: Text('You have not earned any reward points.'),
      ),
    );
  }
}
