import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan_istilah/model/model_istilah.dart';



class Istilah extends StatefulWidget {
  const Istilah({Key? key}) : super(key: key);

  @override
  _IstilahState createState() => _IstilahState();
}

class _IstilahState extends State<Istilah> {
  Future<List<ModelIstilah>> ReadJsonData() async {
    final jsondata = await rootBundle.loadString('assets/data/istilah.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => ModelIstilah.fromJson(e)).toList();
  }

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
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                        margin: EdgeInsets.only(top: 90, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Al-Istilah",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Isi Kitab",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back,
                        color: Color.fromARGB(255, 248, 248, 248)),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/bg_tamhid1.png",
                      width: 220,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: FutureBuilder(
                future: ReadJsonData(),
                builder: (context, data) {
                  if (data.hasError) {
                    return Center(child: Text("${data.error}"));
                  } else if (data.hasData) {
                    var items = data.data as List<ModelIstilah>;
                    return ListView.builder(
                        itemCount: items == null ? 0 : items.length,
                        itemBuilder: (context, index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 5,
                            margin: EdgeInsets.all(15),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => IstilahDetails(
                                    id: items[index].id.toString(),
                                    arabic: items[index].arabic.toString(),
                                    arabica: items[index].arabica.toString(),
                                    terjemahan: items[index].terjemahan.toString(),
                                  ),
                                ),
                              );
                                },
                                child: Column(
                                  children: [
                                    Text(items[index].arabic.toString(), textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Trado', fontSize: 25, fontWeight: FontWeight.bold),),
                                    Divider(color: Colors.grey[400],),
                                    Text(items[index].terjemahan.toString(),textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Trado', fontSize: 15, fontWeight: FontWeight.bold),),
                                      
                                  ],
                                ),
                              ),
                            ),

                          );
                        },
                      );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class IstilahDetails extends StatelessWidget {
  const IstilahDetails({
    Key? key,
    required this.id,
    required this.arabic,
    required this.arabica,
    required this.terjemahan,
  }) : super(key: key);

  final String id;
  final String arabic;
  final String arabica;
  final String terjemahan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arabic.toString(),
        style: TextStyle(fontFamily: 'Trado', 
        fontSize: 25,
        fontWeight: FontWeight.bold
        ),
      ),
        backgroundColor: Color(0xff0e1446),
    ),
      body: SafeArea(
        child: ListView(
          children:  [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Text("بسم الله الرحمن الرحيم", 
              textAlign: TextAlign.center, 
              style: TextStyle (
                fontFamily: 'Alhad',
                color:  Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
              child: Text("Dengan menyebut nama Allah Yang Maha Pemurah lagi Maha Penyayang",
              textAlign: TextAlign.center, 
              style: TextStyle(
                fontFamily: 'Trado',
                color:  Colors.black,
                fontSize: 12,
                fontStyle: FontStyle.italic
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 8),
              child: 
              
              Text(arabica.toString(), 
              textAlign: TextAlign.center, 
              textDirection: TextDirection.rtl, 
              style: TextStyle(
                fontFamily: 'Trado', 
                fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
