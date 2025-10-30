import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            emailField(),
            Container(margin: EdgeInsets.only(top: 5)),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 7)),
            signUpButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.updateEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'youremail@example.com',
            hintStyle: TextStyle(color: Colors.grey),
            labelText: 'Email Address',
            errorText: snapshot.error?.toString(),
          ),
        );
      },
    );
  }
}

Widget passwordField() {
  return StreamBuilder(
    stream: bloc.password,
    builder: (context, snapshot) {
      return TextField(
        onChanged: bloc.updatePassword,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Password',
          hintStyle: TextStyle(color: Colors.grey),
          errorText: snapshot.error?.toString(),
        ),
      );
    },
  );
}

Widget signUpButton() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 90),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.5)),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
    child: Text('SignUp'),
  );
}
