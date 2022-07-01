import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tranxporta/view/auth/LoginScreen.dart';
import 'package:tranxporta/view/auth/SignUpScreen.dart';
import 'package:tranxporta/view/auth/VarifyOtpScreen.dart';
import 'package:tranxporta/view/home/CheckoutScreen.dart';
import 'package:tranxporta/view/home/CreatePickupScreen.dart';
import 'package:tranxporta/view/home/DeliveriesScreeen.dart';
import 'package:tranxporta/view/home/DeliveryDetailsScreen.dart';
import 'package:tranxporta/view/home/HelpScreen.dart';
import 'package:tranxporta/view/home/HomeScreen.dart';
import 'package:tranxporta/view/home/PickupScreenThree.dart';
import 'package:tranxporta/view/home/PickupScreenTwo.dart';
import 'package:tranxporta/view/home/TrackScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Splash Screen',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),

        debugShowCheckedModeBanner: false,

        home: const LoginScreen());
  }
}


