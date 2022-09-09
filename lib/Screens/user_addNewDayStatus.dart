import 'package:flutter/material.dart';
import 'package:rate_your_day/Models/user.dart';

import 'package:rate_your_day/Widgets/hompage_button.dart';
import 'package:rate_your_day/Widgets/signup_textfield_widget.dart';
import 'package:rate_your_day/constants.dart';
import 'package:intl/intl.dart';
import 'package:rate_your_day/main.dart';

import '../Widgets/datepicker2_textfield.dart';
import '../Widgets/signup2_textfield_widget.dart';

class User_addNewDayStatus extends StatefulWidget {
  const User_addNewDayStatus({Key? key}) : super(key: key);

  @override
  State<User_addNewDayStatus> createState() => _User_addNewDayStatusState();
}

class _User_addNewDayStatusState extends State<User_addNewDayStatus> {
  String? dropdownVal;
  TextEditingController dateInput = TextEditingController();
  TextEditingController note = TextEditingController();
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
      appBar: AppBar(title: Text("Rate Your Day")),
      backgroundColor: kMainTextColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(7),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kMainBackgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    "Rate Your Day",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      Text(" How was your day =  ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.purple,
                              fontWeight: FontWeight.w700)),
                      DropdownButton(
                        value: dropdownVal,
                        icon: const Icon(Icons.keyboard_arrow_down, size: 44),
                        hint: const Text("5",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.w800)),
                        items: <String>['1', '2', '3', '4', '5']
                            .map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w800)),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownVal = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                DatepickerTextfield2(
                  labelText: " Date :",
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
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(" Note:",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple,
                          fontWeight: FontWeight.w800)),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: kMainTextColor,
                  ),
                  controller: note,
                  minLines: 6,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
                const SizedBox(
                  height: 50,
                ),
                HomePageButton(
                  buttonTitle: 'Save',
                  buttonOnPressed: () {
                    // User user = User(
                    //    nickname: nicknameInput.text,
                    //    password: passwordInput.text,
                    //     gender: dropdownVal,
                    ////   );
                    //   objectBox.userBox.put(user);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
