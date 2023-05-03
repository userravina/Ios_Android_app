import 'package:flutter/material.dart';
import 'package:outcaster/Android_ui/Play_store_ui/Play_store_modal/Home_modal.dart';
import 'package:outcaster/Android_ui/Play_store_ui/provider/Play_Store_provider.dart';
import 'package:provider/provider.dart';

class Play_Store extends StatefulWidget {
  const Play_Store({Key? key}) : super(key: key);

  @override
  State<Play_Store> createState() => _Play_StoreState();
}

class _Play_StoreState extends State<Play_Store> {
  store_provider? pt;
  store_provider? pf;

  @override
  Widget build(BuildContext context) {
    pt = Provider.of<store_provider>(context, listen: true);
    pf = Provider.of<store_provider>(context, listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      "Recommended for you",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(
                    height: 150,
                    width: 340,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "detail",
                                  arguments: index);
                            },
                            child: Container(
                              height: 90,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SizedBox(height: 8),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 25,
                                      ),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "${pf!.HomeList[index].img}"),
                                                fit: BoxFit.fill)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 100,
                                      width: 180,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "${pf!.HomeList[index].name}",
                                              style: TextStyle(
                                                  color: Colors.grey.shade700),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "${pf!.HomeList[index].reviews}",
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade700),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.grey.shade400,
                                                  size: 15,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: pf!.HomeList.length,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      "New & updated apps",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(
                    height: 149,
                    width: 340,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "detail",
                                  arguments: index);
                            },
                            child: Container(
                              height: 90,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SizedBox(height: 8),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 25,
                                      ),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "${pf!.HomeList2[index].img}"),
                                                fit: BoxFit.fill)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 100,
                                      width: 180,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "${pf!.HomeList2[index].name}",
                                              style: TextStyle(
                                                  color: Colors.grey.shade700),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "${pf!.HomeList2[index].reviews}",
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade700),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.grey.shade400,
                                                  size: 15,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: pf!.HomeList2.length,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(
                    height: 190,
                    width: 340,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "detail",
                                  arguments: index);
                            },
                            child: Container(
                              height: 90,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SizedBox(height: 8),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 25,
                                      ),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "${pf!.HomeList3[index].img}"),
                                                fit: BoxFit.fill)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 100,
                                      width: 180,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "${pf!.HomeList3[index].name}",
                                              style: TextStyle(
                                                  color: Colors.grey.shade700),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 10),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "${pf!.HomeList3[index].reviews}",
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade700),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.grey.shade400,
                                                  size: 15,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: pf!.HomeList3.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
