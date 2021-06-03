import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "İlkel Blog Uygulaması",
      home: OneriScreen(),
    );
  }
}

class OneriScreen extends StatelessWidget {
  static String routeName = "/oneri";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Öneri Sayfası"),
        ),
        body: AnaEkran());
  }
}

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  String blogYazisi = '';
  String newRec = '';

  oneriGoster() {
    setState(() {
      int a = 1;
      if (a == 0) {
        blogYazisi = "Kıyafet Önerildi.";
        Container(
            child: Image.network(
                "https://images.freeimages.com/images/large-previews/e4a/surf-3-1378236.jpg"));
      } else if (a == 1) {
        blogYazisi = "Ayakkabi Önerildi.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              blogYazisi,
            ),
            Text(
              newRec,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Öneri Yap",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
