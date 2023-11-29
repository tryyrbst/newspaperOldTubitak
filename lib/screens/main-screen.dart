import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/NavBar.dart';
import 'package:flutter_application_1/widgets/app-bar.dart';
import 'package:flutter_application_1/widgets/category.dart';
import 'package:flutter_application_1/widgets/yazarlar.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';

import '../widgets/pageView.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> idmanIcerik = [
    "Osmanlı’da Hükümdarlarımızın çok beğendiği ve önemli sayıp devlet içerisine aldıkları sporların en başında avcılık...",
    'Bu spor devletimizde Selçuklu döneminden geliyor. Güreşe "küşti", güreşçiye ise "pehlivan" denilmektedir. “Güreş”, iki kişinin karşılıklı ve belli kurallar...'
  ];

  List<String> ekonomiIcerik = [
    "Bir devlet halkı ile güçlü. Siz değerli halkımız Devletimize ne kadar sahip çıkarsanız bu Devlet-i Ali Osmani o kadar ebedi yaşayacaktır. Savaşlarda, tarımda ve üretimde her zaman devletinin yanında olan siz değerleri okurlarımız...",
    "Devletimizin ekonomik olarak en güçlü zamanını yaşadığı bu yıllarda, savaş ganimetlerinin yanı sıra topraklarımızın düzenli bir şekilde işlendiği, üretime tüm köylülerimizin katıldığı muhteşem bir sistem..."
  ];

  List<String> alemiarziIcerik = [
    "Haber ajansımız son zamanlarda Avrupa’da yaşanan olayları derleyerek kısa bir Avrupa turu hazırlamıştır.“İskoçya Kralı V. James'in hayatta kalan tek meşru çocuğu olan Mary, babası öldüğünde ve tahta geçtiğinde...",
    "1497 yılında Portekiz’i terk etmek zorunda kalan Yahudilerin Alfama’dan Evora’ya Lizon’dan Transisco’ya kadar, birçok şehir ve kasabadaki izlerini Dora Niyego aktarıyor.Haber ajansının aktardığı bilgiler şu şekilde..."
  ];

  List<String> sanatIcerik = [
    "Sevgili Ceride-i Selimiye okurları! Minyatür sanatı ile sizleri bugün düşsel bir huzur yolculuğuna çıkarmak istiyoruz. Gelin hep beraber bu sanatın devletimizdeki yolculuğunda ona eşlik edelim...",
    "Büyük Osmanlı Devletimiz büyük bir vakıf medeniyetiydi. Hastanelerden, eğitim kurumlarına, yolcuların ağırlanması hatta kuşların doyurulmasına kadar hemen hemen her alanda hizmet için kurulmuş vakıflar..."
  ];

  List<String> siyasetIcerik = [
    "Cerbe Deniz Muharebesiyle sonuçlanan İspanya Krallığı ile olan ilişkilerimizi ve savaşı muhabirlerimiz oldukça çetin şartlarda çalışarak bizlere şu şekilde aktarmıştır:Aldığımız bazı bilgilere şu şekilde...",
    "İmparatorluğumuz, 15 Mart 1536 gecesi Kanuni Sultan Süleyman tarafından saraya çağrılarak idam edilen Sadrazam Pargalı İbrahim Paşa’nın ölüm haberiyle sarsıldı.Bu olayın aslını öğrenmeye çalışan gazetemiz hemen olayı araştırmaya başladı..."
  ];

  List<String> ictimaiIcerik = [
    "Padişahımızın özel alanı olarak kabul edilen Harem bir okul muydu yoksa bir bakireler evi mi? Harem’e kimler girip çıkabilirdi? Cariyeler nasıl seçilirdi? Padişaha ihanet eden cariyeler kimlerdi? Padişahların cariyelere aşk mektupları yazdığı doğru mu?İşte Valide Sultanlar, İkballer, Kızlar Ağası, Kalfalar, Cariyeler ve diğerleri...",
    "Çağlar boyunca üç kıtaya nam salmış Osmanlı İmparatorluğumuzdan bizlere birçok kültürel ve tarihi zenginlik miras kaldı. Her detayın cilt cilt kitaplarca anlatıldığı bu zenginliklerden biri ve en çok merak edilen bölüm..."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyNavBar(),
      appBar: myAppBar(
        appBar: AppBar(),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          //padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 90,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/kahvereklam.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage('assets/sondakika.png'),
                            )),
                        height: 25,
                      ),
                    ),
                    Expanded(
                        flex: 7,
                        child: Container(
                          color: Colors.black,
                          height: 25,
                          child: Marquee(
                            text:
                                "Sükürler olsun! Mısır Seferinden dönem sultanımız Yavuz Sultan Selim, Kutsal Emanetleri Istanbul’a getiriyor. ** Istanbul’da 1509 yılının 10 Eylül günü, sabah 04.00 sularında 8.0 siddetinde oldugu tahmin edilen bir deprem gerçeklesti. Bu depren daha sonraları “Kıyamet-i Sugra” yani “Küçük Kıyamet” adıyla anılır oldu. ** ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: 'Condiment',
                                color: Colors.white),
                            scrollAxis: Axis.horizontal, //scroll direction
                            crossAxisAlignment: CrossAxisAlignment.start,
                            blankSpace: 0.0, // 20.0
                            velocity: 50.0, //speed
                            //pauseAfterRound: Duration(seconds: 1),
                            startPadding: 10.0,
                            accelerationDuration: Duration(seconds: 1),
                            accelerationCurve: Curves.linear,
                            //decelerationDuration: Duration(milliseconds: 300),
                            //decelerationCurve: Curves.easeOut,
                          ),
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 90,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/serbetreklam.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 200.0,
                        child: myPageView(),
                      ),
                    ),
                  ],
                ),
                Yazarlar(),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: SizedBox(
                      height: 500.0,
                      child: ListView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Category(
                            title: 'IDMAN \nىدمان',
                            imagePath: 'assets/idman/idmanbg.jpg',
                            titleColor: Colors.black,
                            pdfPaths: [
                              'assets/idman/Avcilik.pdf',
                              'assets/idman/Gures.pdf'
                            ],
                            haberBasliklari: ['AVCILIK', 'GURES'],
                            haberIcerik: idmanIcerik,
                            haberImage: [
                              'assets/idman/avcilik.png',
                              'assets/idman/gures.png'
                            ],
                            baslik: "IDMAN - ىدمان",
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Category(
                            title: 'IKTISADDIYAT \nىكتيساددييات',
                            titleColor: Colors.white,
                            imagePath: 'assets/ekonomi/ekonomibg.jpg',
                            pdfPaths: [
                              'assets/ekonomi/osmanlidavergi.pdf',
                              'assets/ekonomi/timarsistemi.pdf'
                            ],
                            haberBasliklari: [
                              "Osmanlı'da Vergiler",
                              "Tımar Sistemi"
                            ],
                            haberImage: [
                              'assets/ekonomi/osmanlivergi.png',
                              'assets/ekonomi/timar.png'
                            ],
                            haberIcerik: ekonomiIcerik,
                            baslik: "IKTISADDIYAT - ىكتيساددييات",
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Category(
                            title: "ALEM-I ARZI \nآلم-ى آرزي",
                            titleColor: Colors.black,
                            imagePath: 'assets/alemiarzi/alemiarzibg.png',
                            pdfPaths: [
                              'assets/alemiarzi/avrupa.pdf',
                              'assets/alemiarzi/portekiz.pdf'
                            ],
                            haberBasliklari: [
                              "Avrupa'da Yasanan Son Gelismeler",
                              "Portekiz'in Yahudi Katliamı"
                            ],
                            haberImage: [
                              'assets/alemiarzi/avrupa.png',
                              'assets/alemiarzi/portekiz.png'
                            ],
                            haberIcerik: alemiarziIcerik,
                            baslik: "ALEM-I ARZI - آلم-ى آرزي",
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Category(
                              title: "SAN'AT \nصانات ",
                              titleColor: Colors.black,
                              imagePath: 'assets/sanat/sanatbg.jpg',
                              pdfPaths: [
                                'assets/sanat/minyatur.pdf',
                                'assets/sanat/vakif.pdf'
                              ],
                              haberBasliklari: [
                                'Minyatur Sanatı',
                                'Vakıf Sanat'
                              ],
                              haberImage: [
                                'assets/sanat/minyatur.png',
                                'assets/sanat/vakif.png'
                              ],
                              haberIcerik: sanatIcerik,
                              baslik: "SAN'AT - صانات "),
                          SizedBox(
                            height: 5,
                          ),
                          Category(
                              title: 'ALEM-I SIYASET \n الم-ى سيياست',
                              titleColor: Colors.black,
                              imagePath: 'assets/siyaset/siyasetbg.jpg',
                              pdfPaths: [
                                'assets/siyaset/cerbe.pdf',
                                'assets/siyaset/sadrazam.pdf'
                              ],
                              haberBasliklari: [
                                "Cerbe Deniz Muharebesi",
                                "Sadrazam Pargalı Ibrahim'in Olumu"
                              ],
                              haberImage: [
                                'assets/siyaset/cerbe.png',
                                'assets/siyaset/sadrazam.png'
                              ],
                              haberIcerik: siyasetIcerik,
                              baslik: 'ALEM-I SIYASET - الم-ى سيياست'),
                          SizedBox(
                            height: 5,
                          ),
                          Category(
                              title: 'HAYAT-I ICTIMAI \nهايات-ى ايجتيماي',
                              titleColor: Colors.black,
                              imagePath: 'assets/ictimai/ictimaibg.jpg',
                              pdfPaths: [
                                'assets/ictimai/harem.pdf',
                                'assets/ictimai/yemek.pdf'
                              ],
                              haberBasliklari: [
                                "Harem Hayatı",
                                "Yemek Saray Mutfagı"
                              ],
                              haberImage: [
                                'assets/ictimai/harem.png',
                                'assets/ictimai/yemek.png'
                              ],
                              haberIcerik: ictimaiIcerik,
                              baslik: 'HAYAT-I ICTIMAI - هايات-ى ايجتيماي'),
                        ],
                      ),
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
