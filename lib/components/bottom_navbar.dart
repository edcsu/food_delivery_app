import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(icon: SvgPicture.asset("assets/icons/home.svg"), onPressed: null,),
            title: Text("Home", style: TextStyle( color: kTextColor),) 
          ),
          BottomNavigationBarItem(
            icon: IconButton(icon: SvgPicture.asset("assets/icons/Following.svg"), onPressed: null,),
            title: Text("Favorite", style: TextStyle( color: kTextColor)) 
          ),
          BottomNavigationBarItem(
            icon: IconButton(icon: SvgPicture.asset("assets/icons/Glyph.svg"), onPressed: null,),
            title: Text("Locatio", style: TextStyle( color: kTextColor)) 
          ),
          BottomNavigationBarItem(
            icon: IconButton(icon: SvgPicture.asset("assets/icons/person.svg"), onPressed: null,),
            title: Text("Profile", style: TextStyle( color: kTextColor)) 
          )
        ]
    );
  }
}