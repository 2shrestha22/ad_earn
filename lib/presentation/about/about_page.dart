import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.amber[300],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/images/logo.png'),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
                'With AdEarn, you can make money by viewing advertisements. This apps contains advertisements in the form of Rewarded Ads. Every time the user views an advert, user will earn AdEarn Coins. These earned coins can be redeemed to cash later. For more info contact at info@sgmedia.com.'),
          ),
          Container(
              child: Column(
            children: [
              Text(
                'SG Media',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text('South Los Altos\nLos Altos, CA\nUSA'),
            ],
          ))
        ],
      ),
    );
  }
}
