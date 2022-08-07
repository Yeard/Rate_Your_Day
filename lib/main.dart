import 'package:flutter/material.dart';
import './widgets/user_dash_bord.dart';
import './widgets/user_login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.deepPurpleAccent),
          headline2: TextStyle(color: Colors.deepPurpleAccent),
          bodyText2: TextStyle(color: Color.fromARGB(255, 43, 14, 122)),
          subtitle1: TextStyle(color: Colors.pinkAccent),
        ),
      ),
      home: const User_Login_page(),
      routes: {
        '/UserDashBord': (context) => User_dash_bord(),
      },
    );
  }
}
