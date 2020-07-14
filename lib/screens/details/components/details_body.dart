import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/screens/details/components/item_image.dart';
import 'package:food_delivery_app/screens/details/components/order_button.dart';
import 'package:food_delivery_app/screens/details/components/title_price_rating.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemImage(imgSrc: "assets/images/burger.png"),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopName(name: "MacDonalds"),
          TitlePriceRating(
            name: "Cheese Burger",
            numOfReviews: 24,
            price: 15,
            rating: 4,
            onRatingChanged: (rating) => {},
          ),
          Text(
            "Nowadays, making printed materials have become fast, easy and simple. If you a printer tha places extremely small droplets of ink onto paper to create an image.",
            style: TextStyle(height: 1.5),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          OrderButton(
            size: size, 
            press: () {},
          ),
        ],
      ),
    );
  }

  Row shopName({String name}) {
    return Row(children: <Widget>[
      Icon(Icons.location_on, color: kSecondaryColor),
      SizedBox(width: 10),
      Text(name),
    ]);
  }
}
