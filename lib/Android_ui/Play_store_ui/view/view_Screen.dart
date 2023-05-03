import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/Play_Store_provider.dart';

class view extends StatefulWidget {
  const view({Key? key}) : super(key: key);

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  store_provider? pt;
  store_provider? pf;

  @override
  Widget build(BuildContext context) {
    pt = Provider.of<store_provider>(context, listen: true);
    pf = Provider.of<store_provider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "Show installed apps",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )),
          SizedBox(
            height: 500,
            width: 350,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
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
                                    image: AssetImage("${pf!.view[index].img}"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 84,
                              width: 250,
                              child: Column(children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "${pf!.view[index].name}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "${pf!.view[index].data}",
                                    style:
                                        TextStyle(color: Colors.green.shade700),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "${pf!.view[index].date2}",
                                    style:
                                        TextStyle(color: Colors.grey.shade700),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        Text("${pf!.view[index].reviews}"),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey.shade400,
                                          size: 15,
                                        ),
                                      ],
                                    )),
                              ]),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                );
              },
              itemCount: pf!.view.length,
            ),
          )
        ],
      ),
    ));
  }
}
