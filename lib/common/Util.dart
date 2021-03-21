
final String _imageUrlMedium= "https://image.tmdb.org/t/p/w300";//Para dar tamaño
final String _imageUrlLarge= "https://image.tmdb.org/t/p/600";

String getMediumPictureUrl(String path)=>_imageUrlMedium + path;
String getLargePictureUrl(String path)=>_imageUrlMedium + path;


//1. Creamos un map
Map<int, String > _genreMap={
    //Uno por uno colocamos los datos
  28: 'Action',
  12: 'Adventure',
  16: 'Animation',
  35: 'Comedy',
  80: 'Crime',
  99: 'Documentary',
  18: 'Drama',
  10751: 'Family',
  14: 'Fantasy',
  36: 'History',
  27: 'Horror',
  10402: 'Music',
  9648: 'Mystery',
  10749: 'Romance',
  878: 'Science Fiction',
  10770: 'TV Movie',
  53: 'Thriller',
  10752: 'War',
  37: 'Western',  
};

//1.1. Función para recibir código
List<String> genersToList(List<dynamic> genreIds)=>
genreIds.map((id) => _genreMap[id]).toList();

//1.2. Transformar la lista
String getGenreValues(List<dynamic> genreIds){
    StringBuffer buffer = new StringBuffer();
    buffer.writeAll(genersToList(genreIds), ", "  );
    return buffer.toString();//Converttimos en String
}