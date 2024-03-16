import 'package:fittrek/constants/strings/color-string.dart';
import 'package:fittrek/constants/strings/image-string.dart';
import 'package:fittrek/constants/widgets/elevatedbutton-widget.dart';
import 'package:fittrek/view/login-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundImage(),
          Align(
            alignment: Alignment.center,
            child: Text(
              'FitTrek',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            child: ElevatedButtonWidget(
              width: MediaQuery.of(context).size.width / 1.15,
              color: ColorString.primaryColor1,
              title: 'SUNG UP',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              onPressed: () => Get.to(LoginScreen()),
            ),
          ),
          Positioned(
            bottom: 45,
            left: 120,
            child: TextButton(
              child: Text(
                'login with account',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class backgroundImage extends StatelessWidget {
  const backgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageString.WelcomeImage,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.8),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }
}
