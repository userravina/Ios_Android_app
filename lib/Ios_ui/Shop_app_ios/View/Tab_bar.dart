import 'package:flutter/cupertino.dart';
import 'package:outcaster/Ios_ui/Shop_app_ios/Provider_Shop/Shop_provider.dart';
import 'package:outcaster/Ios_ui/Shop_app_ios/View/Cart_Screen.dart';
import 'package:outcaster/Ios_ui/Shop_app_ios/View/Home_Screen.dart';
import 'package:outcaster/Ios_ui/Shop_app_ios/View/Search_Screen.dart';
import 'package:provider/provider.dart';

class Shop_app_ios extends StatefulWidget {
  const Shop_app_ios({Key? key}) : super(key: key);

  @override
  State<Shop_app_ios> createState() => _Shop_app_iosState();
}

class _Shop_app_iosState extends State<Shop_app_ios> {
  Shop_provider? pt;
  Shop_provider? pf;

  @override
  Widget build(BuildContext context) {
    pt = Provider.of<Shop_provider>(context, listen: true);
    pf = Provider.of<Shop_provider>(context, listen: false);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: 65,
        onTap: (value) {
          setState(() {
            pf!.i = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart),
            label: 'Cart',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return IndexedStack(
                index: pt!.i,
                children: [Shop_home(), Shop_search(), Shop_cart()]);
          },
        );
      },
    );
  }
}
