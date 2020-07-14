import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/screens/details/components/details_appbar.dart';
import 'package:food_delivery_app/screens/details/components/item_image.dart';
import 'package:food_delivery_app/screens/details/components/title_price_rating.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}

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
          )
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


