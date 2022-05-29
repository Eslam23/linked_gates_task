// ignore_for_file: use_build_context_synchronously, avoid_web_libraries_in_flutter, unused_import, no_leading_underscores_for_local_identifiers, sort_child_properties_last, override_on_non_overriding_member, avoid_returning_null_for_void, camel_case_types

import 'dart:html';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task/app_theme.dart';
import 'package:task/login_screen/firebase_logic.dart';
import 'package:task/login_screen/login_btn_widget.dart';
import 'package:task/login_screen/signup_forget_pass_widget.dart';
import '../home_page_screen/home_page_screen.dart';
import '../localization/language_constant.dart';
import 'background_img_widget.dart';
import 'email_widget.dart';
import 'language_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  
  bool _isObscure = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      
      body: Stack(
        children: <Widget>[
        const background_image_widget(),
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              color: AppTheme.white,
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    AppTheme.login_pg_grad_top_color,
                    AppTheme.login_pg_grad_botom_color,
                  ],
                  stops: [
                    0.0,
                    1.0
                  ])),
         child: Column(
           children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                         CircleButton(),
                        
                      ],
                    ),
                    const SizedBox(height: 20.0,),
                    Image.asset('assets/images/logo.jpg'),
                    const SizedBox(height: 14.0,),
                    Text(
                      getTranslated(context, "Delivery")!,
                       style: AppTheme.login_delivey_txt,
            ),
             const SizedBox(height: 14.0,),
             email_widget(emailController: _emailController),
             const SizedBox(height: 14.0,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:16.0),
               child: TextField(
                 controller: _passwordController,
                 obscureText:  _isObscure,
                 decoration: InputDecoration(
                   hintText: getTranslated(context, "password_hint")!,
                   enabledBorder: const UnderlineInputBorder(      
                    borderSide: BorderSide(color:AppTheme.login_pg_tf_underline1),   
                   ),  
                  focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.login_pg_tf_focus_underline),
                   ),
                   border: const UnderlineInputBorder(
                   borderSide: BorderSide(color: AppTheme.login_pg_tf_border_color),
                  ),
                   hintStyle: AppTheme.login_hint_style,
                   
                    suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                  color: AppTheme.password_icon_color,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
                 ),
               ),
             ),
             const SizedBox(height: 16.0,),
             login_btn_widget(emailController: _emailController, passwordController: _passwordController),
    const SizedBox(height: 24.0,),
    sign_up_forget_pass_widget()

                  ]),         
                  
        )
      ]),  
    );

    
  }
}





