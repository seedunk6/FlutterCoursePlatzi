import 'package:flutter/material.dart';
import 'gradient_back.dart';

class ProfileTrips extends StatelessWidget{

  String photoProfile = "assets/img/beach1.jpg";
  String nameProfile = "Marco Martinez";

  @override
  Widget build(BuildContext context) {


    final profile = Container(
      padding: const EdgeInsets.only(
          left: 15,
          top: 95,
          right: 15,
          bottom: 30
      ),

      child: Row(
        children: <Widget>[
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(photoProfile),
                  fit: BoxFit.fill
                ),
                shape: BoxShape.circle,
                border: Border.all(
                    width: 2,
                    color: Colors.white
                ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0
            ),
              child: Text(
                nameProfile,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold
                ),
              ),
          ),
        ],
      ),
    );


    return Stack(
      children: <Widget>[
        GradientBack(
          "Profile",
        ),
        profile
      ],
    );


  }

}