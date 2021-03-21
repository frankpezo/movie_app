import 'package:flutter/material.dart';
import 'package:movie_app/common/HttpHandler.dart';
import 'package:movie_app/model/Media.dart';
import 'package:movie_app/media_list_item.dart';

//1. Creamos el Widget
class MediaList extends StatefulWidget{
_MediaListState createState()=> _MediaListState();
}

class _MediaListState extends State<MediaList>{
  //Dclaramos una propiedad para imprimirlo en pantalla
   List<Media> _media= new List();

    @override
    void initState(){
      super.initState();
      loadMovies();
    }

   //
   void loadMovies() async{
           var movies= await HttpHandler().fetchMovies();
          setState(() {
                  _media.addAll(movies);
                    });
   }


    @override
    Widget build(BuildContext context) {
      return  new Container(
         //List View
         child: new ListView.builder(
               itemCount: _media.length,
               itemBuilder: (BuildContext context, int index){
                 
                  return new MediaListItem(_media[index]);       
                     
               }, 
         ),
      );
    }
}