import 'package:firebase_admob/firebase_admob.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app_config.dart' as CONFIG;
import 'injection.dart';
import 'presentation/ad_earn_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAdMob.instance.initialize(appId: CONFIG.adMobAppId);
  configureInjection(Environment.prod);
  runApp(AdEarnApp());
}
