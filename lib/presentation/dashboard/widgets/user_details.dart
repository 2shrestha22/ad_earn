import 'package:ad_earn/application/user/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDetailsView extends StatelessWidget {
  const UserDetailsView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => CircularProgressIndicator(),
          loadInProgress: (_) => CircularProgressIndicator(),
          loadInSuccess: (s) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/brush_stroke.png'),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(),
                  ),

                  // Text(
                  //   'Hello',
                  //   style: TextStyle(fontSize: 18, color: Colors.black),
                  // ),
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
