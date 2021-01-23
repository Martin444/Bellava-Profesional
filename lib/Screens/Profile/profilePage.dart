import 'package:bellava_prof/Models/user.dart';
import 'package:bellava_prof/Screens/Profile/widgets/activeOrders.dart';
import 'package:bellava_prof/Screens/Profile/widgets/allOrders.dart';
import 'package:bellava_prof/Utils/SIzeConfig.dart';
import 'package:bellava_prof/Utils/consts.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  User user;

  ProfilePage({this.user});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>  with SingleTickerProviderStateMixin{

  TabController tabController;

    @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
   
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Container( //Name Hi
            margin: EdgeInsets.all(25.0),
              alignment: Alignment.center,
              child: Text(
                "Hola, ${widget.user.name}",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w700
                ),
                ),
            ),

           TabBar(  
                controller: tabController,
                indicatorColor: korange,
                  indicatorWeight: 3.0,
                  labelColor: Colors.blueGrey,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(
                      child: Text("Servicios solicitados", style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'OpenSans'
                      ),),
                    ),
                    Tab(
                      child: Text("Tus servicios activos", style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'OpenSans'
                      ),),
                    ),
                  ]),
                    Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabController,
                      children: <Widget>[
                        AllOrders(widget.user),
                        ActiveOrders(widget.user),
                  ]),
                ),
              )
        
        ],
      ),
    );
  }
}