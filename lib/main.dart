import 'package:flutter/material.dart';
import 'package:testoop/modules/%20bimCalculator/BIMCalculator.dart';
import 'package:testoop/modules/%20counter/Counter.dart';
import 'package:testoop/modules/BtnNavigationBar/BtnNavigationBar.dart';
import 'package:testoop/modules/home_secreen/Home_secreen.dart';
import 'package:testoop/modules/login_secreen/login_secreen.dart';
import 'package:testoop/modules/%20massenger_secreen/Massenger_secreen.dart';
import 'package:testoop/modules/resultSecreen/ResultSecreen.dart';
import 'package:testoop/modules/%20users/Users.dart';

void main() {
  runApp(MyApp());
  MyApp app = MyApp();
  Widget aa= MyApp();
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BIMCalculator(),

    );
  }


}

