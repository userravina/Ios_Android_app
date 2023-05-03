import 'package:flutter/cupertino.dart';
import 'package:outcaster/Ios_ui/Shop_app_ios/Modal_shop/modal.dart';

class Shop_provider extends ChangeNotifier {
  int i = 0;

  void ChangeTab(int value) {
    i = value;
    notifyListeners();
  }

  List<Shop_modal> shop = [
    Shop_modal(
        Name: "Women's/Girls  College Bags ",
        img: "assets/images/shop1.png",
        price: "₹450"),
    Shop_modal(
        Name: "Surfer Men Sunglasses",
        img: "assets/images/shop2.png",
        price: "₹150"),
    Shop_modal(
        Name: "Multicolour Long Kurti",
        img: "assets/images/shop5.png",
        price: "₹2000"),
    Shop_modal(
        Name: "The Pride Necklace",
        img: "assets/images/shop6.png",
        price: "₹200"),
    Shop_modal(
        Name: "Beautifull Earrings ",
        img: "assets/images/shop7.png",
        price: "₹50"),
    Shop_modal(
        Name: "Very nice bangles design",
        img: "assets/images/shop8.png",
        price: "₹900"),
    Shop_modal(
        Name: "Embroidered Net Lehenga",
        img: "assets/images/shop9.png",
        price: "₹25,000"),
    Shop_modal(
        Name: "Fit and Flare Dress",
        img: "assets/images/shop12.png",
        price: "₹1500"),
  ];

  DateTime date = DateTime.now();

  void datechange(DateTime temp) {
    date = temp;
    notifyListeners();
  }
  List<Shop_modal> shop2 = [
    Shop_modal(Name: "Smart Watch..", price: "27,900", img: "assets/images/sh1.png"),
    Shop_modal(Name: "SWISSTYLE Analog Men's Watch..", price: "150", img: "assets/images/sh2.png"),
    Shop_modal(Name: "Shop Fashion Watch..", price: "200", img: "assets/images/sh3.png"),
    Shop_modal(Name: "Shop Watch onli..", price: "250", img: "assets/images/sh4.png"),
  ];

  List shop3=[ Shop_modal(Name: "Smart Watch..", price: "27,900", img: "assets/images/sh1.png"), Shop_modal(
      Name: "Women's/Girls  College Bags ",
      img: "assets/images/shop1.png",
      price: "₹450"),Shop_modal(
      Name: "Very nice bangles design",
      img: "assets/images/shop8.png",
      price: "₹900"),];
}
