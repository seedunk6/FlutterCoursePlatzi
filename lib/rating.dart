import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  double stars = 5.0;

  var list = new List<Widget>();

  Rating(this.stars);

  Widget getStar(double star) {
    var icon = Icons.star;

    if (star == 0.5) {
      icon = Icons.star_half;
    } else if (star < 0.5) {
      icon = Icons.star_border;
    }

    return Container(
      margin: EdgeInsets.only(
          right: 3.0,
          left: 3.0
      ),

      child: Icon(
        icon,
        color: Colors.amber,
        size: 14.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    for (var n = 0; n < 5; n++) {
      list.add(getStar(stars));
      stars--;
    }

    return Container(
      child: Row(
        children: list,
      ),
    );
  }
}