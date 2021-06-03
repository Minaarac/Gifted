import 'package:flutter/material.dart';
import 'package:shop_app/screens/hesabim/hesabim_screen.dart';
import 'package:shop_app/screens/kisiselbilgilerim/kisiselbilgilerim_screen.dart';
//import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Hesabım",
            icon: "assets/icons/User Icon.svg",
            press: () => Navigator.pushNamed(context, HesabimScreen.routeName),
          ),
          ProfileMenu(
            text: "Kişisel Bilgilerim",
            icon: "assets/icons/Question mark.svg",
            press: () =>
                Navigator.pushNamed(context, KisiselBilgilerimScreen.routeName),
          ),
          ProfileMenu(
            text: "Bildirimler",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Ayarlar",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Çıkış Yap",
            icon: "assets/icons/Log out.svg",
            press: () => Navigator.pushNamed(context, SplashScreen.routeName),
          ),
        ],
      ),
    );
  }
}
