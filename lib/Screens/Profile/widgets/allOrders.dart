import 'package:bellava_prof/Models/orders.dart';
import 'package:bellava_prof/Models/user.dart';
import 'package:bellava_prof/Screens/Profile/widgets/cardOrder.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class AllOrders extends StatefulWidget {
  User user;

  AllOrders(this.user);
  @override
  _AllOrdersState createState() => _AllOrdersState();
}

class _AllOrdersState extends State<AllOrders> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance.collection('orders').where('profesionalID', isEqualTo: null).orderBy("recolectionStart", descending: true).snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){

        if(!snapshot.hasData || snapshot.hasError){
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 50.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(backgroundColor: Colors.white),
                Text("Espere un momento")
              ],
            ),
          );
        } else {
          AsyncSnapshot order = snapshot;


          List<CardOrder> cards = new List<CardOrder>();

          order.data.documents.forEach((f){
            var order = Order(
              uid: f.documentID,
              type: f['type'],
              state: f['state'],
              description: f['description'],
              neighborhood: f['neighborhood'],
              typePayment: f['typePayment'],
              typeHouse: f['typeHouse'],
              latitude: f['latitude'],
              longitude: f['longitude'],
              userOwner: f['userOwner'],
              direction: f['direction'],
              recolectionStart: f['recolectionStart'],
              numberPhone: f['numberPhone'],
              services: f['services'],
              flexible: f['flexible'],
              profesionalID: f['profesionalID'],
              profesionalName: f['profesionalName'],
              price: f['price']
            );

            var barrios =   widget.user.miBarrio.indexOf(order.neighborhood);
          if(order.state != "A pagar"){
            if(barrios != -1){
              print(barrios);
              order.profesionalID == null ?
                cards.add(CardOrder(order, widget.user))
                :
                null;
            }
          }
          });

          return ListView(
            children: cards,
          );

        }
      }
    );
  }
}