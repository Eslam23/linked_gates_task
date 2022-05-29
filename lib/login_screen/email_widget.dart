import 'package:flutter/material.dart';

import '../app_theme.dart';
import '../localization/language_constant.dart';

class email_widget extends StatelessWidget {
  const email_widget({
    Key? key,
    required TextEditingController emailController,
  }) : _emailController = emailController, super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: TextField(
        controller: _emailController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: getTranslated(context, "phone_number_hint")!,
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
        ),
      ),
    );
  }
}
