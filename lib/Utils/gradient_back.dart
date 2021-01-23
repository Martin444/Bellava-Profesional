import 'package:flutter/material.dart';
import 'package:bellava_prof/Utils/consts copy.dart';

class GradientBack extends StatefulWidget {

  String title = "Lavado";
  double height = 100;

  GradientBack({Key key, this.title, this.height});
  @override
  _GradientBackState createState() => _GradientBackState();
}

class _GradientBackState extends State<GradientBack> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    widget.height ??= screenHeight;

    return Container (
      width: screenWidth,
      height: widget.height,
      color: Colors.white38,
 child: Stack(
            alignment: Alignment(1.6, -1.7),
        children: [
          Container(
            // width: 300,
            child: FittedBox(
              fit: BoxFit.none,
              // alignment: Alignment(-1.3, 2.5),
              child: 
                  Container(
                    width: 250 ,
                    height: 250 ,
                    decoration: BoxDecoration(
                      color: opacityCeleste2,
                      borderRadius: BorderRadius.circular(screenHeight / 2),
                    ),
                  ),
                
            ),
          ),
          Positioned(
            bottom: screenHeight / 1.7,
            right: screenWidth / 2.0,
            child: 
                Container(
                  margin: EdgeInsets.only(top: 120, left: 100),
                  width: screenHeight /7,
                  height: screenHeight /7,
                  decoration: BoxDecoration(
                    color: Color(0xffF3EfF9),
                    borderRadius: BorderRadius.circular(screenHeight / 2),
                  ),
                ),
              
          ),
          Positioned(
            bottom: -45,
            left: -100,
            child: 
                Container(
                  margin: EdgeInsets.only(top: 420, left: 20),
                  width: screenHeight /3,
                  height: screenHeight /3,
                  decoration: BoxDecoration(
                    color: Color(0xffF3EfF9),
                    borderRadius: BorderRadius.circular(screenHeight / 2),
                  ),
                ),
              
          ),
        
        ],
      ),
    
      /*Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),*/

      //alignment: Alignment(-0.9, -0.6),
    );
  }
}