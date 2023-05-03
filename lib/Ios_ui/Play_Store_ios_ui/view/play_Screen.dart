import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../Android_ui/Play_store_ui/provider/Play_Store_provider.dart';

class Play_Store_ios extends StatefulWidget {
  const Play_Store_ios({Key? key}) : super(key: key);

  @override
  State<Play_Store_ios> createState() => _Play_Store_iosState();
}

class _Play_Store_iosState extends State<Play_Store_ios> {
  store_provider? pt;
  store_provider? pf;

  @override
  Widget build(BuildContext context) {
    pt = Provider.of<store_provider>(context, listen: true);
    pf = Provider.of<store_provider>(context, listen: false);
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding:
                    EdgeInsets.only(top: 50, right: 10, left: 10, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      "WEDNESDAY,SEPTEMBER 12",
                      style: TextStyle(
                        letterSpacing: 1,
                        color: CupertinoColors.inactiveGray,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(
                        letterSpacing: 1,
                        color: CupertinoColors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(500),
                      child: Image.asset("assets/images/insta10.jpeg",
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 370,
                        width: 330,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: CupertinoColors.systemGrey,
                            blurRadius: 10,
                            offset: Offset(-0, 3),
                          ),
                        ]),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("assets/images/s1.jpg",
                                fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "SERIOUSLY?",
                          style: TextStyle(
                              color: CupertinoColors.extraLightBackgroundGray),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 40),
                        child: Text(
                          "Battlefield Games",
                          style: TextStyle(
                              color: CupertinoColors.white, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 290),
                        child: Text(
                          "Anyting oan happen in sports\nGames prove its Top to play",
                          style: TextStyle(
                              color: CupertinoColors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 370,
                        width: 330,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: CupertinoColors.systemGrey,
                            blurRadius: 10,
                          ),
                        ]),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("assets/images/s44.jpg",
                                fit: BoxFit.fill)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
