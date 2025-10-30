import 'dart:async';

mixin Validator {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      if (data.contains('@gmail.com')) {
        sink.add(data);
      } else {
        sink.addError('Enter valid email');
      }
    }, 
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      if (data.length >= 6) {
        sink.add(data);
      } else {
        sink.addError('Password must be at least 6 characters');
      }
    },
  );
}
