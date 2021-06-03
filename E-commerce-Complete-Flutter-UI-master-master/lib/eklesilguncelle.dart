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

  kullaniciEkle() {
    db
        .collection("kullanıcılar")
        .add({"Ad": "Hakan", "Soyad": "Demir", "Email": "demir.@gmail.com"})
        .then((makbuz) => print(makbuz.documentID))
        .catchError((hata) {
          print("Kullanıcı eklenemedi : $hata");
        });
  }

  kimlikIleKullaniciEkle() {
    db
        .collection("kullanıcılar")
        .document("abc")
        .setData({"Ad": "Hakan", "Soyad": "Demir", "Email": "demir.@gmail.com"})
        .then((_) => print("Döküman girildi"))
        .catchError((hata) {
          print("Kullanıcı eklenemedi : $hata");
        });
  }

  kullaniciGuncelle() {
    db
        .collection("kullanıcılar")
        .document("abc")
        .updateData(
            {"Ad": "Kübra", "Soyad": "Özay", "Email": "ozay.@gmail.com"})
        .then((_) => print("Döküman güncellendi"))
        .catchError((hata) {
          print("Hata Oluştu  : $hata");
        });
  }

  kullaniciSil() {
    db
        .collection("kullanıcılar")
        .document("abc")
        .delete()
        .then((_) => print("Döküman silindi"))
        .catchError((hata) {
      print("Hata Oluştu  : $hata");
    });
  }

  @override
  void initState() {
    super.initState();
    kullaniciSil();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<QuerySnapshot>(
            stream: db.collection("kullanıcılar").snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return CircularProgressIndicator();
              }
              List<Kullanici> kullanicilar = snapshot.data.documents
                  .map((doc) => Kullanici.dokumandanUret(doc))
                  .toList();
              return ListView.builder(
                  itemCount: kullanicilar.length,
                  itemBuilder: (context, pozisyon) {
                    return ListTile(
                      title: Text(kullanicilar[pozisyon].ad),
                      subtitle: Text(kullanicilar[pozisyon].email),
                    );
                  });
            }));
  }
}
