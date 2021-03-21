import 'package:flutter/material.dart';
import 'package:movie_app/common/Util.dart';
import 'package:movie_app/model/Media.dart';
//Importamos



//1. cREAMOS WIDGET
class MediaListItem extends StatelessWidget{
    //1.1. Constructor
    final Media media;
    MediaListItem(this.media);

  @override
  Widget build(BuildContext context) {
    //Lo crearemos como card
    return  new Card(
         child: new Column(
            children: <Widget>[
              new Container(
                 child: new Stack(
                      children: <Widget>[
                         new FadeInImage.assetNetwork(
                       placeholder: "assets/placeholder.jpg", //Un nombre en caso la imagen no carge
                       image: media.getBackDropUrl(),
                       fit: BoxFit.cover,//Colocamos el poster aquí
                       width: double.infinity,
                       height: 200.0,
                       fadeInDuration: new Duration(milliseconds: 40),


                ),
                   new Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      right: 0.0,
                      child: new Container(
                          decoration: new BoxDecoration(
                             color: Colors.grey[900].withOpacity(0.5),
                          ),
                          constraints: new BoxConstraints.expand(
                             height: 55.0
                          ),
                      ),
                   ), 

                   new Positioned(
                      left: 10.0,
                      bottom: 10.0,
                   
                       child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                            new Container(
                               child: new Text(
                                    media.title, 
                                    style: new TextStyle(
                                      fontWeight: FontWeight.bold, 
                                      color: Colors.white, 
                                    ),
                                  
                               ),
                            ),
                            new Container(
                                 padding: const EdgeInsets.only(top: 4.0),
                              child: new Text(
                                  media.getGenres(),
                                  style: new TextStyle(color: Colors.white),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                              ),
                            ),
                         ],
                       ),
                   )
                      ],
                 ),
              )
            ],
         ),
    );
  }
}