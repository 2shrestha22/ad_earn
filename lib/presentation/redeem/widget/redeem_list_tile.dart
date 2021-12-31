import 'package:flutter/material.dart';

import 'reddem_button.dart';

class RedeemListTile extends StatelessWidget {
  final String assetPath;
  final String? title;
  final void Function() onTap;
  const RedeemListTile({
    Key? key,
    required this.assetPath,
    this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            assetPath,
            width: 70,
          ),
          Text(
            title ?? '',
            style: Theme.of(context).textTheme.headline6,
          ),
          RedeemButton(
            onTap: onTap,
          )
        ],
      ),
    );
  }
}
