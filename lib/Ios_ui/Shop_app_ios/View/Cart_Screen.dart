import 'package:flutter/cupertino.dart';
import 'package:outcaster/Ios_ui/Shop_app_ios/Modal_shop/modal.dart';
import 'package:outcaster/Ios_ui/Shop_app_ios/Provider_Shop/Shop_provider.dart';
import 'package:provider/provider.dart';

class Shop_cart extends StatefulWidget {
  const Shop_cart({Key? key}) : super(key: key);

  @override
  State<Shop_cart> createState() => _Shop_cartState();
}

class _Shop_cartState extends State<Shop_cart> {
  TextEditingController name = TextEditingController(text: "Name");
  TextEditingController email = TextEditingController(text: "Email");
  TextEditingController location = TextEditingController(text: "Location");
  Shop_provider? pT;
  Shop_provider? pF;

  @override
  Widget build(BuildContext context) {
    pT = Provider.of<Shop_provider>(context, listen: true);
    pF = Provider.of<Shop_provider>(context, listen: false);

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
                      "Shopping Cart",
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
                  TabsFields(icon: CupertinoIcons.person_alt, controller: name),
                  Padding(padding: EdgeInsets.only(top: 40),
                    child: TabsFields(
                        icon: CupertinoIcons.mail_solid, controller: email),
                  ),
                  Padding(padding: EdgeInsets.only(top: 80),
                    child: TabsFields(
                        icon: CupertinoIcons.location_solid,
                        controller: location),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 160,left: 10,right: 10),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.stopwatch_fill,
                          color: CupertinoColors.systemGrey,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Delivery time",
                          style: TextStyle(
                              color: CupertinoColors.systemGrey, fontSize: 15),
                        ),
                        Spacer(),
                        Text(
                          "${pT!.date.day} / ${pT!.date.month} / ${pT!.date.year}  ${pT!.date.hour} : ${pT!.date.minute}",
                          style: TextStyle(
                              color: CupertinoColors.systemGrey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 180),
                    child: Container(
                      height: 220,
                      child: CupertinoDatePicker(
                        onDateTimeChanged: (value) {
                          DateTime? temp;
                          temp = value;
                          pF!.datechange(temp);
                        },
                        mode: CupertinoDatePickerMode.dateAndTime,
                        initialDateTime: DateTime.now(),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 360),
                    child: SizedBox(
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
                                                "${pF!.shop3[index].img}",
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
                                        child: Text("${pF!.shop3[index].Name}")),
                                    Padding(
                                        padding: EdgeInsets.only(left: 90),
                                        child: Text("${pF!.shop3[index].price}"))
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: pF!.shop3.length,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 650,right: 10),

                    child: Container(height: 150,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Total  29,250",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: CupertinoColors.darkBackgroundGray),)
                        ],
                      ),),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  Padding TabsFields({
    TextEditingController? controller,
    IconData? icon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
      child: CupertinoTextField(
        prefix: Icon(
          icon,
          color: CupertinoColors.systemGrey,
          size: 20,
        ),
        style: TextStyle(color: CupertinoColors.systemGrey, fontSize: 15),
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: CupertinoColors.systemGrey))),
      ),
    );
  }
}
