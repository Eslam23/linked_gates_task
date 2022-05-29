import 'package:flutter/material.dart';

import '../app_theme.dart';


Widget buildProfileItem(String title , IconData iconImg) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      padding: const EdgeInsets.all(4),
      height: 100,
      decoration: const BoxDecoration(
        color: AppTheme.white,
           borderRadius:  BorderRadius.all(Radius.circular(4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Icon(
                iconImg,
                color: AppTheme.home_page_icon_color,
                size: 28,
              ),
             const  SizedBox(height: 8.0,),
              Text(
                title,
                style:  AppTheme.home_page_item_txt,
                textAlign: TextAlign.center,
              ),
        ],
      )
    );
  }