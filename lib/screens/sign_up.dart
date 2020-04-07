import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceryapp/components/sign_button.dart';
import 'package:groceryapp/screens/navigation.dart';
import 'package:groceryapp/screens/sign_in.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF77273),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffE9EAEE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.userTag,
                              size: 15,
                            )),
                        Expanded(
                          flex: 10,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Full Name',
                              filled: true,
                              fillColor: Color(0xffE9EAEE),
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffE9EAEE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: FaIcon(FontAwesomeIcons.mailBulk, size: 15)),
                        Expanded(
                          flex: 10,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'user@example.com',
                              filled: true,
                              fillColor: Color(0xffE9EAEE),
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffE9EAEE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: FaIcon(FontAwesomeIcons.lock, size: 15)),
                        Expanded(
                          flex: 10,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '*********',
                              filled: true,
                              fillColor: Color(0xffE9EAEE),
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  SignButton(
                    color: Color(0xffE26104),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Navigation()));
                    },
                    radius: 20,
                    text: 'Continue',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Text('Sign In Instead'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
