import 'package:flutter/material.dart';
import 'package:petapp_v1/zwierzak.dart';


class dodaj extends StatefulWidget  {



  dodaj({Key? key}) : super(key: key);

  @override
  _dodajState createState() => _dodajState();
}



class _dodajState extends State<dodaj> {

  static Zwierzak zwierzak= new Zwierzak(imie: '',rodzaj:'', wiek: '', waga: '');



  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  Widget _buildNazwa(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Imię'),
      validator: (value){
        if(value!.isEmpty){
          return 'Wpisz imię.';
        }
      },
      onSaved: (value){

          zwierzak.imie= value!;
      },
    );
  }

  Widget _buildRodzaj(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Rodzaj'),
      validator: (value){
        if(value!.isEmpty){
          return 'Wpisz rodzaj.';
        }
      },
      onSaved: (value){
        zwierzak.rodzaj=value!;
      },
    );
  }
  Widget _buildWiek(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Wiek'),
      validator: (value){
        if(value!.isEmpty){
          return 'Wpisz wiek.';
        }
      },
      onSaved: (value){
        zwierzak.wiek=value!;
      },
    );
  }
  Widget _buildWaga(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Waga'),
      validator: (value){
        if(value!.isEmpty){
          return 'Wpisz wagę.';
        }
      },
      onSaved: (value){
        zwierzak.waga= value!;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('Dodaj zwierzaka'),
        centerTitle: true,
        elevation: 0,
      ),

      body:SingleChildScrollView(
        child: Column(

          children: <Widget> [
            Form(
              key: _formKey,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                _buildNazwa(),
                _buildRodzaj(),
                _buildWiek(),
                _buildWaga(),
              ],
            )
              ,),

            SizedBox(height: 200),
            FlatButton(
              onPressed: (){
                if(!_formKey.currentState!.validate()){
                  return;
                }
                  _formKey.currentState!.save();
                  Navigator.pushNamed(context, '/lista');

                },
              color: Colors.amber[300],
              child: Text('Zapisz dane'),

            ),
          ],
        ),
      ),

    );
  }
}
