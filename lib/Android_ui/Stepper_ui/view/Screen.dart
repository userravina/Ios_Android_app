import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Stepper_provider/S_and_provider.dart';

class Stepper_and extends StatefulWidget {
  const Stepper_and({Key? key}) : super(key: key);

  @override
  State<Stepper_and> createState() => _Stepper_andState();
}

class _Stepper_andState extends State<Stepper_and> {
  provider? pf;
  provider? pT;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<provider>(context, listen: false);
    pT = Provider.of<provider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0,
          title: Text('Stepper App'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Theme(
                data: ThemeData(
                  canvasColor: Colors.red,
                  colorScheme: Theme.of(context).colorScheme.copyWith(
                        primary: Colors.red,
                        background: Colors.red,
                        secondary: Colors.red,
                      ),
                ),
                child: SizedBox(
                  height: 580,
                  child: Stepper(
                    steps: [
                      Step(
                          title: Text("personal info"),
                          content: Column(
                            children: [
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Name',
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Last Name',
                                ),
                              )
                            ],
                          )),
                      Step(
                          title: Text("Contact"),
                          content: Column(
                            children: [
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Contact',
                                ),
                              ),
                            ],
                          )),
                      Step(
                          title: Text("Address"),
                          content: Column(
                            children: [
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Address',
                                ),
                              ),
                            ],
                          )),
                      Step(
                          title: Text("card details"),
                          content: Column(
                            children: [
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'card details',
                                ),
                              ),
                            ],
                          )),
                      Step(
                          title: Text("veryfication"),
                          content: Column(
                            children: [
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'upload Details',
                                ),
                              ),
                            ],
                          )),
                    ],
                    currentStep: pT!.selecteIndex,
                    onStepContinue: () {
                      pf!.ChangContinue();
                    },
                    onStepCancel: () {
                      pf!.Changcalean();
                    },
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
