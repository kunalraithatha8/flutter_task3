import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/signin_screen.dart';
import 'screens/signup_screen.dart';
import 'models/authentication.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
            value: Authentication(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Signin App',
        theme: ThemeData(
          primaryColor: Colors.green,
        ),
        home: OptionScreen(),
        routes: {
          SignupScreen.routeName: (ctx)=> SignupScreen(),
          SigninScreen.routeName: (ctx)=> SigninScreen(),
          HomeScreen.routeName: (ctx)=> HomeScreen(),
        },
      ),
    );
  }
}

class LogScrn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Signin App',
        theme: ThemeData(
          primaryColor: Colors.green,
        ),
        home: SigninScreen(),
        routes: {
          SignupScreen.routeName: (ctx)=> SignupScreen(),
          SigninScreen.routeName: (ctx)=> SigninScreen(),
          HomeScreen.routeName: (ctx)=> HomeScreen(),
        },
      ),
    );
  }
}

class SignScrn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Signin App',
        theme: ThemeData(
          primaryColor: Colors.green,
        ),
        home: SignupScreen(),
        routes: {
          SignupScreen.routeName: (ctx)=> SignupScreen(),
          LoginScreen.routeName: (ctx)=> SigninScreen(),
          HomeScreen.routeName: (ctx)=> HomeScreen(),
        },
      ),
    );
  }
}

class OptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue,
                  Colors.orange,
                ]
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 180,
                child: new Image.asset('assets/sig.png'),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: 200,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => SignScrn()
                    ));
                  },
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("Signin"),
                ),

              ),
              SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => SignScrn()
                    ));
                  },
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("Register"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}



