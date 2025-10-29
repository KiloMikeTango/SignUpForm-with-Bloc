import 'package:flutter/material.dart';
import 'screens/signup_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: "Log me in (Bloc version)",
      home: Scaffold(body: SignUpScreen()),
    );
  }
}
