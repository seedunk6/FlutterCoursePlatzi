import 'package:flutter/material.dart';
import 'button_purple.dart';

class Description extends StatelessWidget {

  String name;
  int stars;
  String desc;

  Description(this.name, this.stars, this.desc);

  @override
  Widget build(BuildContext context) {

    final star_half = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),

      child: Icon(
          Icons.star_half,
          color: Colors.amber
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),

      child: Icon(
          Icons.star_border,
          color: Colors.amber
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),

      child: Icon(
        Icons.star,
        color: Colors.amber
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),

          child: Text(
            name,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),

        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_border
          ],
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
          top: 15.0,
          left: 20.0,
          right: 20.0
      ),

      child: Text(
        desc,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 14.0,
            color: Colors.black
        ),
        textAlign: TextAlign.justify,
      ),
    );

    final content = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title_stars,
          description,
          ButtonPurple("Navigate")
        ],
      ),
    );

    return content;
  }

}