import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tamhid extends StatefulWidget {
  const Tamhid({Key? key}) : super(key: key);

  @override
  _TamhidState createState() => _TamhidState();
}

class _TamhidState extends State<Tamhid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 243, 243),
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
                              "Tamhid",
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
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back,
                        color: Color.fromARGB(255, 247, 245, 245)),
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
                      "assets/images/tasbih.png",
                      width: 190,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 40),
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        "بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيم",
                        style: TextStyle(
                            fontFamily: 'Alhambra',
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Dengan Menyebut Nama Allah Yang Maha Pemurah lagi Maha Penyayang",
                        style: TextStyle(
                          fontFamily: 'Trado',
                            color: Colors.black,
                            fontSize: 12,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: SelectableText(
                      "الحمد لله الذي أباح لنا كل ما يصلح حالنا، وحرم علينا كل ما يشيننا ويفسد حالنا، والصلاة والسلام على أفضل الخلق محمد الذى هو سيدنا ورسولنا، وعلى آله وصحبه الذين هم مرشدونا ومهتدونا. أما بعد: فإن هذا الكتاب الذى بين يديك أيها القارئ الكريم قد أخذته من عبارات المؤلفين، ومن كلام العلماء الراسخين، ثم نظمته تسهيلا عليك حفظه، إذ النظم أسرع للحفظ من النثر، خصوصا ماكان على بحر الرجز، وقد ضمنته الكثير من الفوائد التى تعتبر بحق نافعة لكل من أراد النكاح، ومالى فى هذا الكتاب إلا دعوة للشباب لكى يكونوا فى جميع أمورهم موافقا على الكتاب والسنة.وقد سألنى بعض الأساتيذ أن أضع عليه شرحا يوضّح ما أشكل منه، ويفتح ما أغلق منه، ويبين به المراد، ويتم به المفاد، ويحصل به المقاصد، ويبرز به الفوائد. وقد قسمته إلى ثلاثة عشر فصلا. والله أسأل، وبرسوله أتوسل، أن يجعله نافعا خالصا لوجهه الكريم، ووسيلة للفوز بجنات النعيم، وأن يغفر لمن نظر فيه بعين الإنصاف، ودعا لمؤلفه بأن يدركه ربه جل وعلا بخفي الألطاف، وبأن يمتعه بالنظر إلى وجهه، ويمده بالإسعاف، آمين.",
                       style: TextStyle(
                          fontFamily: 'Trado',
                          color: Colors.black,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          margin: EdgeInsets.only(top: 70, right: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "البيطان : 7  ربيع الأول  1437 هـ",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "بيدى الحقير الفقير إلى رحمة ربه الخبير",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    )
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
