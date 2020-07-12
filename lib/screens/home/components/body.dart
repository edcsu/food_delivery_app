
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/search_box.dart';
import 'package:food_delivery_app/constants.dart';

class Body extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          SearchBox(onChanged: (value) => {},)
        ],
      );
    }
  }
