import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
    title: Center(
      child: RichText(
          text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.bold),
              children: [
            TextSpan(
              text: "Keith",
              style: TextStyle(color: kSecondaryColor),
            ),
            TextSpan(
              text: "Foods",
              style: TextStyle(color: kPrimaryColor),
            )
          ])),
    ),
    actions: <Widget>[
      IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: null)
    ],
  );
}
