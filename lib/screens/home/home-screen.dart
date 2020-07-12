import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home/components/app_bar.dart';
import 'package:food_delivery_app/screens/home/components/body.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
    );
  }

}