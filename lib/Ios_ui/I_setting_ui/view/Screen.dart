import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../Android_ui/settings_ui/provider/a_setting_provider.dart';

class I_setting_ui extends StatefulWidget {
  const I_setting_ui({Key? key}) : super(key: key);

  @override
  State<I_setting_ui> createState() => _I_setting_uiState();
}

class _I_setting_uiState extends State<I_setting_ui> {
  android? pF;
  android? pT;
  @override
  Widget build(BuildContext context) {
    pF=Provider.of(context,listen: false);
    pT=Provider.of(context,listen: true);
    return CupertinoPageScaffold(
      child: Column(children: [
        CupertinoListTile(
          title: Text("Common",
              style:
                  TextStyle(color: CupertinoColors.inactiveGray, fontSize: 15)),
          backgroundColor: CupertinoColors.extraLightBackgroundGray,
        ),
        CupertinoListTile(
          title: Text(
            "Language",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: CupertinoColors.label,
            ),
          ),
          leading:
              Icon(CupertinoIcons.globe, color: CupertinoColors.inactiveGray),
          trailing: Row(
            children: [
              Text("English",
                  style: TextStyle(
                      color: CupertinoColors.inactiveGray, fontSize: 15)),
              Icon(
                CupertinoIcons.chevron_right,
                color: CupertinoColors.inactiveGray,
                size: 20,
              )
            ],
          ),
        ),
        Container(
          height: 1,
          width: 320,
          color: CupertinoColors.extraLightBackgroundGray,
        ),
        CupertinoListTile(
          title: Text(
            "Environment",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: CupertinoColors.label,
            ),
          ),
          leading:
              Icon(CupertinoIcons.cloud, color: CupertinoColors.inactiveGray),
          trailing: Row(
            children: [
              Text("Production",
                  style: TextStyle(
                      color: CupertinoColors.inactiveGray, fontSize: 15)),
              Icon(
                CupertinoIcons.chevron_right,
                color: CupertinoColors.inactiveGray,
                size: 20,
              )
            ],
          ),
        ),
        CupertinoListTile(
          title: Text("Account",
              style:
                  TextStyle(color: CupertinoColors.inactiveGray, fontSize: 15)),
          backgroundColor: CupertinoColors.extraLightBackgroundGray,
        ),
        CupertinoListTile(
          title: Text(
            "Phone number",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: CupertinoColors.label,
            ),
          ),
          leading:
              Icon(CupertinoIcons.phone, color: CupertinoColors.inactiveGray),
          trailing: Row(
            children: [
              Icon(
                CupertinoIcons.chevron_right,
                color: CupertinoColors.inactiveGray,
                size: 20,
              )
            ],
          ),
        ),
        Container(
          height: 1,
          width: 320,
          color: CupertinoColors.extraLightBackgroundGray,
        ),
        CupertinoListTile(
          title: Text(
            "Email",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: CupertinoColors.label,
            ),
          ),
          leading: Icon(CupertinoIcons.envelope,
              color: CupertinoColors.inactiveGray),
          trailing: Row(
            children: [
              Icon(
                CupertinoIcons.chevron_right,
                color: CupertinoColors.inactiveGray,
                size: 20,
              )
            ],
          ),
        ),
        Container(
          height: 1,
          width: 320,
          color: CupertinoColors.extraLightBackgroundGray,
        ),
        CupertinoListTile(
          title: Text(
            "Sign out",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: CupertinoColors.label,
            ),
          ),
          leading: Icon(CupertinoIcons.square_arrow_right,
              color: CupertinoColors.inactiveGray),
          trailing: Row(
            children: [
              Icon(
                CupertinoIcons.chevron_right,
                color: CupertinoColors.inactiveGray,
                size: 20,
              )
            ],
          ),
        ),
        CupertinoListTile(
          title: Text("Secutiry",
              style:
                  TextStyle(color: CupertinoColors.inactiveGray, fontSize: 15)),
          backgroundColor: CupertinoColors.extraLightBackgroundGray,
        ),
        CupertinoListTile(
          title: Text(
            "Lock app in background",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: CupertinoColors.label,
            ),
          ),
          leading: Icon(CupertinoIcons.device_phone_portrait,
              color: CupertinoColors.inactiveGray),
          trailing: CupertinoSwitch(
            activeColor: CupertinoColors.destructiveRed,
            value: pT!.a,
            onChanged: (value) {
              pT!.Change(value);
            },
          ),
        ),     CupertinoListTile(
          title: Text(
            "User fingerprint",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: CupertinoColors.label,
            ),
          ),
          leading: Icon(CupertinoIcons.hand_raised,
              color: CupertinoColors.inactiveGray),
          trailing: CupertinoSwitch(
            activeColor: CupertinoColors.destructiveRed,
            value: pT!.b,
            onChanged: (value) {
              pT!.Change2(value);
            },
          ),
        ),     CupertinoListTile(
          title: Text(
            "Change password",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: CupertinoColors.label,
            ),
          ),
          leading: Icon(CupertinoIcons.lock_fill,
              color: CupertinoColors.inactiveGray),
          trailing: CupertinoSwitch(
            activeColor: CupertinoColors.destructiveRed,
            value: pT!.c,
            onChanged: (value) {
              pT!.Change3(value);
            },
          ),
        ), CupertinoListTile(
          title: Text("Misc",
              style:
              TextStyle(color: CupertinoColors.inactiveGray, fontSize: 15)),
          backgroundColor: CupertinoColors.extraLightBackgroundGray,
        ),CupertinoListTile(
          title: Text(
            "Terms of Service",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: CupertinoColors.label,
            ),
          ),
          leading: Icon(CupertinoIcons.doc_text,
              color: CupertinoColors.inactiveGray),
          trailing: Row(
            children: [
              Icon(
                CupertinoIcons.chevron_right,
                color: CupertinoColors.inactiveGray,
                size: 20,
              )
            ],
          ),
        ),
        CupertinoListTile(
          title: Text(
            "Open souce licenses",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: CupertinoColors.label,
            ),
          ),
          leading: Icon(CupertinoIcons.square_fill_on_square_fill,
              color: CupertinoColors.inactiveGray),
          trailing: Row(
            children: [
              Icon(
                CupertinoIcons.chevron_right,
                color: CupertinoColors.inactiveGray,
                size: 20,
              )
            ],
          ),
        ),
      ]),
      navigationBar: CupertinoNavigationBar(
          middle: Text("Settings UI"),
          backgroundColor: CupertinoColors.systemRed),
    );
  }
}
