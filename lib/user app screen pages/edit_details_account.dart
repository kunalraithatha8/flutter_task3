import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account_settings.dart';

class About extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("About"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text("the creation of this app is depended on:-"),
            Column(
              children: [
                Text("firebase authentication"),
                Text("razorpay"),
                Text("http dependency"),
                Text("provider dependency")
              ],
            ),
            SizedBox(height: 20),
            Text("This App Contains These Widgets"),
            Column(
              children: [
                Text("appbar"),
                Text("textformfield"),
                Text("asset image"),
                Text("drawer")
              ],
            )
          ],
        ),

      ),
    );
  }

}