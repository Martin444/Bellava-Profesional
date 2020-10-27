import 'package:bellava_prof/Models/user.dart';
import 'package:bellava_prof/Screens/Profile/profilePage.dart';
import 'package:bellava_prof/Utils/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/rendering.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class HomePage extends StatefulWidget {

  const HomePage({Key key, this.user,}) : super(key: key);
  final AuthResult user;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin{


    List<ScreenHiddenDrawer> items = new List();
    _createToken()async{
      DocumentReference ref = Firestore.instance.collection('users').document(widget.user.user.uid);
  FirebaseMessaging _firebaseMessaging = new FirebaseMessaging();
      _firebaseMessaging.requestNotificationPermissions();

       await _firebaseMessaging.getToken().then((token){
      print('==== FMC TOken ===');
      print(token);
      
        return  ref.setData({
     
          'idToken' : token
        }, merge: true);
     
      // dFyzn_eLTAaHT7_huc0I0M:APA91bFzrHQJwYLagv2adQnZYswiLXI29FHu8XdaeSD8SBdRUYW8pCGA8BAZQHtyQHTrnFKUdHvkh8nWTHcLyL1rpPVeCJQkr2N6FoSJvl-DfO2TKFYH-iFo1sXV0F2XDplUWQVLAm1p
    });
    }

    @override
  void initState() {


    super.initState();
    _createToken();
  }


  @override
  Widget build(BuildContext context) {

    return StreamBuilder(
      stream: Firestore.instance
            .collection('users')
            .document(widget.user.user.uid)
            .snapshots(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if(!snapshot.hasData || snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text("No hay datos aun"),
            ),);
        }else{

          var usere = User(
            uid: snapshot.data.documentID,
            name: snapshot.data['displayName'],
            miBarrio: snapshot.data['miBarrio'],
            type: snapshot.data['type']
            // email: snapshot.data.email,
            // photoURL: snapshot.data.photoUrl,
            );
            print(snapshot.data.documentID);

        return Scaffold(
          body: HiddenDrawerMenu(
            backgroundColorMenu: korange,
            backgroundColorAppBar: Colors.white,
            screens: [
              
                ScreenHiddenDrawer(
                  new ItemHiddenMenu(
                    name: "Servicios",
                    baseStyle: TextStyle( color: Colors.white, fontSize: 23.0, fontWeight: FontWeight.w600 ),
                    colorLineSelected: Colors.teal,
                  ),
                  ProfilePage(usere)
                ),

                  ScreenHiddenDrawer(
                    new ItemHiddenMenu(
                      name: "Servicios realizados",
                      baseStyle: TextStyle( color: Colors.white, fontSize: 21.0, fontWeight: FontWeight.w600 ),
                      colorLineSelected: Colors.orange,
                    ),
                    ProfilePage(usere)
                  ),

                    ScreenHiddenDrawer(
                      new ItemHiddenMenu(
                        name: "Soporte",
                        baseStyle: TextStyle( color: Colors.white, fontSize: 21.0, fontWeight: FontWeight.w600 ),
                        colorLineSelected: Colors.orange,
                      ),
                      ProfilePage(usere)
                    ),
            ],
                 typeOpen: TypeOpen.FROM_LEFT,
              //    enableScaleAnimin: true,
              //    enableCornerAnimin: true,
                 slidePercent: 70.0,
              //    verticalScalePercent: 80.0,
                 contentCornerRadius: 20.0,
                 iconMenuAppBar: Icon(Icons.clear_all, color: korange, size: 40,),
                 whithAutoTittleName: false,
           
                 tittleAppBar: Center(
                   child: Container(
                      // width: MediaQuery.of(context).size.width,
                     child: Container(
                       margin: EdgeInsets.only(right: 35, top: 10),
                       child: Image.asset('assets/logohead.png', fit: BoxFit.contain, scale: 20,) 
                       )
                      ),
                 ),
                 enableShadowItensMenu: false,
                 elevationAppBar: 0,
          ),
        );
       }
      
      }
    );
  }
}