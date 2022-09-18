import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:latihan_istilah/page/istilah_page.dart';
import 'package:latihan_istilah/page/nadzom_page.dart';
import 'package:latihan_istilah/page/tamhid_page.dart';
import 'package:latihan_istilah/page/tentang_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Color(0xff0e1446)),
                    height: 420,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                        margin: EdgeInsets.only(top: 0, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                          ],
                        ),
                      ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/BG_art1.png",
                      width: 750,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/bg_kitab1.png",
                      width: 350,
                    ),
                  ),
                ),
              ],
            ),
       const SizedBox(height: 10),
      Expanded(
      child: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            color: Color.fromARGB(255, 244, 245, 247),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Tamhid()));
              },
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/images/i_tamhid.png"),
                      height: 100,
                      width: 100,
                    ),
                    Text("Tamhid",
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          
          Card(
            margin: const EdgeInsets.all(8),
            color: Color.fromARGB(255, 244, 245, 247),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Istilah()));
              },
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/images/i_istilah.png"),
                      height: 100,
                      width: 100,
                    ),
                    Text("Al-Istilah",
                        style: TextStyle(
                            
                            fontSize: 19.0, 
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            color: Color.fromARGB(255, 244, 245, 247),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Nadzom()));
              },
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/images/i_nadzom.png"),
                      height: 100,
                      width: 100,
                    ),
                    Text("Nadzom",
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            color: Color.fromARGB(255, 244, 245, 247),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Tentang()));
              },
              splashColor: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/images/i_tentang.png"),
                      height: 100,
                      width: 100,
                    ),
                    Text("Tentang",
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      ),
          ],
        ),
      ),
    );
  }
}
