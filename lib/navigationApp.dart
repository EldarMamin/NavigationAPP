import 'package:flutter/material.dart';

class NavigationApp extends StatelessWidget {
  NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation', 
      home: FirstPage()
    );
  }
}

class FirstPage extends StatelessWidget {
  FirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FirstPage'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => SecondPage())
          );
        },
        child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => ThirdPage())
          );
        },
        child: Text('Go to Third Page'),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  ThirdPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Page'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
        onPressed: () {
          Navigator.popUntil(context, (route) => route.isFirst);
        },
        child: Text('Go to First Page'),
        ),
      ),
    );
  }
}


