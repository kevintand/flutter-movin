import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  FeaturedMovie featuredMovie;
  PopularMovie popularMovie;
  NewReleases newReleases;

  @override
  Widget build(BuildContext context) {
    // Homepage init
    return Container(
        color: Colors.black,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            FeaturedMovie(),
            PopularMovie(),
            NewReleases()
          ],
        )
      );
  }
}

class FeaturedMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Component Featured Movie
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 120,
            color: Colors.red,
          ),
          Container(
            width: 120,
            color: Colors.blue,
          ),
          Container(
            width: 120,
            color: Colors.yellow,
          ),
          Container(
            width: 120,
            color: Colors.green,
          ),
          Container(
            width: 120,
            color: Colors.purple,
          )
        ],
      )
    );
  }
  
}

class PopularMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Component Top Movie
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 120,
            color: Colors.red,
          ),
          Container(
            width: 120,
            color: Colors.blue,
          ),
          Container(
            width: 120,
            color: Colors.yellow,
          ),
          Container(
            width: 120,
            color: Colors.green,
          ),
          Container(
            width: 120,
            color: Colors.purple,
          )
        ],
      )
    );
  }

}

class NewReleases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 120,
            color: Colors.red,
          ),
          Container(
            width: 120,
            color: Colors.blue,
          ),
          Container(
            width: 120,
            color: Colors.yellow,
          ),
          Container(
            width: 120,
            color: Colors.green,
          ),
          Container(
            width: 120,
            color: Colors.purple,
          )
        ],
      )
    );
  }

}