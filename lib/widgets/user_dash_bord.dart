import 'package:flutter/material.dart';

import '../sub_widgets/user_dash_bord_chart.dart';
import '../sub_widgets/user_dash_bord_day_rate.dart';

class User_dash_bord extends StatefulWidget {
  const User_dash_bord({Key? key}) : super(key: key);

  @override
  State<User_dash_bord> createState() => _User_dash_bordState();
}

class _User_dash_bordState extends State<User_dash_bord> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text(
        "Personal Expenses",
        style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.cut, color: Color.fromARGB(255, 249, 141, 0)),
          onPressed: () {},
        ),
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height -
                      appBar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.3,
              child: User_dash_bord_chart(),
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                      appBar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.6,
              child: User_dash_bord_day_rate(),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
