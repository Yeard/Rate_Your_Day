import 'package:flutter/material.dart';
import 'package:rate_your_day/constants.dart';

class SignUpTextField2 extends StatelessWidget {
  const SignUpTextField2({
    @required this.labelText,
    this.suffixIcon,
    this.textController,
    Key? key,
  }) : super(key: key);

  final String? labelText;
  final Icon? suffixIcon;
  final TextEditingController? textController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(labelText!,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.w700)),
          ),
          SizedBox(
            height: 30,
            width: 300,
            child: TextField(
              maxLines: 5,
              controller: textController!,
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: kMainTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
