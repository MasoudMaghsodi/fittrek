import 'package:fittrek/constants/strings/color-string.dart';
import 'package:fittrek/constants/strings/image-string.dart';
import 'package:fittrek/constants/widgets/elevatedbutton-widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'FitTrek',
            style: TextStyle(fontSize: 55),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'welcome!',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'sign into your account',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Email ID*',
                suffixIcon: Icon(Icons.email_outlined),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Password*',
                suffixIcon: Icon(Icons.lock_open_rounded),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text('Forgot password?'),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButtonWidget(
            color: ColorString.primaryColor1,
            title: 'LOGIN',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
            onPressed: () {},
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 25,
          ),
          Text('OR'),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.blue,
                    fixedSize: Size.fromHeight(60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    ImageString.facebook,
                    height: 25,
                    width: 25,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.blue,
                    fixedSize: Size.fromHeight(60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    ImageString.twitter,
                    height: 25,
                    width: 25,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: "Dont't have an account?"),
                TextSpan(
                  text: 'SignUp',
                  style: TextStyle(
                    color: ColorString.primaryColor1,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
