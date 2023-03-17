import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HitungLayang extends StatefulWidget {
  const HitungLayang({Key? key}) : super(key: key);

  @override
  State<HitungLayang> createState() => _HitungLayangState();
}

class _HitungLayangState extends State<HitungLayang> {
  TextEditingController d1 = TextEditingController();
  TextEditingController d2 = TextEditingController();
  TextEditingController sisiA = TextEditingController();
  TextEditingController sisiB = TextEditingController();

  double luasLayang = 0;
  double kelilingLayang = 0;

  hitungLuasLayang() {
    luasLayang = (double.parse(d1.text) * double.parse(d2.text)) / 2;
  }

  hitungKelilingLayang() {
    kelilingLayang = 2 * (double.parse(sisiA.text) + double.parse(sisiB.text));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas & Keliling Layang-Layang"),
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
                  "Masukkan Diameter 1 (meter)",
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
                  controller: d1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Masukkan d1",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder()),
                ),
              ),
              Center(
                child: Text(
                  "Masukkan Diameter 2 (meter)",
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
                  controller: d2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Masukkan d2",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder()),
                ),
              ),
              Center(
                child: Text(
                  "Masukkan Sisi A (meter)",
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
                  controller: sisiA,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Masukkan sisi a",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder()),
                ),
              ),
              Center(
                child: Text(
                  "Masukkan Sisi B (meter)",
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
                  controller: sisiB,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Masukkan sisi b",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder()),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (d1.text.isNotEmpty & d2.text.isNotEmpty) {
                      hitungLuasLayang();
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
                    if (sisiA.text.isNotEmpty & sisiB.text.isNotEmpty) {
                      hitungKelilingLayang();
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
                  "Hasil Luas = $luasLayang meter",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 30),
                child: Text(
                  "Hasil Keliling = $kelilingLayang meter",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
