import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/search_box.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/screens/home/components/category_List.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(
          onChanged: (value) => {},
        ),
        CategoryList(),
        SingleChildScrollView(
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
        )
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final String title, shopName, imgSrc;
  final Function press;

  const ItemCard({
    Key key,
    this.title,
    this.shopName,
    this.imgSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 2,
                color: Color(0xFFB0CCE1).withOpacity(0.32))
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.13),
                      shape: BoxShape.circle),
                  child: Image.asset(
                    imgSrc,
                    width: size.width * 0.18,
                  ),
                ),
                Text(title),
                SizedBox(height: 10),
                Text(
                  shopName,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
