import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceryapp/components/list_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffF77273),
                  Color(0xffEE4646),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.checkCircle,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Clean',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.checkCircle,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Safe',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.checkCircle,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Organic',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/bag.png',
                    height: 150,
                    width: 150,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xffE9EAEE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.search)),
                Expanded(
                  flex: 10,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search Grocery',
                      filled: true,
                      fillColor: Color(0xffE9EAEE),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Categories',
            style: TextStyle(
              color: Color(0xffD0D2D9),
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/vegetables.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text('Vegetables'),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/fruits.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text('Fruits'),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/dairy.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text('Dairy'),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/butter.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text('Butter'),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListItem(
            imageURI: 'assets/images/butter.jpg',
            name: 'Butter',
            price: 18.5,
          ),
          ListItem(
            imageURI: 'assets/images/butter.jpg',
            name: 'Butter',
            price: 18.5,
          ),
          ListItem(
            imageURI: 'assets/images/butter.jpg',
            name: 'Butter',
            price: 18.5,
          ),
        ],
      ),
    );
  }
}
