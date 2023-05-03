import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../Provider_Shop/Shop_provider.dart';

class Shop_home extends StatefulWidget {
  const Shop_home({Key? key}) : super(key: key);

  @override
  State<Shop_home> createState() => _Shop_homeState();
}

class _Shop_homeState extends State<Shop_home> {
  Shop_provider? pt;
  Shop_provider? pf;

  @override
  Widget build(BuildContext context) {
    pt = Provider.of<Shop_provider>(context, listen: true);
    pf = Provider.of<Shop_provider>(context, listen: false);
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 70, right: 10),
                    child: Text(
                      "Cupertino Store",
                      style: TextStyle(
                          color: CupertinoColors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 800,
                        width: 360,
                        color: CupertinoColors.extraLightBackgroundGray,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 800,
                    width: 360,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          height: 80,
                          width: 360,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Stack(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        margin: EdgeInsets.only(right: 10),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                              "${pf!.shop[index].img}",
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Icon(
                                          CupertinoIcons.add_circled,
                                        )),
                                  ]),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 90),
                                      child: Text("${pf!.shop[index].Name}")),
                                  Padding(
                                      padding: EdgeInsets.only(left: 90),
                                      child: Text("${pf!.shop[index].price}"))
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: pf!.shop.length,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
// Column(crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("${pf!.shop[index].Name}"),
// Text("${pf!.shop[index].price}")
// ],
