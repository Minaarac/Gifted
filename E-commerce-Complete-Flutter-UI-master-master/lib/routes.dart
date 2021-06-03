//import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/callender/callender_screen.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/feedback/feedback_screen.dart';
import 'package:shop_app/screens/filterscreen/dropdown.dart';
import 'package:shop_app/screens/filterscreen/filter_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/kisiselbilgilerim/kisiselbilgilerim_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/onerisayfasi/oneri_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/screens/hesabim/hesabim_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  HesabimScreen.routeName: (context) => HesabimScreen(),
  FeedbackScreen.routeName: (context) => FeedbackScreen(),
  FiltersScreen.routeName: (context) => FiltersScreen(),
  CalendarPopupView.routeName: (context) => CalendarPopupView(),
  KisiselBilgilerimScreen.routeName: (context) => KisiselBilgilerimScreen(),
  OneriScreen.routeName: (context) => OneriScreen(),
  DropdownScreen.routeName: (context) => DropdownScreen(),
};
