import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool isPressed = true;

  void onPressedFav(){
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content:
          isPressed?
          Text("Agregaste a tus favoritos"):
          Text("Quitaste de tus favoritos"),
        )
    );

    setState(() {
       if (isPressed){
         isPressed = false;
       } else {
         isPressed = true;
       }
    });
  }

  @override
  Widget build(BuildContext context) {

      return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: "Fav",
        onPressed: onPressedFav,
        child:
          Icon(
              isPressed?
              Icons.favorite_border:
              Icons.favorite
          ),
      );
  }

}