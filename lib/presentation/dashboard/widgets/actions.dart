import 'package:flutter/material.dart';

class DashboardActions extends StatelessWidget {
  const DashboardActions({
    Key key,
    @required this.iconPath,
    @required this.desc,
  }) : super(key: key);

  final String iconPath;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            iconPath,
            fit: BoxFit.contain,
            height: 45.0,
            width: 45.0,
          ),
          SizedBox(
            height: 8,
          ),
          Text(desc)
        ],
      ),
    );
  }
}
