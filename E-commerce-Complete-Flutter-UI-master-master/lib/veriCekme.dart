import 'package:flutter/material.dart';
import 'package:shop_app/models2/kullanici.dart';
import 'package:shop_app/routes.dart';
//import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  final db = Firestore.instance;
  void kullanicilariGetir() async {
    var snapshot = await db.collection("kullanıcılar").getDocuments();
    snapshot.documents.forEach((doc) {
      print(doc.data);
    });
  }

  void kimlikIleKullaniciGetir() async {
    var doc = await db
        .collection("kullanıcılar")
        .document("WFkvZvnOmKzzYZ9KvgNB")
        .get();
    if (doc.exists) {
      print(doc.data);
    } else {
      print("Böyle bir döküman bulunamadi");
    }
  }

  void kullanicilariSirala() async {
    var snapshot =
        await db.collection("kullanıcılar").orderBy("Yaş").getDocuments();
    snapshot.documents.forEach((doc) {
      print(doc.data);
    });
  }

  void kullanicilariSorgula() async {
    var snapshot = await db
        .collection("kullanıcılar")
        .where("Yaş", isEqualTo: 23)
        .getDocuments();
    snapshot.documents.forEach((doc) {
      print(doc.data);
    });
  }

  void kullaniciCokluSorgu() async {
    QuerySnapshot snapshot = await db
        .collection("kullanıcılar")
        .where("Soyad", isEqualTo: "Araç")
        .where("Yaş", isGreaterThan: 22) //limit(1) dersem 1 döküman getirir
        .getDocuments();
    snapshot.documents.forEach((DocumentSnapshot doc) {
      print(doc.data);
    });
  }

  void kullaniciOlustur() async {
    var doc = await db
        .collection("kullanıcılar")
        .document("WFkvZvnOmKzzYZ9KvgNB")
        .get();
    Kullanici kullanici_1 = Kullanici.dokumandanUret(doc);
    print(kullanici_1.id);
    print(kullanici_1.ad);
    print(kullanici_1.soyad);
    print(kullanici_1.email);
    print(kullanici_1.avatar);
  }

  @override
  void initState() {
    super.initState();
    kullaniciOlustur();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }
}
