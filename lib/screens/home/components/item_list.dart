import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            imgSrc: 'assets/images/burger2.png',
            title: 'Burger',
            shopName: "McDonald's",
            press: () {},
          ),
          ItemCard(
            imgSrc: 'assets/images/noodles.png',
            title: 'Noodles',
            shopName: "Wendys",
            press: () {},
          ),
          ItemCard(
            imgSrc: 'assets/images/combo.png',
            title: 'Street Wise',
            shopName: "KFC",
            press: () {},
          ),
        ],
      ),
    );
  }
}

