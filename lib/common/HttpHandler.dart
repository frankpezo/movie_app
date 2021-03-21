//1. Importamos la librería que nos permitirá la llamada asincrona
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;//Para que no nos bote debemos colocar http en pubspec.yaml
import 'package:movie_app/common/Constantes.dart'; //Importamos el archivo donde está el API KEY
//iMPORTAMOS EL ARCHIVO MEDIA
import 'package:movie_app/model/Media.dart';


//2. creamos la clase
class HttpHandler{
    //3. Definimos la propiedad relacionada con la url
    final String _baseUrl= "api.themoviedb.org";
    final String _lenguaje= "es-Es";


    //2.1. Definimos el método principal que se encargará de hacer la llamada http
    Future<dynamic> getJson(Uri uri) async{
       //Realizamos la primera petición
        http.Response response = await http.get(uri);
        return json.decode(response.body);
    }

    //3.1. Obtenemos las películas populares
    //Retornamos objetos del archivo Media
    Future<List<Media>> fetchMovies(){
         //Definimos url
         var uri= new Uri.https(_baseUrl, "3/movie/popular", {
           'api_key':API_KEY, //Para usarlo debemos importarlo primero
            'page':"1", 
            'language': _lenguaje
         });

   //4. Llamamos el método principal la de arriba
   return  getJson(uri).then(((data)=> 
            data['results'].map<Media>((item)=> new Media(item)).toList()
   ));

    }

}