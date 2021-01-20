import 'package:ad_earn/application/ad/ad_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WatchAdButton extends StatelessWidget {
  const WatchAdButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<AdCubit, AdState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => FlatButton(
                height: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white, width: 2),
                ),
                onPressed: () async {
                  print('button is clicked');
                  context.read<AdCubit>().watchAdBtnPressed();
                },
                child: Text(
                  'WATCH VIDEO FOR COINS',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              adLoadInProgress: (_) => FlatButton(
                height: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white, width: 2),
                ),
                onPressed: null,
                child: Text(
                  'LOADING',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
