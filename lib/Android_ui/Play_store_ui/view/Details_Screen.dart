import 'package:flutter/material.dart';
import 'package:outcaster/Android_ui/Play_store_ui/provider/Play_Store_provider.dart';
import 'package:provider/provider.dart';

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  store_provider? provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context, listen: false);
    int d = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54,
          elevation: 0,
          leading: Padding(
              padding: EdgeInsets.only(left: 20),
              child: InkWell(onTap: () {
                Navigator.pushNamed(context, '/');
              },child: Icon(Icons.arrow_back, color: Colors.black))),
          actions: [
            Icon(Icons.search, color: Colors.black),
            Padding(padding: EdgeInsets.only(right: 20),child: Icon(Icons.more_vert_outlined, color: Colors.black))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
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
                              image: AssetImage("${provider!.HomeList[d].img}"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 250,
                        child: Column(children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "${provider!.HomeList[d].name}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "${provider!.HomeList[d].data}",
                              style: TextStyle(color: Colors.green.shade700),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "${provider!.HomeList[d].date2}",
                              style: TextStyle(color: Colors.grey.shade700),
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Row(
                            children: [
                              Text(
                                "${provider!.HomeList[d].reviews}",
                                style: TextStyle(color: Colors.grey.shade700),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey.shade400,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "95k reviews",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 1,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.download_for_offline_outlined,
                                    color: Colors.grey.shade500,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "24 MB",
                              style: TextStyle(color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 1,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "500M+",
                                    style:
                                        TextStyle(color: Colors.grey.shade700),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Downloads",
                              style: TextStyle(color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.green.shade700,
                    borderRadius: BorderRadius.circular(10)),
                child: Align(
                    alignment: Alignment.center,
                    child:
                        Text("Install", style: TextStyle(color: Colors.white))),
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 210,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            height: 210,
                            width: 310,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage("${provider!.w1[index]}"),
                                  fit: BoxFit.cover,
                                )),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: provider!.w1.length,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text("About this app",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                        height: 150,
                        width: 300,
                        child: Text(
                          "WhatsApp Business from Meta WhatsApp Business enables you to have a business presence on WhatsApp, communicate more efficiently with your customers, and help you grow your business. If you have separate business and personal phone numbers, you can have both WhatsApp Business and WhatsApp Messenger...",
                          style: TextStyle(color: Colors.grey.shade600),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
