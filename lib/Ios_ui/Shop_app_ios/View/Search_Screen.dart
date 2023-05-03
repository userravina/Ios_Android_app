import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../Provider_Shop/Shop_provider.dart';

class Shop_search extends StatefulWidget {
  const Shop_search({Key? key}) : super(key: key);

  @override
  State<Shop_search> createState() => _Shop_searchState();
}

class _Shop_searchState extends State<Shop_search> {
  Shop_provider? pt;
  Shop_provider? pf;

  @override
  Widget build(BuildContext context) {
    pt = Provider.of<Shop_provider>(context, listen: true);
    pf = Provider.of<Shop_provider>(context, listen: false);
    return CupertinoPageScaffold(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 50,
                  width: 335,
                  child: CupertinoTextField(
                    decoration: BoxDecoration(
                        color: CupertinoColors.lightBackgroundGray,
                        borderRadius: BorderRadius.circular(10)),
                    prefix: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        CupertinoIcons.search,
                        color: CupertinoColors.systemGrey,
                      ),
                    ),
                    suffix: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          CupertinoIcons.clear_circled_solid,
                          color: CupertinoColors.systemGrey,
                        )),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 800,
                        width: 360,
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
                                              "${pf!.shop2[index].img}",
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child:
                                            Icon(CupertinoIcons.add_circled)),
                                  ]),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 90),
                                      child: Text("${pf!.shop2[index].Name}")),
                                  Padding(
                                      padding: EdgeInsets.only(left: 90),
                                      child: Text("${pf!.shop2[index].price}"))
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: pf!.shop2.length,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
