import 'package:flutter/material.dart';

class RedeemButton extends StatelessWidget {
  final void Function() onTap;

  const RedeemButton({Key key, @required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        highlightColor: Colors.yellow[600],
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.yellow[600], width: 2),
        ),
        onPressed: onTap,
        child: Text(
          'REDEEM',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
