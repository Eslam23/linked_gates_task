import 'package:flutter/material.dart';
class background_image_widget extends StatelessWidget {
  const background_image_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color:Colors.transparent,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/images/man_background.png',
          ),
        ),
      ),
      height: MediaQuery.of(context).size.height,
    );
  }
}