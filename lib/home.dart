import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fooderlich',
            // 2
            style: Theme.of(context).textTheme.headline6),
      ),
      body: Center(
        child: Text(
          'Lets get cooking',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
