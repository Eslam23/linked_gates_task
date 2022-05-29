// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../app_theme.dart';
import '../home_page_screen/home_page_screen.dart';
import '../localization/language_constant.dart';
import 'firebase_logic.dart';

class login_btn_widget extends StatelessWidget {
  const login_btn_widget({
    Key? key,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) : _emailController = emailController, _passwordController = passwordController, super(key: key);

  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            child: Text(
            getTranslated(context, "login")!,
           style: AppTheme.login_btn_style,
           ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(AppTheme.white),
        backgroundColor: MaterialStateProperty.all<Color>(AppTheme.login_background_color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            //side: BorderSide(color: Colors.red)
          )
        )
      ),
      onPressed: () async{
        User? user = await AccessFirebase.loginUsingPhonePassword(phone: _emailController.text, password: _passwordController.text, context: context);
        if(user!= null){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const HomePageScreen()));
        } 
      }
    );
  }
}
