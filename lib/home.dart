import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:movie_app/media_list.dart';
//1. Creamos el widget 
class Home extends StatefulWidget{
   @override
    _HomeState createState()=> new _HomeState();
}

class _HomeState extends State<Home>{



  //Dónde estára el retorno
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
          appBar: new AppBar(
            title: new Text("TraiPlus"),
             //2. Colocamos el icono buscar a tráves del action
             actions: <Widget>[
                   new IconButton(
                       icon: new Icon(Icons.search, color: Colors.white),
                       onPressed: (){},

                   ),
             ],
             
          ),
     
     //3. Para mostrar las tres líneas parecida al icono del menú 
          drawer: new Drawer(
             //Colocamos el listView
            child: new ListView(
                children:<Widget> [
 //Película
             new ListTile(
                 title: new Text("Peliculas"),
                 trailing: new Icon(Icons.local_movies),

             ),
              
             new Divider(
                height: 5.0,
             ), 

           //Televisión
                new ListTile(
                 title: new Text("Televisión"),
                 trailing: new Icon(Icons.live_tv),

             ),

            new Divider(
                height: 5.0,
             ), 

           //Cerrar
                new ListTile(
                 title: new Text("Cerrar"),
                 trailing: new Icon(Icons.close),
                 onTap: ()=> Navigator.of(context).pop(),//Para cerrar las rutas que estamos usando en la app

             ),
                ],
            ) , 
            

          ),


          body: new PageView(
              children: <Widget>[
                 new MediaList(),
              ],
          ),
    //4. Para el navigation
    bottomNavigationBar: new BottomNavigationBar(
       items:_getFooterItem(),//Creamos o colocamos aquí el método que estará más abajo
    ),      

    );
  }

 //4.1. Retornamos una lista
    List<BottomNavigationBarItem>_getFooterItem(){
         return[
           //Películas populares
             new BottomNavigationBarItem(
                icon: new Icon(Icons.link_rounded), 
                title: new Text("Populares")
             ), 
         
           //Películas populares
             new BottomNavigationBarItem(
                icon: new Icon(Icons.next_plan), 
                title: new Text("Próximamente")
             ), 


             //Películas populares
             new BottomNavigationBarItem(
                icon: new Icon(Icons.star_border_sharp), 
                title: new Text("Valoradas")
             ), 

         ];
    }


}