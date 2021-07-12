import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Text('PetApp'),
          backgroundColor: Colors.grey[800],
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Container(

                padding: EdgeInsets.all(20.0),
                child: Text(
                    'Aplikacja dla właścicieli zwierząt domowych',
                    style: TextStyle(
                      fontSize:16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.grey[100],
                      wordSpacing: 20.0,
                    )
                )),
            SizedBox(height: 50.0),
            Image(
              image: AssetImage('assets/paw.png'),
              width:200,
              height: 200,
              color: Colors.amber[400],
            ),
            SizedBox(height: 50.0),

            Container(
                padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/lista');
                  },
                  color: Colors.amber[300],
                  child: Text('Twoje zwierzaki'),

                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/dodaj');
                    },
                    color: Colors.amber[300],
                    child: Text('Dodaj zwierzaka')
                )
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
              child: FlatButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                color: Colors.amber[300],
                child: Text('Wyjdż'),
              ),
            ),
          ],

        ));

  }
}