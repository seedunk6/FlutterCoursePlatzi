import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg", "People", "2 review · 5 photos", 5.0 ,"There is an amazing place"),
        Review("assets/img/person1.jpg", "Person 1", "2 review · 4 photos", 4.5, "There is an amazing place"),
        Review("assets/img/person2.jpg", "Person 2", "2 review · 3 photos", 1.0, "There is an amazing place"),

      ],
    );
  }

}