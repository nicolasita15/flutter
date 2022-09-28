import 'package:demo2/helpers/helpericons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(duration: 3, goToPage: WelxomePage())));
}

class fontastic extends StatelessWidget {
  // Color color;
  //double size;
  //String iconName;

  // fontastic({required this.color, required this.size, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Text(
      'a',
      style: TextStyle(
          color: Colors.cyanAccent,
          fontSize: 100,
          fontFamily: 'untitled-font-1'),
    );
  }
}

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({
    required this.goToPage,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });

    return Scaffold(
        body: Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: fontastic(),
    ));
  }
}

class WelxomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Text(
            'Welcome to Food Park App!',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
    );
  }
}
