// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:task/app_theme.dart';

import '../localization/language_constant.dart';
import 'build_profile_item_widget.dart';
class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70.0,
          color: AppTheme.home_page_appbar,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal :8.0),
                child: Image.asset('assets/images/logo_english1.png', width: 70,height: 60.0,),
              ),
              const SizedBox(width: 16.0,),
               Text( 'profile',
                    // getTranslated(context, "Profile")!,
              style:  AppTheme.profie_text,
            ),
            ],
          ),
        ),
        Container(
          height: 120.0,
          color: AppTheme.home_page_price_container,
          child: const Center(
            child:  Text(
                      '0.00 LE',
              style:  AppTheme.price_txt,

              //color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 6.0,),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: 400.0,
            color: AppTheme.home_page_body,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                //padding: EdgeInsets.only(bottom: 10),
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                children: [
                      buildProfileItem(
                        getTranslated(context, "Add_a_Branch")!,
                       //'Add a Branch',
                      Icons.add_home),
                      buildProfileItem(
                        getTranslated(context, "management_control")!,
                       // 'Management Control',
                      Icons.manage_accounts),
                      buildProfileItem(
                        getTranslated(context, "payment")!,
                        //'Payment',
                      Icons.payment),
                      buildProfileItem(
                        getTranslated(context, "notifications")!,
                       // 'Notifications',
                      Icons.notifications),
                      buildProfileItem(
                        getTranslated(context, "settings")!,
                        //'Settings',
                      Icons.settings),
                      buildProfileItem(
                        getTranslated(context, "promotions")!,
                        //'Promotions',
                      Icons.keyboard_voice),
                ]  
                         ),
              ),
          ),
        ),
      ],
    );
    
  }
  
}