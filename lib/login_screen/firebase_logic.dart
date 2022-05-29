import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task/localization/language_constant.dart';

class AccessFirebase {
  static Future<User?> loginUsingPhonePassword({required String phone ,
  required String password , required BuildContext context })
  async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential = await auth.signInWithEmailAndPassword(email: phone, password: password);
      user = userCredential.user;
    }
    on FirebaseAuthException catch (e){
      if(e.code == "user not found")
      {
        print(getTranslated(context, "no_user_found")!);
      }
    }
    return user;
  }
}