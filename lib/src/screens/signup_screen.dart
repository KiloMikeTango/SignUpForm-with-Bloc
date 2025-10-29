import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

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

  Bloc bloc = Bloc();
  Widget emailField() {
    return TextField(
      onChanged: (value) {
        bloc.updateEmail(value);
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'youremail@example.com',
        hintStyle: TextStyle(color: Colors.grey),
        labelText: 'Email Address',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }

  Widget signUpButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 90),
        elevation: 1.5,
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
