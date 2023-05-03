import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../Android_ui/Play_store_ui/provider/Play_Store_provider.dart';

class app_screen_ios extends StatefulWidget {
  const app_screen_ios({Key? key}) : super(key: key);

  @override
  State<app_screen_ios> createState() => _app_screen_iosState();
}

class _app_screen_iosState extends State<app_screen_ios> {
  store_provider? pt;
  store_provider? pf;
  @override
  Widget build(BuildContext context) {
    pt = Provider.of<store_provider>(context, listen: true);
    pf = Provider.of<store_provider>(context, listen: false);
    return CupertinoPageScaffold(child:  Padding(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Apps",
                    style: TextStyle(
                        letterSpacing: 1,
                        color: CupertinoColors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(500),
                      child: Image.asset("assets/images/insta10.jpeg",
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    height: 1,
                    width: 340,
                    color: CupertinoColors.opaqueSeparator,
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Text(
                      "NEW WITH SIRI",
                      style: TextStyle(
                          color: CupertinoColors.activeBlue, fontSize: 11),
                    )
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(),
                child: Row(
                  children: [
                    SizedBox(
                      height: 270,
                      width: 340,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "${pf!.app[index].name}",
                                style: TextStyle(color: CupertinoColors.black),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "${pf!.app[index].data}",
                                style: TextStyle(
                                    color: CupertinoColors.systemGrey),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                height: 200,
                                width: 310,
                                margin: EdgeInsets.only(right: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset("${pf!.app[index].img}",
                                      fit: BoxFit.cover),
                                ),
                              )
                            ],
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: pf!.app.length,
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    height: 1,
                    width: 340,
                    color: CupertinoColors.opaqueSeparator,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "12 Great Apps for ios 12",
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: CupertinoColors.activeBlue, fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 500,
              width: 350,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                        AssetImage("${pf!.app1[index].img}"),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 84,
                                  width: 230,
                                  child: Column(children: [
                                    SizedBox(
                                      height: 11,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "${pf!.app1[index].name}",
                                          style: TextStyle(
                                              color: CupertinoColors.black,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "${pf!.app1[index].data}",
                                          style: TextStyle(
                                              color:
                                              CupertinoColors.systemGrey),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Row(
                                            children: [
                                              Text("${pf!.app1[index].reviews}"),
                                              Icon(
                                                CupertinoIcons.star,
                                                color: CupertinoColors
                                                    .inactiveGray,
                                                size: 15,
                                              ),
                                            ],
                                          )),
                                    ),
                                  ]),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 10),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "${pf!.app2[index].img}"),
                                            fit: BoxFit.fill)),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 84,
                                      width: 250,
                                      child: Column(children: [
                                        SizedBox(
                                          height: 11,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "${pf!.app2[index].name}",
                                              style: TextStyle(
                                                  color: CupertinoColors.black,
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "${pf!.app2[index].data}",
                                              style: TextStyle(
                                                  color: CupertinoColors
                                                      .systemGrey),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Align(
                                              alignment: Alignment.center,
                                              child: Row(
                                                children: [
                                                  Text(
                                                      "${pf!.app2[index].reviews}"),
                                                  Icon(
                                                    CupertinoIcons.star,
                                                    color: CupertinoColors
                                                        .inactiveGray,
                                                    size: 15,
                                                  ),
                                                ],
                                              )),
                                        ),
                                      ]),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  );
                },
                itemCount: pf!.app2.length,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
