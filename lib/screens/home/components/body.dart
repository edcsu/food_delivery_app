import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/components/search_box.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/screens/home/components/category_List.dart';
import 'package:food_delivery_app/screens/home/components/discount_card.dart';
import 'package:food_delivery_app/screens/home/components/item_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SearchBox(
          onChanged: (value) => {},
        ),
        CategoryList(),
        ItemList(),
        DiscountCard()
      ],
    );
  }
}

