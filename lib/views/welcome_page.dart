import 'package:client_ensapay_app/constants.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          height: size.height,
          decoration: BoxDecoration(
              color: KPrimaryLightColor,
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/loginHead.png'),
                  fit: BoxFit.contain)),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
              Widget>[
            Container(
              height: size.height / 2.5,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 30, 40, 20),
              child: TextFormField(
                cursorColor: KPrimaryColor,
                maxLines: 1,
                keyboardType: TextInputType.phone,
                autofocus: false,
                //onChanged: onChange,
                //validator: (val) => val.isEmpty || val.length<6 ? 'can\'t be empty' : null,
                //obscureText: type == "Email" ? false : true,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: KPrimaryColor)),
                    focusColor: Colors.black,
                    fillColor: Colors.black,
                    hoverColor: Colors.black,
                    hintText: "Login",
                    hintStyle: TextStyle(color: Colors.black38),
                    border: UnderlineInputBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 10, 40, 5),
              child: TextFormField(
                cursorColor: KPrimaryColor,
                maxLines: 1,
                keyboardType: TextInputType.visiblePassword,
                autofocus: false,
                obscureText: true,
                //onChanged: onChange,
                //validator: (val) => val.isEmpty || val.length<6 ? 'can\'t be empty' : null,
                //obscureText: type == "Email" ? false : true,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: KPrimaryColor)),
                    focusColor: Colors.black,
                    fillColor: Colors.black,
                    hoverColor: Colors.black,
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black38),
                    border: UnderlineInputBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password ?",
                style: TextStyle(color: KPrimaryColor),
              ),
            ),
            RaisedButton(
                highlightColor: Colors.blue[900],
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: KPrimaryColor,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Text('Log In',
                      style: TextStyle(
                        fontSize: 16,
                        color: KPrimaryLightColor,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'JosefinSans',
                      )),
                ),
                onPressed: () {
                  print("connect...");
                }),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              
              child: Column(
                children: <Widget>[
                  Text(
                    "You don't have an account?",
                    style: TextStyle(color: KPrimaryColor),
                  ),
                  Text(
                    "Create one!",
                    style: TextStyle(color: KPrimaryColor),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
