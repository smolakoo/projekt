import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Zwierzak  {
   late String imie;
   late String rodzaj;
   late String wiek;
   late String waga;

   Zwierzak({required this.imie, required this.rodzaj, required this.waga, required this.wiek});

  Zwierzak zwierzak=new Zwierzak(imie: '', rodzaj: '', wiek:'', waga: '',);


  Widget kartaZw(){
    return Card(
      margin: EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          Text(imie),
          SizedBox(width: 10.0),
          Text(rodzaj),
          SizedBox(width: 10.0),
          Text(wiek),
          SizedBox(width: 10.0),
          Text(waga),
        ],
      ),
    );
  }

}