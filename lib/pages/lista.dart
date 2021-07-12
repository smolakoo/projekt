import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petapp_v1/pages/dodaj.dart';
import 'package:petapp_v1/zwierzak.dart';

class lista extends StatefulWidget {



  @override
  _listaState createState() => _listaState();
}



class _listaState extends State<lista> {


  var zwierzak=Zwierzak(imie: '', rodzaj: '', wiek: '', waga: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('Twoje zwierzaki'),
        centerTitle: true,
        elevation: 0,

      ),
      body: Column(
        children: <Widget>[
          zwierzak.kartaZw(),
        ],
      ),

    );
  }
}
