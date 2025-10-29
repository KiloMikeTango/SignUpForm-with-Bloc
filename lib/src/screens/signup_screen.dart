import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(35),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          SizedBox(height: 9),
          signUpButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'youremail@example.com',
        labelText: 'Email Address',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(labelText: 'Password', hintText: 'Password'),
    );
  }

  Widget signUpButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 90),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(7.5),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      child: Text('SignUp'),
    );
  }
}
