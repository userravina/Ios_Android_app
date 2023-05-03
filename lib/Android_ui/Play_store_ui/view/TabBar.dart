import 'package:flutter/material.dart';
import 'package:outcaster/Android_ui/Play_store_ui/provider/Play_Store_provider.dart';
import 'package:outcaster/Android_ui/Play_store_ui/view/Details_Screen.dart';
import 'package:outcaster/Android_ui/Play_store_ui/view/Screen.dart';
import 'package:outcaster/Android_ui/Play_store_ui/view/view_Screen.dart';
import 'package:provider/provider.dart';

class Tabbar_a extends StatefulWidget {
  const Tabbar_a({Key? key}) : super(key: key);

  @override
  State<Tabbar_a> createState() => _Tabbar_aState();
}

class _Tabbar_aState extends State<Tabbar_a> {
  store_provider? pt;
  store_provider? pf;
  int i=0;
  @override
  Widget build(BuildContext context) {
    pt = Provider.of(context, listen: true);
    pf = Provider.of(context, listen: false);
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.menu_outlined),
                    suffixIcon: Icon(Icons.mic_none_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    labelText: 'Search for apps & games',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          toolbarHeight: 110,
          bottom: TabBar(
            indicatorColor: Colors.green.shade900,
            tabs: [
              Tab(
                text: "For you",
              ),
              Tab(
                text: "Top charts",
              ),
              Tab(
                text: "categories",
              ),
            ],
            unselectedLabelColor: Colors.black,
            labelColor: Colors.green.shade900,
          ),
          elevation: 1,
        ),
        body: TabBarView(
          children: [Play_Store(),
            view()],
        ),
        bottomNavigationBar:  BottomNavigationBar(
          currentIndex: i,type: BottomNavigationBarType.shifting,
          onTap: (value) {
            setState(() {
              i=value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.gamepad,size: 30),label: "Game", ),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded,size: 30),label: "Apps",),
            BottomNavigationBarItem(icon: Icon(Icons.local_offer,size: 30),label: "offers",),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark,size: 30),label: "Books",),
          ],
          selectedItemColor: Colors.green.shade900,
          unselectedItemColor: Colors.black38,
        ),
      ),

    ));
  }
}
