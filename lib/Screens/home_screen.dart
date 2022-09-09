import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:rate_your_day/Widgets/hompage_button.dart';
import 'package:rate_your_day/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                color: kMainBackgroundColor,
                image: DecorationImage(
                  image: AssetImage("Assets/images/road_forest.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Rate \n Your \n Day!',
                        textStyle: kColorizeTextStyle,
                        colors: kColorizeColors,
                      ),
                    ],
                    isRepeatingAnimation: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Brighten up your day',
                          textStyle: const TextStyle(
                            fontSize: 25,
                            fontFamily: 'Lakki Reddy',
                          ),
                          speed: const Duration(milliseconds: 120)),
                    ],
                    isRepeatingAnimation: false,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: kMainTextColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HomePageButton(
                        buttonTitle: "Sign Up",
                        buttonOnPressed: () =>
                            Navigator.pushNamed(context, '/signup_screen'),
                      ),
                      HomePageButton(
                        buttonTitle: "Sign Up via GOOGLE",
                        buttonOnPressed: () => Navigator.pushNamed(
                            context, '/user_addNewDayStatus'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  HomePageButton(
                    buttonTitle: "Log In",
                    buttonOnPressed: () =>
                        Navigator.pushNamed(context, '/login_screen'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
