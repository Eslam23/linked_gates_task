// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const Color home_page_appbar = Color(0xFF1f174b);
  static const Color home_page_price_container = Color(0xFF183cc4);
  static const Color home_page_body = Color(0xFFc5c1c2);
  static const Color home_page_icon_color = Color(0xFF46bfc9);
  static const Color home_page_item_text_color = Color(0xFF273480);
  static const Color white = Color(0xFFFFFFFF);
  //static const Color login_pg_grad_top_color= Color(0xFF09102c);
  static const Color login_pg_grad_top_color= Color(0xFF1f174b);
  static const Color login_pg_grad_botom_color= Color(0xFF2e44bd);
  static const Color login_pg_tf_underline1= Color(0xFF7c82af);
  static const Color login_pg_tf_focus_underline= Color(0xFF7c82af);
  static const Color login_pg_tf_border_color= Color(0xFF7c82af);
  static const Color login_pg_hint_color= Color(0xFF7c82af);
  static const Color password_icon_color= Color(0xFF7c82af);
  static const Color login_background_color= Color(0xFF3da3b4);
  static const Color signup_txt_color= Color(0xFF09102c);
  

   



  static const TextStyle profie_text = TextStyle(
                color: AppTheme.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              );
  static const price_txt = TextStyle(
                color: AppTheme.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              );
  static const home_page_item_txt = TextStyle(
                color: AppTheme.home_page_item_text_color,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              );
  static const login_delivey_txt = TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              );
  static const forget_pass_style = TextStyle(
                color: Color(0xFF7c82af),
                fontWeight: FontWeight.bold,
                fontSize: 14,
              );


              

  static const login_hint_style = TextStyle(fontSize: 18.0, color: AppTheme.login_pg_hint_color);

  static const login_btn_style = TextStyle(fontSize: 14);
            



              

}