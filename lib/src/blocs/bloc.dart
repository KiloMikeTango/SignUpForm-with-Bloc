import 'dart:async';
import 'validator.dart';

class Bloc with Validator{
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  //add data to stream
  Function(String) get updateEmail => _emailController.sink.add;
  Function(String) get updatePassword => _passwordController.sink.add;

  //retrieve data from stream
  Stream<String> get email => _emailController.stream;
  Stream<String> get password => _passwordController.stream;
}
