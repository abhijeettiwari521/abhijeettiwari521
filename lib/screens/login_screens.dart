// ignore: unused_import
// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  //formkey
  // ignore: override_on_non_overriding_member, unused_field
  final _formKey = GlobalKey<FormState>();
//editing controller
  // ignore: unnecessary_new
  final TextEditingController emailController = new TextEditingController();
  // ignore: unnecessary_new
  final TextEditingController passwerdController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    //email final
    final emailfield = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      //validator: () {},
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefix: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    //password field
    final passwerdfield = TextFormField(
      autofocus: false,
      controller: passwerdController,
      obscureText: true,
      //validator:(){}
      onSaved: (value) {
        passwerdController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefix: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    //loginbutten
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text(
          "logIn",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  emailfield,
                  passwerdfield,
                  loginButton,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
