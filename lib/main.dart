import 'package:flutter/material.dart';
import 'package:petapp_v1/pages/dodaj.dart';
import 'package:petapp_v1/pages/home.dart';
import 'package:petapp_v1/pages/lista.dart';
import 'package:petapp_v1/pages/widok.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context)=>Home(),
    '/dodaj': (context)=>dodaj(),
    '/lista':(context)=>lista(),
    '/widok':(context)=>widok(),
  },

));





