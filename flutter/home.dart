import 'package:disenno2/main.dart';
import 'package:disenno2/widgets/background.dart';
import 'package:disenno2/widgets/card.dart';
import 'package:disenno2/widgets/lateral.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SENA"),
        centerTitle: true,
        backgroundColor: Colors.orange.shade700,
      ),
      drawer: laterarl(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Background(),
          /* Positioned(
              child: GridView.count(
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            children: [
              Card(
                  elevation: 10.0,
                  margin: const EdgeInsets.all(14.0),
                  child: Container(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(children: [
                      Image.network(
                        "https://www.latercera.com/resizer/kiAdAiZzK3AogssG0LYFG3Ezn3w=/900x600/smart/arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/7PVMUQ6D5JAXLIV7DRCNMCKP5E.jpg",
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 10.1,
                      ),
                      Text(
                        "logistica",
                        style: Theme.of(context).textTheme.subtitle1,
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  )),
              Card(
                  elevation: 10.0,
                  margin: EdgeInsets.all(14.0),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(children: [
                      Expanded(
                        child: Image.network(
                          "https://static.wikia.nocookie.net/31minutos/images/1/1a/31minutos5.png/revision/latest?cb=20181015013740",
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        height: 10.1,
                      ),
                      Text(
                        "Sistemas",
                        style: Theme.of(context).textTheme.subtitle1,
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  )),
              Card(
                  elevation: 10.0,
                  margin: EdgeInsets.all(14.0),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(children: [
                      Expanded(
                        child: Image.network(
                          "https://www.65ymas.com/uploads/s1/90/06/3/bigstock-191483635.jpeg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        height: 10.1,
                      ),
                      Text(
                        "confecciones",
                        style: Theme.of(context).textTheme.subtitle1,
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  )),
              Card(
                  elevation: 10.0,
                  margin: EdgeInsets.all(14.0),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(children: [
                      Expanded(
                        child: Image.network(
                          "https://img.remediosdigitales.com/d69745/engine-1534799977/1366_521.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10.1,
                      ),
                      Text(
                        "automotor",
                        style: Theme.of(context).textTheme.subtitle1,
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  )),
              Card(
                  elevation: 10.0,
                  margin: EdgeInsets.all(14.0),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(children: [
                      Expanded(
                        child: Image.network(
                          "https://qph.fs.quoracdn.net/main-qimg-2ea68f8620c9f84f27b2bacac36e6306",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10.1,
                      ),
                      Text(
                        "artes graficas",
                        style: Theme.of(context).textTheme.subtitle1,
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  )),
            ],
          )),*/
          CardImg()
        ],
      ),
    );
  }
}
