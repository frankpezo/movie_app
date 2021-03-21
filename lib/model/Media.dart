//Importamos el Util
import 'package:movie_app/common/Util.dart';


//1. Creamos clase
class Media{
  //2. Declaramos atributos
  int id;
  double voteAverage;
  String title;
  String posterPath;
  String backdropPath;
  String overview;
  String releaseDate;
  List<dynamic> genreIds;

 //Función para obtener el poster de una pelicula
 String getPosterUrl()=> getMediumPictureUrl(posterPath);
  String getBackDropUrl()=> getLargePictureUrl(backdropPath);
  String  getGenres()=>getGenreValues(genreIds);
  //2.1. Constructor como factory
  //Constructor factory: Es básicamente un constructor que está basado en un patrón factory; un patrón 
                        //de diseño de objetos. A través de esto, nos ayuda en la problemática de creación 
                        // de objetos de distintos tipos. 
/*
  factory Media(Map jsonMap){
       return new Media.deserialize(jsonMap);
  } */


     factory Media(Map jsonMap){
       try{
          return new Media.deserialize(jsonMap);
       }catch(ex){
         throw ex;
       }
  }

//2.2. Tomamos un json y lo tranformamos en un objeto con deserialize
  Media.deserialize(Map json):
   id =json["id"].toInt(),
   voteAverage=json["vote_average"].toDouble(), 
   title= json["title"], 
   posterPath=json["poster_path"] ?? "", 
   backdropPath=json["backdrop_path"] ?? "",
   overview=json["overview"], 
   releaseDate= json["release_date"], 
   genreIds= json["genre_ids"].toList();


}