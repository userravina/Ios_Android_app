import 'package:flutter/cupertino.dart';
import 'package:outcaster/Ios_ui/Play_Store_ios_ui/view/App_Screen.dart';
import 'package:outcaster/Ios_ui/Play_Store_ios_ui/view/Game_Screen.dart';
import 'package:outcaster/Ios_ui/Play_Store_ios_ui/view/play_Screen.dart';
import 'package:provider/provider.dart';

import '../../../Android_ui/Play_store_ui/provider/Play_Store_provider.dart';

class Bottom_playstore extends StatefulWidget {
  const Bottom_playstore({Key? key}) : super(key: key);

  @override
  State<Bottom_playstore> createState() => _Bottom_playstoreState();
}

class _Bottom_playstoreState extends State<Bottom_playstore> {
  store_provider? pt;
  store_provider? pf;

  @override
  Widget build(BuildContext context) {
    pt = Provider.of<store_provider>(context, listen: true);
    pf = Provider.of<store_provider>(context, listen: false);
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
            icon: Icon(CupertinoIcons.today_fill),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.game_controller_solid),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.app_fill),
            label: 'Apps',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_arrow_down_fill),
            label: 'updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return IndexedStack(
                index: pt!.i, children: [Play_Store_ios(),
              Game_Screen(),app_screen_ios()]);
          },
        );
      },
    );
  }
}
