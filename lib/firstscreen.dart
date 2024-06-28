import 'package:flutter/material.dart';
import 'package:spotify/UiHelper.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          // crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb8oDHO4PTBdeShGL_WSI7zPnEBwD8f0kLaw&s",
                height: 150,
                width: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: UiHelper.customText("Millions of songs.\nFree on spotify.",Colors.white,30,FontWeight.bold,TextAlign.center),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: UiHelper.customButton("Sign up free", 20, FontWeight.bold, 25, Colors.greenAccent.shade400, Colors.black,60,350),
              ),
            SizedBox(height: 30,),
            Center(
              child: SizedBox(
                height: 60,
                width: 350,
                child: UiHelper.customRowButton("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1024px-Google_%22G%22_logo.svg.png", "Continue with Google", 15, 12, 20, 20, FontWeight.bold, Colors.white, 25, 1.0, Colors.white),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: SizedBox(
                height: 60,
                width: 350,
                child: UiHelper.customRowButton("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1024px-Google_%22G%22_logo.svg.png", "Continue with Facebook", 15, 12, 20, 20, FontWeight.bold, Colors.white, 25, 1.0, Colors.white),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: SizedBox(
                height: 60,
                width: 350,
                child: UiHelper.customRowButton("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1024px-Google_%22G%22_logo.svg.png","Continue with Apple", 15, 12, 20,  20, FontWeight.bold, Colors.white, 25, 1.0, Colors.white),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: UiHelper.customTextButton("Log in",Colors.white,FontWeight.bold,25),
            ),

          ]),
      backgroundColor: Colors.black,
    );
  }
  callback(){}
}
