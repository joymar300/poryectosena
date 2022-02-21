import 'dart:async';

import 'package:mysql1/mysql1.dart';

Future main() async {
  // Open a connection (testdb should already exist)
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost', port: 3306, user: 'root', db: 'list:'));

  // Query the database using a parameterized query
  var results =
      await conn.query('select url, desc_img, from img where id_img = 1;');
  for (var row in results) {
    print('url: ${row[1]}, img_desc: ${row[2]}');
  }

  // Finally, close the connection
  await conn.close();
}
