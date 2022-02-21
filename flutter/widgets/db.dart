import 'package:mysql1/mysql1.dart';
import 'dart:async';

/*class List {
  late final String id;
  late final String url;

  List({
    required this.id,
    required this.url,
  });

  factory List.fromJson(Map<String, dynamic> jsonData) {
    return List(
      id: jsonData['id'],
      url: jsonData['url'],
    );
  }
}*/
class Mysql {
  static String host = 'localhost', user = 'root', db = 'list', password = '';
  static int port = 3306;
  Mysql();

  Future<MySqlConnection> getConnetion() async {
    var settings = ConnectionSettings(
      host: host,
      port: port,
      user: user,
      db: db,
      password: password,
    );
    return await MySqlConnection.connect(settings);
  }
}
