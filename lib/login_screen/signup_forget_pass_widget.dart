import 'package:flutter/material.dart';

import '../app_theme.dart';
import '../localization/language_constant.dart';

class sign_up_forget_pass_widget extends StatelessWidget {
  const sign_up_forget_pass_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
        child: Text(
          getTranslated(context, "sign_up")!,
          style: AppTheme.login_btn_style,
        ),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(AppTheme.signup_txt_color),
          backgroundColor: MaterialStateProperty.all<Color>(AppTheme.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )
          )
        ),
        onPressed: () => null
      ),
      Text(
              getTranslated(context, "forget_pass")!,
              style:  AppTheme.forget_pass_style,

              //color: Colors.black,
            ),
        ],
      ),
    );
  }
}
