import 'package:flutter/material.dart';
import 'package:outcaster/Android_ui/settings_ui/provider/a_setting_provider.dart';
import 'package:provider/provider.dart';

class a_seeting_ui extends StatefulWidget {
  const a_seeting_ui({Key? key}) : super(key: key);

  @override
  State<a_seeting_ui> createState() => _a_seeting_uiState();
}

class _a_seeting_uiState extends State<a_seeting_ui> {
  android? pF;
  android? pT;
  @override
  Widget build(BuildContext context) {
    pF=Provider.of(context,listen: false);
    pT=Provider.of(context,listen: true);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Settings UI"),
          elevation: 3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10,top: 10),
                  child: Text(
                    "Common",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.language_outlined),
              title: Text("Language", style: TextStyle(color: Colors.black87)),
              subtitle:
                  Text("English", style: TextStyle(color: Colors.black45)),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              leading: Icon(Icons.cloud_queue),
              title:
                  Text("Environment", style: TextStyle(color: Colors.black87)),
              subtitle:
                  Text("Production", style: TextStyle(color: Colors.black45)),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(padding: EdgeInsets.only(left: 10,top: 10),
              child: Row(
                children: [
                  Text(
                    "Account",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title:
                  Text("Phone Number", style: TextStyle(color: Colors.black87)),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email", style: TextStyle(color: Colors.black87)),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text("Sing out", style: TextStyle(color: Colors.black87)),
            ),
            Divider(
              height: 1,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(padding: EdgeInsets.only(left: 10,top: 10),
              child: Row(
                children: [
                  Text(
                    "Secutiry",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.phonelink_lock),
              trailing: Switch(activeColor: Colors.red,
                value: pT!.a,
                onChanged: (value) {
                    pF!.Change(value);
                },
              ),
              title: Text("Lock app in background",
                  style: TextStyle(color: Colors.black87,)),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              leading: Icon(Icons.fingerprint),
              trailing: Switch(activeColor: Colors.red,
                value: pT!.b,
                onChanged: (value) {
                  pF!.Change2(value);
                },
              ),
              title: Text("User fingerprint",
                  style: TextStyle(color: Colors.black87,)),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              leading: Icon(Icons.lock),
              trailing: Switch(activeColor: Colors.red,
                value: pT!.c,
                onChanged: (value) {
                  pF!.Change3(value);
                },
              ),
              title: Text("Change Password",
                  style: TextStyle(color: Colors.black87,)),
            ),
            Divider(
              height: 1,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10,top: 10),
                  child: Text(
                    "Misc",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.contact_page_sharp),
              title: Text("Terms of Service", style: TextStyle(color: Colors.black87)),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              leading: Icon(Icons.file_copy_rounded),
              title: Text("Open source licenses", style: TextStyle(color: Colors.black87)),
            ),
          ],
        ),
      ),
    ));
  }
}
