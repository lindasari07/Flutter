import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tentang extends StatefulWidget {
  const Tentang({Key? key}) : super(key: key);

  @override
  _TentangState createState() => _TentangState();
}

class _TentangState extends State<Tentang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 243, 241),
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
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 11, 2, 61)),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                        margin: EdgeInsets.only(top: 70, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Tentang",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Pengarang",
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
                  alignment: Alignment.topRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/images/bg_Kiyai.png",
                      width: 170,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back,
                        color: Color.fromARGB(255, 247, 246, 246)),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 25),
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        "بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيم",
                        style: TextStyle(
                          fontFamily: 'Alhambra',
                            color:  Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Dengan menyebut nama Allah Yang Maha Pemurah lagi Maha Penyayang",
                        style: TextStyle(
                          fontFamily: 'Trado',
                            color: Colors.black,
                            fontSize: 12,
                            fontStyle: FontStyle.italic
                          ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: SelectableText(
                        "\t KH. Romzi Al Amiri Mannan lahir tanggal 12 Juli 1969 dari pasangan KH Abdul Mannan dan Nyai Hj Qina’ah. Lahir dari keturunan “darah biru,” dalam strata sosial masyarakat Madura, adalah suatu keistimewaan. Masyarakat bakal segan dan tunduk hormat pada titah sang kiai. Tumbuh di Pondok Pesantren Hidayatut Thahlibin, membuatnya jarang berhubungan dengan dunia luar. Beruntung. Karena masyarakat di luar pesantren ada yang jadi pencuri, pengemis sebab minimnya pengetahuan terhadap ilmu agama. Oleh sebab itu, Kiai Abdul Mannan Ibrahim tak membiarkan putranya bergaul dengan sembarang orang. Namanya Lora Mohammad Romzi Mannan, biasa dipanggil Ra Romzi. Beliau merupakan putra ke enam dari sepuluh bersaudara. Di antara saudara-saudaranya ialah Nyai Hj Umayyah (kakak lain ibu), KH Subairi, KH Maimon, KH Mahsun, Nyau Hj Fatimah, KH Muhdar, KH Abrori, KH Herul Wi’am dan KH Noval.",
                        style: TextStyle(
                          fontFamily: 'Trado',
                          color: Colors.black,
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
