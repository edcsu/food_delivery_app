import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/details/details_screen.dart';
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
            svgSrc: 'assets/icons/burger_beer.svg',
            title: 'Burger',
            shopName: "McDonald's",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
          ),
          ItemCard(
            svgSrc: 'assets/icons/chinese_noodles.svg',
            title: 'Noodles',
            shopName: "Wendys",
            press: () {},
          ),
          ItemCard(
            svgSrc: 'assets/icons/burger_beer.svg',
            title: 'Street Wise',
            shopName: "KFC",
            press: () {},
          ),
        ],
      ),
    );
  }
}
