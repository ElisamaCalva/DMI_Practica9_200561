import 'package:flutter/material.dart';
import 'package:movieapp_200561/model/Media.dart';



class MediaListItem extends StatelessWidget {
  final Media media;

  MediaListItem(this.media);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
          child: new Stack(
            children:<Widget>[
          FadeInImage.assetNetwork(
            placeholder: "assets/img/a.gif",
            image: media.getBackDropUrl(),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200.0,
            fadeInDuration: Duration(milliseconds: 40),
          ),
           Positioned(
              left: 0.0,
              bottom: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(150, 58, 58, 58),
                ),
                constraints: BoxConstraints.expand(
                  height: 55.0
                ),
              ),
            ),
            new Positioned(
              left: 10,
              bottom: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    media.title,
                    style: TextStyle(fontWeight: FontWeight.bold, 
                    color: Colors.white),
                  ),
                )
              ],
            )

            )
            ]
          ),
          )
        ],
      ),
    );
  }
}