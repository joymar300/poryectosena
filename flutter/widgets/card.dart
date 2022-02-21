import 'dart:convert';

import 'package:disenno2/widgets/db.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CardImg extends StatefulWidget {
  CardImg({Key? key}) : super(key: key);

  @override
  State<CardImg> createState() => _CardImgState();
}

class _CardImgState extends State<CardImg> {
  getMethod() async {
    String theUrl = "http://10.0.2.2/jyo/getconection.php";
    var res = await http
        .get(Uri.parse(theUrl), headers: {"Accept": "application/json"});
    var responsBody = jsonDecode(res.body);
    print(responsBody);
    return responsBody;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getMethod(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        List? snap = snapshot.data;
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return Center(child: Text("no se concectó"));
        }
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: snap?.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                elevation: 10.0,
                margin: EdgeInsets.all(14.0),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(children: [
                    Expanded(
                      child: Image.network(
                        snap?[index]['url'],
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 10.1,
                    ),
                    Text(
                      snap?[index]['desc_img'],
                      style: Theme.of(context).textTheme.subtitle1,
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ));
          },
        );
      },
    );
  }
}
