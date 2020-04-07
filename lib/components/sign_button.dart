import 'package:flutter/material.dart';

class SignButton extends StatefulWidget {
  final Function onPressed;
  final double radius;
  final String text;
  final Color color;

  SignButton({this.onPressed, this.radius, this.text, this.color});
  @override
  _SignButtonState createState() => _SignButtonState();
}

class _SignButtonState extends State<SignButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(widget.radius),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 10.0,
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
        ),
      ),
      color: widget.color,
      onPressed: widget.onPressed,
    );
  }
}
