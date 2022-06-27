import 'package:flutter/material.dart';

class MoreInfoScreen extends StatelessWidget {
  static String routeName = '/moreinfo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
      ),
      body: Center(
        child: Text('This is a sample Text widget'),
      ),
    );
  }
}


