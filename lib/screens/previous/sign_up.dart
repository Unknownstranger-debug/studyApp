/*
import 'package:flutter/material.dart';
import 'package:project_app/screens/login.dart';
import 'package:project_app/screens/previous/register_successful.dart';


class SignScreen extends StatelessWidget {
  static String routeName = '/signup';
  var form = GlobalKey<FormState>();

  String? username;
  String? email;
  String? password;
  String? confirmPassword;

  void saveSignupForm(){
    form.currentState!.save();
    print(username);
    print(email);
    print(password);
    print(confirmPassword);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Form(
          key: form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 100),
                            height: 180,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/logo.png"),
                                  fit: BoxFit.fitHeight),
                            ),
                          ),
                          Text(
                            "Welcome Back",
                            style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Login to start your search immediately",
                            style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(label: Text('Username')),
                              onSaved: (value) { username = value; },
                            ),
                            TextFormField(
                              decoration: InputDecoration(label: Text('Email')),
                              onSaved: (value) { email = value; },
                            ),
                            TextFormField(
                              decoration: InputDecoration(label: Text('Password')),
                              onSaved: (value) { password = value; },
                            ),
                            TextFormField(
                              decoration: InputDecoration(label: Text('Confirm Password')),
                              onSaved: (value) { confirmPassword = value; },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          padding: EdgeInsets.only(top: 3, left: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: (){ saveSignupForm();
                            Navigator.of(context).pushNamed(RegisterSuccessScreen.routeName); },
                            color: Color(0xff0095FF),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Already have an account?"),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: () =>
                                Navigator.of(context).pushNamed(LoginScreen.routeName),
                            child: const Text('Login here'),
                          )],
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}*/
