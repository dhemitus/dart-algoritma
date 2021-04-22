import 'dart:convert';
import 'dart:io';
import 'package:algo/palindrom.dart';

Future main() async {

  var _server = await HttpServer.bind(InternetAddress.loopbackIPv4, 4040);

  print('listening on localhost:${_server.port}');

  await for (HttpRequest request in _server) {
    request.response.write('result: ${findPalindrom(10, 30)}');
    await request.response.close();
  }
}
