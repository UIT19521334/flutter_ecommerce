import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/Login/login_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shop now",
          body: "The Dart CLI developer tool uses Google "
              " to send basic crash reports. This data is used to help"
              " improve the Dart platform, Flutter framework, and related tools.",
          image: Image.asset("images/splash1.png", width: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Big Discount",
          body: "The Dart CLI developer tool uses Google "
              " to send basic crash reports. This data is used to help"
              " improve the Dart platform, Flutter framework, and related tools.",
          image: Image.asset("images/splash2.png", width: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: "Free Ship",
            body: "The Dart CLI developer tool uses Google "
                " to send basic crash reports. This data is used to help",
            image: Image.asset("images/splash3.png", width: 200),
            decoration: pageDecoration,
            footer: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 0, top: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(55),
                    backgroundColor: Color(0xFFDB3022),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Text(
                  "Let's go",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            )),
      ],
      showSkipButton: false,
      showBackButton: true,
      showDoneButton: true,
      back: Text(
        "Back",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFDB3022)),
      ),
      next: Text(
        "Next",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFDB3022)),
      ),
      done: Text(
        "Done",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFDB3022)),
      ),
      skip: Text(
        "Skip",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFDB3022)),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20, 10),
          activeColor: Color(0xFFDB3022),
          color: Colors.black26,
          spacing: EdgeInsets.symmetric(horizontal: 3),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    );
  }
}
