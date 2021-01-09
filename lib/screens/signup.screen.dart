import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/ink_capsule_logo.png', height: 50,),
      ),
      body: Center(
        child: Form(
          child: Container(
            height: 500,
            margin: const EdgeInsets.symmetric(
              horizontal: 35
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: Text('Email'),
                ),
                TextFormField(),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  child: Text('Password'),
                ),
                TextFormField(
                  obscureText: true,
                ),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  child: Text('Confirm Password'),
                ),
                TextFormField(
                  obscureText: true,
                ),
                SizedBox(height: 30,),
                FlatButton(
                  onPressed: () {},
                  color: Colors.black,
                  minWidth: double.infinity,
                  height: 55,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Text('Sign up', style: TextStyle(color: Colors.white),),
                ),
                Container(
                  // height: 30,
                  margin: const EdgeInsets.only(
                    top: 15,
                    bottom: 5
                  ),
                  width: double.infinity,
                  child: Text("Already have an account?"),),
                FlatButton(
                  onPressed: () {},
                  // color: Colors.black,
                  minWidth: double.infinity,
                  height: 55,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Text('Login', style: TextStyle(),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}