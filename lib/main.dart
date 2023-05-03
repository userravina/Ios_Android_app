import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster/Android_ui/Play_store_ui/provider/Play_Store_provider.dart';
import 'package:outcaster/Android_ui/Play_store_ui/view/Details_Screen.dart';
import 'package:outcaster/Android_ui/Play_store_ui/view/Screen.dart';
import 'package:outcaster/Android_ui/Play_store_ui/view/TabBar.dart';
import 'package:outcaster/Android_ui/Play_store_ui/view/view_Screen.dart';
import 'package:outcaster/Android_ui/Stepper_ui/view/Screen.dart';
import 'package:outcaster/Android_ui/settings_ui/provider/a_setting_provider.dart';
import 'package:outcaster/Android_ui/settings_ui/view/Screen.dart';
import 'package:outcaster/Ios_ui/I_setting_ui/view/Screen.dart';
import 'package:outcaster/Ios_ui/Play_Store_ios_ui/view/Bottom_bar_playstore.dart';
import 'package:outcaster/Ios_ui/Shop_app_ios/Provider_Shop/Shop_provider.dart';
import 'package:outcaster/Ios_ui/Shop_app_ios/View/Tab_bar.dart';
import 'package:provider/provider.dart';

import 'Android_ui/Stepper_ui/Stepper_provider/S_and_provider.dart';
import 'Ios_ui/Play_Store_ios_ui/view/play_Screen.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [

        // settng provider

        ChangeNotifierProvider(
          create: (context) => android(),
        ),

        // play store provider

        ChangeNotifierProvider(
          create: (context) => store_provider(),
        ),

        // Stepper provider

        ChangeNotifierProvider(
          create: (context) => provider(),
        ),


        // Shop provider

        ChangeNotifierProvider(
          create: (context) => Shop_provider(),
        ),
      ],

      child: Platform.isIOS
          ? CupertinoApp(
              debugShowCheckedModeBanner: false,
              theme: CupertinoThemeData(brightness: Brightness.light),
              routes: {
                 '/': (p0) => I_setting_ui(),
                 '/': (p0) => Play_Store_ios(),
                 '/': (p0) => Bottom_playstore(),
                  '/': (p0) => Stepper_and(),
                  '/': (p0) => Shop_app_ios(),
              },
            )
          : MaterialApp(
              debugShowCheckedModeBanner: false,

              routes: {
                // setting ui
                '/': (context) => a_seeting_ui(),
                // play store ui
                 'p': (context) => Play_Store(),
                '/': (context) => Tabbar_a(),
                'detail': (context) => detail(),
                'view': (context) => view(),
                '/': (p0) => Stepper_and(),
              },
            ),
    ),
  );
}
