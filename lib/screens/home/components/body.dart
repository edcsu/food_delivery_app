import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/search_box.dart';
import 'package:food_delivery_app/screens/home/components/category_List.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(
          onChanged: (value) => {},
        ),
        CategoryList()
      ],
    );
  }
}

