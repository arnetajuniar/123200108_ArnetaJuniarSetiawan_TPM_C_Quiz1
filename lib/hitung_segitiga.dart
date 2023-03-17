import 'dart:math';

import 'package:flutter/material.dart';

class HitungSegitiga extends StatefulWidget {
  const HitungSegitiga({Key? key}) : super(key: key);

  @override
  State<HitungSegitiga> createState() => _HitungSegitigaState();
}

class _HitungSegitigaState extends State<HitungSegitiga> {
  TextEditingController sisi1 = TextEditingController();
  TextEditingController sisi2 = TextEditingController();
  TextEditingController sisi3 = TextEditingController();

  double kelilingSegitiga = 0;
  double luasSegitiga = 0;

  hitungKelilingSegitiga() {
    kelilingSegitiga = double.parse(sisi1.text) +
        double.parse(sisi2.text) +
        double.parse(sisi3.text);
  }

  hitungLuasSegitiga() {
    double s = (double.parse(sisi1.text) +
            double.parse(sisi2.text) +
            double.parse(sisi3.text)) /
        2;
    luasSegitiga = sqrt(s *
        (s - double.parse(sisi1.text)) *
        (s - double.parse(sisi2.text)) *
        (s - double.parse(sisi3.text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Luas & Keliling Segitiga"),
        ),
        body: Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ListView(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Masukkan Sisi 1 (meter)",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    controller: sisi1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Masukkan sisi 1",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder()),
                  ),
                ),
                Center(
                  child: Text(
                    "Masukkan Sisi 2 (meter)",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: sisi2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Masukkan sisi 2",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder()),
                  ),
                ),
                Center(
                  child: Text(
                    "Masukkan Sisi 3 (meter)",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: sisi3,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Masukkan sisi 3",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder()),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (sisi1.text.isNotEmpty &
                          sisi2.text.isNotEmpty &
                          sisi3.text.isNotEmpty) {
                        hitungLuasSegitiga();
                        setState(() {});
                      } else {
                        const snackBar =
                            SnackBar(content: Text("Harap isi data!"));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Text("HITUNG LUAS", style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (sisi1.text.isNotEmpty &
                          sisi2.text.isNotEmpty &
                          sisi3.text.isNotEmpty) {
                        hitungKelilingSegitiga();
                        setState(() {});
                      } else {
                        const snackBar =
                            SnackBar(content: Text("Harap isi data!"));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child:
                        Text("HITUNG KELILING", style: TextStyle(fontSize: 15)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Hitung Luas = $luasSegitiga meter",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Hitung Keliling = $kelilingSegitiga meter",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
