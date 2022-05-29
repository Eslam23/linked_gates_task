import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../localization/language_constant.dart';
import '../main.dart';

class CircleButton extends StatefulWidget {
  const CircleButton({Key? key}) : super(key: key);

  @override
  State<CircleButton> createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  static late SharedPreferences defLangPref;
  void _changeLanguage(String language) async {
    Locale _locale = await setLocale(language);
    MyApp.setLocale(context, _locale);
  }
  void getInstance() async {
    defLangPref = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    getInstance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double size = 70.0;
    String lang = MyApp.localeLan == const Locale('ar', "SA") ? 'AR' : "EN";

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 40.0,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                  ),
  onPressed: () {
    setState(() {
      MyApp.localeLan == const Locale('ar', "SA") ? _changeLanguage('en'):_changeLanguage('ar');
    });
  },
  icon: Icon( 
    Icons.language,
    size: 28.0,
    color: Colors.white,
  ),
  label: Text(
              lang,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              //color: Colors.black,
            ),
            
),
      ),
    );
  }
}
