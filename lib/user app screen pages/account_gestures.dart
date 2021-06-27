import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/screens/edit_account_settings.dart';

class Accounts extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Credentials"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(height: 10,)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      child: Text("Name: Michael Shawrin", style: TextStyle(fontSize: 22),),
                    ),
                  ],
                ),
                SizedBox(height: 2,),
                Row(
                  children: [
                    SizedBox(
                      child: Text("Father Name: Nicholas Shawrin", style: TextStyle(fontSize: 22),),
                    ),
                  ],
                ),
                SizedBox(height: 2,),
                Row(
                  children: [
                    SizedBox(
                      child: Text("Mother Name: Angela Shawrin", style: TextStyle(fontSize: 22),),
                    ),
                  ],
                ),
                SizedBox(height: 2,),
                Row(
                  children: [
                    SizedBox(
                      child: Text("Address: Outskirts of Hampshire", style: TextStyle(fontSize: 22),),
                    )
                  ],
                ),
                SizedBox(height: 2,),
                Row(
                  children: [
                    SizedBox(
                      child: Text("Occuipation: Bank General Manager", style: TextStyle(fontSize: 25),),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
          label: Text("Edit Information"),
          icon: Icon(Icons.edit),
          onPressed: () {}
      ),
      );

  }


}