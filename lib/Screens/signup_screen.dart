import 'package:flutter/material.dart';
import 'package:rate_your_day/Models/User.dart';
import 'package:rate_your_day/Widgets/datepicker_textfield.dart';
import 'package:rate_your_day/Widgets/hompage_button.dart';
import 'package:rate_your_day/Widgets/signup_textfield_widget.dart';
import 'package:rate_your_day/constants.dart';
import 'package:intl/intl.dart';
import 'package:rate_your_day/main.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? dropdownVal;
  TextEditingController dateInput = TextEditingController();
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  TextEditingController nicknameInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainTextColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 50, 40, 50),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: kMainBackgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SignUpTextField(
                labelText: "Enter your Email: ",
                suffixIcon: const Icon(Icons.mail),
                textController: emailInput,
              ),
              SignUpTextField(
                labelText: "Create a strong Password: ",
                suffixIcon: const Icon(Icons.password),
                textController: passwordInput,
              ),
              DropdownButton(
                value: dropdownVal,
                icon: const Icon(Icons.keyboard_arrow_down),
                hint: const Text("Select Gender   ⚥"),
                items: <String>[
                  'Male  ♂',
                  'Female  ♀',
                  'Transgender  ⚧️',
                ].map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownVal = newValue!;
                  });
                },
              ),
              DatepickerTextfield(
                labelText: "Pick your Date Of Birth:",
                suffixIcon: const Icon(Icons.calendar_today),
                controller: dateInput,
                onTapFunction: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2100));
                  if (pickedDate != null) {
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    setState(
                      () {
                        dateInput.text = formattedDate;
                      },
                    );
                  } else {}
                },
              ),
              SignUpTextField(
                labelText: "What's your Nickname?",
                suffixIcon: const Icon(Icons.curtains_outlined),
                textController: nicknameInput,
              ),
              const SizedBox(
                height: 100,
              ),
              HomePageButton(
                buttonTitle: 'Sign Up',
                buttonOnPressed: () {
                  User user = User(
                    nickname: nicknameInput.text,
                    email: emailInput.text,
                    password: passwordInput.text,
                    gender: dropdownVal,
                    dateOfBirth: dateInput.text,
                  );
                  objectBox.userBox.put(user);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
