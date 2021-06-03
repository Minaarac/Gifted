import 'package:cloud_firestore/cloud_firestore.dart';

class Kullanici {
  final String id;
  final String ad;
  final String soyad;
  final String email;
  final String avatar;

  Kullanici({this.id, this.ad, this.soyad, this.email, this.avatar});

  factory Kullanici.dokumandanUret(DocumentSnapshot doc) {
    return Kullanici(
      id: doc.documentID,
      ad: doc.data["Ad"],
      soyad: doc.data["Soyad"],
      email: doc.data["Email"],
      avatar: doc.data["avatar"],
    );
  }
}
