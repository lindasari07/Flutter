import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



import 'package:latihan_istilah/model/model_nadzom.dart';

class Nadzom extends StatefulWidget {
  const Nadzom({Key? key}) : super(key: key);

  @override
  _NadzomState createState() => _NadzomState();
}

class _NadzomState extends State<Nadzom> {
  Future<List<ModelNadzom>> ReadJsonData() async {
    final jsondata = await rootBundle.loadString('assets/data/nadzom.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => ModelNadzom.fromJson(e)).toList();
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
                        margin: EdgeInsets.only(top: 70, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Nadzom",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Ghoyatus Sholah",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
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
                      "assets/images/al-kitab1.png",
                      width: 200,
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
                    var items = data.data as List<ModelNadzom>;
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
                                
                                child: Column(
                                  children: [
                                    Text(items[index].arabic.toString(), textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Trado', fontSize: 20, fontWeight: FontWeight.bold),),
                                    Divider(color: Colors.grey[400],),
                                    
                                      
                                  ],
                                ),
                              ),
                            ),

                          );
                        });
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


class NadzomDetails extends StatelessWidget {
  const NadzomDetails({
    Key? key,
    required this.id,
    required this.arabic,
    
  }) : super(key: key);

  final String id;
  final String arabic;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arabic.toString())
      ),
   
    );
  }
}
