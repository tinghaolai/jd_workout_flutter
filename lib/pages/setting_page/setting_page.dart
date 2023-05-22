import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workout_app/pages/login_page/login_page.dart';
import 'package:workout_app/pages/setting_page/componenet/setting_buttons.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key});

  void _logout(BuildContext context) async {
    SharedPreferences.getInstance().then((prefs) {
      prefs.remove("jwtToken");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(children: [
          Expanded(
              flex: 5,
              child: Container()
          ),
          Expanded(
            flex: 5,
              child: SettingButtons(),
          ),
          Expanded(
              flex: 5,
              child: Container()
          ),
        ]),
      )
    );
  }
}
