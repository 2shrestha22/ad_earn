import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/user/user_bloc.dart';

class UserDetailsView extends StatelessWidget {
  const UserDetailsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.map(
          loadInProgress: (_) => CircularProgressIndicator(),
          loadInSuccess: (s) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/brush_stroke.png'),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(s.userData.photoUrl),
                      ),
                    ),
                  ),
                  Text(
                    s.userData.displayName,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: s.userData.coin.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: ' '),
                        WidgetSpan(
                          child: Image.asset(
                            'assets/images/ic_coins.png',
                            width: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Total Earning',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
