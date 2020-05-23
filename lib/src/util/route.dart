
import 'package:ex_login/src/ui/home/home.dart';
import 'package:ex_login/src/ui/home/home2.dart';
import 'package:ex_login/src/ui/home/home3.dart';
import 'package:flutter/material.dart';

class RouteName {
  static final String home1 = "/home1";
  static final String home2 = "/home2";
  static final String home3 = "/home3";
}

class MyRoute {
  //  routes: <String, WidgetBuilder> {
  //       NameboxRoute.main: (BuildContext context) => MainTabPage(),
  //       NameboxRoute.signup: (BuildContext context) => SignupPage(),
  //       NameboxRoute.addCard: (BuildContext context) => AddCardPopup(),
  //       NameboxRoute.searchContact: (BuildContext context) => SearchContact(),
  //       NameboxRoute.successAddCardPopup: (BuildContext context) => AddCardSuccessPopup(),
  //       NameboxRoute.successSendFollowCardPopup: (BuildContext context) => SendRequestFollowCardSuccessPopup(),
  //       NameboxRoute.successSendFollowCardViewThisProfile: (BuildContext context) => SendRequestFollowCardSuccessViewThisProfile(),
  //       NameboxRoute.profilePage:(BuildContext context) => ProfilePage(),
  //       NameboxRoute.cardEditing:(BuildContext context) => CardEditing(),
  //       NameboxRoute.cardUpdateSuccessPopup:(BuildContext context) => UpdateThisCardSuccess(),
  //       NameboxRoute.cardRemovePopup:(BuildContext context) => RemoveThisCard(),
  //       NameboxRoute.prodAddSuccessPopup:(BuildContext context) => SaveProductSuccessPopup()
  //     },
  static route() => <String,WidgetBuilder> {
    RouteName.home1: (BuildContext context) => HomePage(),
    RouteName.home2: (BuildContext context) => Home2(),
    RouteName.home3: (BuildContext context) => Home3()
  };

}