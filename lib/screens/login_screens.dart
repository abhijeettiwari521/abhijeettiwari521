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
  //finalkey
  // ignore: override_on_non_overriding_member
  final _formKey = GlobalKey<FormState>();
//editing controller
  // ignore: unnecessary_new
  final TextEditingController emailController = new TextEditingController();
  // ignore: unnecessary_new
  final TextEditingController passwerdController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final emailfield = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      //validator: () {},
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
    );
    final passwerdfield = TextFormField(
      autofocus: false,
      controller: passwerdController,
      onSaved: (value) {
        passwerdController.text = value!;
      },
      textInputAction: TextInputAction.done,
    );

    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(),
    );
  }
}
