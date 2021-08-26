import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("DENÚNCIA"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                      child: Text(
                    "Dados do Denunciado:",
                    style: TextStyle(fontSize: 25.0),
                  )),

                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nome/Apelido',
                      hintText: 'Denunciado',
                      labelStyle:
                          TextStyle(color: Colors.black, fontSize: 19.0),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  // Divider(),
                ],
              )),
        ));
  }
}
