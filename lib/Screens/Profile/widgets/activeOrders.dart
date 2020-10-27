import 'package:bellava_prof/Models/orders.dart';
import 'package:bellava_prof/Models/user.dart';
import 'package:bellava_prof/Screens/Profile/widgets/cardOrder.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class ActiveOrders extends StatefulWidget {
  User user;

  ActiveOrders(this.user);
  @override
  _ActiveOrdersState createState() => _ActiveOrdersState();
}

class _ActiveOrdersState extends State<ActiveOrders> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance.collection('orders').where('profesionalID', isEqualTo: widget.user.uid).orderBy("recolectionStart", descending: true).orderBy("state", descending: true).snapshots(),
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
          print(order);

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
              price: f['price'],
              stars: f['stars']
            );

            
              
              order.profesionalID != null ?
                cards.add(CardOrder(order, widget.user))
                :
                null;
          });

          return ListView(
            children:cards.length >= 1 ? cards : <Widget>[
                Center(child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("No hay ordenes activas aún",
                  style: TextStyle(color: Colors.blueGrey,
                    fontSize: 21,
                    
                  ),
                  ),
                )),
              ],
           
          );

        }

      }
    );
  }
}