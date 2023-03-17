import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dataDiri extends StatefulWidget {
  const dataDiri({Key? key}) : super(key: key);

  @override
  State<dataDiri> createState() => _dataDiriState();
}

class _dataDiriState extends State<dataDiri> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Data Diri"),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 50, bottom: 30),
                child: Image.asset(
                  'assets/img/foto.jpg',
                  width: 400,
                  height: 300,
                ),
              ),
              Text("NIM: 123200108"),
              Text("Nama: Arneta Juniar Setiawan"),
              Text("Kelas: IF-C"),
              Text("Hobi: Membaca novel"),
            ],
          ),
        ),
      ),
    );
  }
}
