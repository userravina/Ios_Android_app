import 'package:flutter/widgets.dart';
import 'package:outcaster/Android_ui/Play_store_ui/Play_store_modal/Home_modal.dart';

class store_provider extends ChangeNotifier {
  int i = 0;

  void ChangeValue(int value) {
    i = value;
    notifyListeners();
  }

  List<Home_modal> HomeList = [
    Home_modal(
        name: "WhatsApp Business",
        data: "WhatsApp LLC",
        date2: "In-app purchases",
        reviews: "4.1",
        img: "assets/images/t1.jpeg",
        img1: "assets/images/5w.jpeg",
        img2: "assets/images/1w.jpeg",
        img3: "assets/images/2w.jpeg",
        img4: "assets/images/4w.jpeg"),
    Home_modal(
        name: "Flipkart Shopping App",
        data: "Flipkart",
        date2: "Contains ads",
        reviews: "4.3",
        img: "assets/images/t2.jpeg"),
    Home_modal(
        name: "Hotstar",
        data: "Photo Editor, Video",
        date2: "PicsArt, Inc.",
        reviews: "4.2",
        img: "assets/images/t5.jpeg"),
    Home_modal(
        name: "Picsart AI ",
        data: "Photo Editor, Video",
        date2: "PicsArt, Inc.",
        reviews: "4.2",
        img: "assets/images/t4.jpeg"),
  ];
  List w1 = [
    "assets/images/5w.jpeg",
    "assets/images/1w.jpeg",
    "assets/images/2w.jpeg",
    "assets/images/4w.jpeg",
  ];
  List HomeList2 = [
    Home_modal(
        name: "Snapchat",
        data: "Snap Inc",
        date2: "Contains adsIn-app purchases",
        reviews: "4.1",
        img: "assets/images/tt1.png"),
    Home_modal(
        name: "Subway Surfers",
        data: "SYBO Games",
        date2: "Contains adsIn-app purchases",
        reviews: "4.4",
        img: "assets/images/r1.jpeg"),
    Home_modal(
        name: "Facebook",
        data: "Meta Platforms, Inc.",
        date2: "Contains adsIn-app purchases",
        reviews: "4.1",
        img: "assets/images/r2.jpeg"),
    Home_modal(
        name: "BabyBus Kids",
        data: "BabyBus",
        date2: "Contains adsIn-app purchases",
        reviews: "4.3",
        img: "assets/images/tt4.jpeg"),
  ];

  List HomeList3 = [
    Home_modal(
        name: "Truecaller",
        data: "Truecaller",
        date2: "Contains adsIn-app purchases",
        reviews: "4.3",
        img: "assets/images/r3.png"),
    Home_modal(
        name: "Zomato",
        data: "Zomato",
        date2: "Contains ads",
        reviews: "4.5",
        img: "assets/images/r4.jpeg"),
    Home_modal(
        name: "Instagram",
        data: "Instagram",
        date2: "Contains adsIn-app purchases",
        reviews: "4.3",
        img: "assets/images/r5.jpeg"),
    Home_modal(
        name: "Candy Crush Saga",
        data: "King",
        date2: "Contains adsIn-app purchases",
        reviews: "4.4",
        img: "assets/images/tt4.jpeg"),
  ];
  List<Home_modal> view = [
    Home_modal(
      name: "WhatsApp Business",
      data: "WhatsApp LLC",
      date2: "In-app purchases",
      reviews: "4.1",
      img: "assets/images/n1.png",
    ),
    Home_modal(
        name: "Candy Crush Saga",
        data: "King",
        date2: "Contains adsIn-app purchases",
        reviews: "4.4",
        img: "assets/images/tt4.jpeg"),
    Home_modal(
        name: "Hotstar",
        data: "Photo Editor, Video",
        date2: "PicsArt, Inc.",
        reviews: "4.2",
        img: "assets/images/t5.jpeg"),
    Home_modal(
        name: "Picsart AI ",
        data: "Photo Editor, Video",
        date2: "PicsArt, Inc.",
        reviews: "4.2",
        img: "assets/images/t4.jpeg"),
    Home_modal(
        name: "Truecaller",
        data: "Truecaller",
        date2: "Contains adsIn-app purchases",
        reviews: "4.3",
        img: "assets/images/r3.png"),
    Home_modal(
        name: "Zomato",
        data: "Zomato",
        date2: "Contains ads",
        reviews: "4.5",
        img: "assets/images/r4.jpeg"),
  ];

  List<Home_modal> game = [
    Home_modal(
        name: "Warhammer AoS:Realm War",
        data: "Compete in thriling battles",
        img: "assets/images/g1.jpeg"),
    Home_modal(
        name: "Free Fire",
        data: "Garena International I",
        img: "assets/images/g2.jpeg"),
  ];

  List<Home_modal> g1 = [
    Home_modal(
        name: "Kings of Pool ",
        data: "Uken Games",
        reviews: "4.1",
        img: "assets/images/g33.jpeg"),
    Home_modal(
        name: "Candy Crush Saga",
        data: "King",
        date2: "Contains adsIn-app purchases",
        reviews: "4.4",
        img: "assets/images/tt4.jpeg"),

  ];
  List<Home_modal> g2 = [
    Home_modal(
        name: "Barbie Magical",
        data: "Budge Studios",
        date2: "Contains adsIn-app purchases",
        reviews: "4.3",
        img: "assets/images/v22.jpeg"),
    Home_modal(
        name: "Lords Mobile",
        data: "IGG.COM",
        reviews: "4.1",
        img: "assets/images/g4.jpeg")
  ];

  List<Home_modal> app = [
    Home_modal(
        name: "TripIt: Travel Planner",
        data: "TripIt, Inc.",
        img: "assets/images/ap1.jpeg"),
    Home_modal(
        name: "Google Play’s best app",
        data: "games of 2022",
        img: "assets/images/ap2.jpeg"),
  ];
  List<Home_modal> app1 = [
    Home_modal(
        name: "Sky Guide ",
        data: "View Stars Night or Day",
        reviews: "4.1",
        img: "assets/images/c22.jpeg"),
    Home_modal(
        name: "App Store",
        data: "best apps and games ",
        date2: "Contains adsIn-app purchases",
        reviews: "4.4",
        img: "assets/images/ap4.jpeg"),

  ];
  List<Home_modal> app2 = [
    Home_modal(
        name: "Hotstar",
        data: "Photo Editor, Video",
        date2: "PicsArt, Inc.",
        reviews: "4.2",
        img: "assets/images/t5.jpeg"),
    Home_modal(
        name: "Picsart AI ",
        data: "Photo Editor, Video",
        date2: "PicsArt, Inc.",
        reviews: "4.2",
        img: "assets/images/t4.jpeg"),
  ];
}
