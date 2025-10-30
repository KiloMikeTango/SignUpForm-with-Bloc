import 'dart:async';
import 'validator.dart';

class Bloc with Validator {
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  //add data to stream
  Function(String) get updateEmail => _emailController.sink.add;
  Function(String) get updatePassword => _passwordController.sink.add;

  //retrieve data from stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

final Bloc bloc = Bloc();
