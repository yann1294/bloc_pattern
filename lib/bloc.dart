import 'dart:async';

class Bloc implements baseBloc{

  final  _emailController = StreamController<String>();

  final _passwordController = StreamController<String>();

  Stream<String> get email => _emailController.stream.transform(streamTransformer);
  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.close();
    _passwordController.close();
  }
}

abstract class baseBloc{
  void dispose();
}