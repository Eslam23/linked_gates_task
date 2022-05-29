import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'home_page_screen/home_page_screen.dart';
import 'localization/app_localization.dart';
import 'localization/language_constant.dart';
import 'login_screen/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static Locale? localeLan;
  MyApp({Key? key}) : super(key: key);
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocale(newLocale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // initialize firebase
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
  setLocale(Locale locale) {
    setState(() {
      MyApp.localeLan = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        MyApp.localeLan = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (MyApp.localeLan != null) {
      setState(() {});
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: MyApp.localeLan,
      supportedLocales: const [
        Locale("en", "US"),
        Locale("ar", "SA"),
      ],
      localizationsDelegates: const [
        AppLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale!.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      home: Scaffold(
        body:
        FutureBuilder(
          future: _initializeFirebase(),
          builder: (context,snapshot){
            if(snapshot.connectionState == ConnectionState.done)
            {
              return const LoginScreen();
            }
            else 
            {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }
          ),
        
        // LoginScreen(),
        //HomePageScreen(),
        //LoginScreen(),
        //body: PlaceScreen(placeModel)
        //getTranslated(context, "our_app_for_business")! /*HomePageScreen()*/,
      ),
    );
  }
}
