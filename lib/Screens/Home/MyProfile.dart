import 'package:flutter/material.dart';
import 'package:bellava_prof/Models/user.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bellava_prof/Utils/ExpandedCard.dart';

class MyProfile extends StatefulWidget {

  User user;

  MyProfile({this.user});

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    print(widget.user.type);
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              // radius: 20.0,
                              backgroundImage: NetworkImage(widget.user.photoUrl ??
                                  'https://static.dribbble.com/users/460298/screenshots/4289309/nick0_copy.jpg'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '¡Hola,',
                                style: TextStyle(
                                    color: Color(0xff446F7A) ,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700),
                              ),
                              // SizedBox(height: 3),
                              Text(
                                '${widget.user.name.split(" ")[0]}!',
                                style: TextStyle(
                                    color: Color(0xff66A6B7),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      // GestureDetector(
                      //   onTap: (){
                      //     // _.goToNotifications();
                      //   },
                      //   child: Stack(
                      //     alignment: Alignment(0.9, -1.0),
                      //     children: [
                      //       SvgPicture.asset(
                      //         'assets/icons/bell.svg',
                      //         height: 28,
                      //       ),
                      //       Container(
                      //         height: 10,
                      //         width: 10,
                      //         child: CircleAvatar(
                      //           backgroundColor: Colors.red[300],
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // )
                   
                   
                    ],
                  ),
            ),

            SizedBox(height: 20,),
              
            Text('Tus servicios',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),

            SizedBox(height: 20,),
            ExpandedCard()
          ],
        ),
      ),
    );
  }
}