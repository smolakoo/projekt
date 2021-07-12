import 'package:flutter/material.dart';

class widok extends StatefulWidget {
  const widok({Key? key}) : super(key: key);

  @override
  _widokState createState() => _widokState();
}

class _widokState extends State<widok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget> [
          Text('Widok Twojego zwierzaka'),
        ],
      ),
    );
  }
}
