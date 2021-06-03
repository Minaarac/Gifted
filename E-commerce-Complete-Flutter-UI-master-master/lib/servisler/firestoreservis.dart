import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServisi {
  final Firestore _firestore = Firestore.instance;

  final DateTime zaman = DateTime.now();

  Future<void> kullaniciOlustur({id, email, kullaniciadi}) async {
    await _firestore.collection("kullanıcılar").document(id).setData({
      "kullaniciAdi": kullaniciadi,
      "email": email,
      "fotoUrl": "",
      "hakkinda": "",
      "olusturmaZamani": zaman
    });
  }
}
