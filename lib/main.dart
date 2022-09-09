import 'package:flutter/material.dart';
import 'package:rate_your_day/Controllers/objectbox_store.dart';
import 'package:rate_your_day/Screens/home_screen.dart';
import 'package:rate_your_day/Screens/signup_screen.dart';
import 'package:rate_your_day/Screens/user_dashboard_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/user_addNewDayStatus.dart';

late ObjectBox objectBox;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  objectBox = await ObjectBox.create();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RateYourDay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomeScreen(),
      routes: {
        '/signup_screen': (context) => const SignUpScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/user_dashboard_screen': (context) => const UserDashboardScreen(),
        '/user_addNewDayStatus': (context) => const User_addNewDayStatus(),
      },
    );
  }
}
