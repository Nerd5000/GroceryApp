import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String imageURI;
  final String name;
  final double price;
  final Function onAdd;
  final Function onTap;
  ListItem({this.imageURI, this.name, this.price, this.onAdd, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          onTap: onTap,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageURI,
              height: 60,
              width: 60,
              fit: BoxFit.fill,
            ),
          ),
          title: Text(name),
          subtitle: Text('$price Pounds'),
          trailing: GestureDetector(
            onTap: onAdd,
            child: Container(
              child: Icon(Icons.add, color: Color(0xffFAB4AD)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffFBE0D9),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
