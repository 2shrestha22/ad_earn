import 'package:ad_earn/application/user/user_bloc.dart';
import 'package:ad_earn/presentation/redeem/widget/redeem_list_tile.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RedeemPage extends StatelessWidget {
  void onRedeemBtnPressed(BuildContext context) {
    FlushbarHelper.createInformation(
        message: 'Sorry, you have less balance than the thresold amount.')
      ..show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        // centerTitle: true,
        title: Text('Redeem Coins'),
        backgroundColor: Colors.amber[300],

        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(252, 233, 187, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 5.0, left: 5.0, right: 5.0),
                child: Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Colors.amber[300],
                  ),
                  child: BlocBuilder<UserBloc, UserState>(
                      builder: (context, state) {
                    return state.map(
                      loadInProgress: (_) => CircularProgressIndicator(),
                      loadInSuccess: (s) => RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text:
                                'Hi ${s.userData.displayName}, you can redeem your coins into cash through PayPal, ESewa and Paytm or you can redeem coins into PUBG UC or FreeFire Diamonds. *',
                            style: Theme.of(context).textTheme.caption,
                            children: [
                              TextSpan(
                                text:
                                    '\n\nYour Balance: \$${s.userData.coin / 2500}',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              TextSpan(
                                text:
                                    '\n\nIt seems like you have not reached minimum thresold of \$10.',
                              ),
                            ]),
                      ),
                    );
                  }),
                ),
              ),
            ),
            RedeemListTile(
              assetPath: 'assets/images/paypal.png',
              // title: 'PayPal',
              onTap: () => onRedeemBtnPressed(context),
            ),
            RedeemListTile(
              assetPath: 'assets/images/esewa.png',
              // title: 'Esewa',
              onTap: () => onRedeemBtnPressed(context),
            ),
            RedeemListTile(
              assetPath: 'assets/images/paytm.png',
              // title: 'Paytm',
              onTap: () => onRedeemBtnPressed(context),
            ),
            RedeemListTile(
              assetPath: 'assets/images/pubg.png',
              // title: 'PUBG UC',
              onTap: () => onRedeemBtnPressed(context),
            ),
            RedeemListTile(
              assetPath: 'assets/images/freefire.png',
              // title: 'FreeFire Diamonds',
              onTap: () => onRedeemBtnPressed(context),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '* Minimun thresold to withdraw cash from PayPal, ESewa and Paytm are \$10. Similarly you can get 500 PUBG UC or 850 FreeFire Diamonds for \$10.',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
