import 'package:flutter/material.dart';
import 'package:groceryapp/screens/sign_in.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Lato'),
      home: SafeArea(
        child: SignIn(),
      ),
    ),
  );
}
