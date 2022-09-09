import 'package:flutter/material.dart';
import 'package:rate_your_day/constants.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({
    @required this.buttonTitle,
    @required this.buttonOnPressed,
    Key? key,
  }) : super(key: key);

  final String? buttonTitle;
  final void Function()? buttonOnPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: kHomebuttonMinimumSize,
      ),
      onPressed: buttonOnPressed!,
      child: Text(buttonTitle!),
    );
  }
}
