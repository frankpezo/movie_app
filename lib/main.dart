import 'package:flutter/material.dart';
import 'package:movie_app/home.dart';

void main(){
  runApp(new MaterialApp(
       home: Home(),
       //Para cambiar los colores de el appbar y navigationBottomBar
       theme: new ThemeData.dark(),
  ));
}

