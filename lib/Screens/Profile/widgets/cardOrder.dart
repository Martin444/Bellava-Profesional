import 'package:bellava_prof/Models/orders.dart';
import 'package:bellava_prof/Models/user.dart';
import 'package:bellava_prof/Screens/Success/success.dart';
import 'package:bellava_prof/Utils/SIzeConfig.dart';
import 'package:bellava_prof/Utils/anim/delayed_reveal.dart';
import 'package:bellava_prof/Utils/button_green.dart';
import 'package:bellava_prof/Utils/consts.dart';
import 'package:bellava_prof/Utils/map.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:latlong/latlong.dart';

class CardOrder extends StatefulWidget {

  Order order;
  User user;

  CardOrder(this.order, this.user);

  @override
  _CardOrderState createState() => _CardOrderState();
}

class _CardOrderState extends State<CardOrder> {

    



  @override
  Widget build(BuildContext context) {
  String titleBtnGreen =  "Aceptar pedido";

  if (widget.order.state == "En Proceso"){
    setState(() {
      titleBtnGreen =  "Aceptar pedido";
    });
  } else if (widget.order.state == "Aceptado"){
    setState(() {
      titleBtnGreen =  "Estaré en breve";
    });
  } else if (widget.order.state == "En Breve"){
    setState(() {
      titleBtnGreen =  "Voy en camino";
    });
  } else if (widget.order.state == "En camino"){
    setState(() {
      titleBtnGreen =  "Finalizar";
    });
  } else if (widget.order.state == "Finalizado"){
    setState(() {
      titleBtnGreen =  "Listo!";
    });
  }

  List<Icon> stars = new List<Icon>();

    widget.order.stars != null ? 

      widget.order.stars.forEach((e) {
        e == true ? stars.add( Icon(Icons.star, color: Colors.amberAccent, size: 34,)) : stars.add( Icon(Icons.star_border, color: Colors.white, size: 34,));
        print(e);
      })

      :
      null;


      createAlertDialog() async {
        return showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              title: Text("Genial!"),
              content: Container(
                height: 100,
                child: 
                  Container(
                    child: Text("Ahora este pedido pasará a estar en tu lista de Servicios Activos"),
                  )
            
              ),
            
              actions: <Widget>[
                FlatButton(
                  child: Text("Acepto"),
                  onPressed: (){
                    Firestore.instance.collection('orders').document(widget.order.uid).updateData({
                      'state' : 'Aceptado',
                      'profesionalID' : widget.user.uid,
                      'profesionalName' : widget.user.name
                    });
                    Navigator.pop(context);
                    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) =>
                      new SuccessScreen()
                    ));
                  },
                )
              ],
            
            );
          }
        );
      }


      
      _showBottomSheet() {
      return showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Center(
                      child: Text(
                        "Ubicación",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  
                  //Aplicar mapa googleMaps
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: MediaQuery.of(context).size.height / 2.7,
                    child: Maped(lat: LatLng(widget.order.latitude, widget.order.longitude),),
                  ),

                  ButtonGreen(
                   text: titleBtnGreen,
                   onPressed: (){
                     print(widget.order.state );
                     if(widget.order.state == "En proceso"){

                      //  print(widget.order.state );
                      //  setState(() {
                      //    titleBtnGreen = "Estaré en breve";
                      //  });
                        Navigator.pop(context);
                        createAlertDialog();
                     } else if (widget.order.state == "Aceptado"){
                       print(widget.order.state );
                       setState(() {
                         titleBtnGreen = "Estoy en camino";
                       });
                       Navigator.pop(context);
                       Firestore.instance.collection('orders').document(widget.order.uid).updateData({
                          'state' : 'En Breve',
                          'profesionalID' : widget.user.uid,
                          'profesionalName' : widget.user.name
                        });
                     } else if (widget.order.state == "En Breve"){
                       print(widget.order.state );
                       setState(() {
                         titleBtnGreen = "Finalizar";
                       });
                       Navigator.pop(context);
                       Firestore.instance.collection('orders').document(widget.order.uid).updateData({
                          'state' : 'En camino',
                          'profesionalID' : widget.user.uid,
                          'profesionalName' : widget.user.name
                        });
                     } else if (widget.order.state == "En camino"){
                       print(widget.order.state );
                       setState(() {
                         titleBtnGreen = "Listo!";
                       });
                       Navigator.pop(context);
                       Firestore.instance.collection('orders').document(widget.order.uid).updateData({
                          'state' : 'Finalizado',
                          'profesionalID' : widget.user.uid,
                          'profesionalName' : widget.user.name
                        });
                     }
                   },
                   height: 45,
                  )

                ],
              ),
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(60),
                      topRight: const Radius.circular(60))),
            );
          });
    }


    return  Container(
          margin: EdgeInsets.only(top:10, bottom: 10),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: <Widget>[
          DelayedReveal(
              delay: Duration(milliseconds: 300),
              child: Container(
                  width: SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                  color: widget.order.state != "Finalizado" ? Color(0xFFB78DD9) : Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20),
                  ),
                child: ExpansionTile(
                  leading: Icon(Icons.list, color: Colors.white,),
                  title: Text(widget.order.type,
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 21,
                     fontWeight: FontWeight.bold
                     ),
                    ),
                  children: <Widget>[
                       
                    DelayedReveal(
                          delay: Duration(milliseconds: 400),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Nombre del Cliente:",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                ),

                                Text(
                                  "${widget.order.userOwner}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ], 
                            ),
                          ),
                        ),
               
                      
                      

                      DelayedReveal(
                          delay: Duration(milliseconds: 400),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Dia/Hora",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                ),

                                Text(
                                  "${widget.order.recolectionStart}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ], 
                            ),
                          ),
                        ),
                      
                      
                      DelayedReveal(
                          delay: Duration(milliseconds: 400),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "¿Horario Flexible?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                ),

                                widget.order.flexible ?

                                Text(
                                  "Si",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700
                                  ),
                                )
                                :
                                Text(
                                  "No",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                             
                              ], 
                            ),
                          ),
                        ),

                      DelayedReveal(
                          delay: Duration(milliseconds: 400),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Dirección:",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                ),

                                Text(
                                  widget.order.direction,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ], 
                            ),
                          ),
                        ),


                         DelayedReveal(
                          delay: Duration(milliseconds: 400),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Tipo de vivienda: ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                ),

                                Text(
                                  widget.order.typeHouse,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ], 
                            ),
                          ),
                        ),

                         DelayedReveal(
                          delay: Duration(milliseconds: 400),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width / 1,
                                  child: Text(
                                    "Especificacion del servicio",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 21,
                                    ),
                                  ),
                                ),

                                Container(
                                  width: MediaQuery.of(context).size.width / 1,
                                  child: Column(
                                    children: 
                                      widget.order.services.map((e) => 
                                        e != null ?
                                        Text("$e",
                                          style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 21,
                                          fontWeight: FontWeight.w700
                                        ),
                                      )
                                      :
                                      Container()
                                      ).toList()
                                    ,
                                  )
                                ),
                              ], 
                            ),
                          ),
                        ),

                        
                         DelayedReveal(
                          delay: Duration(milliseconds: 400),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Comentarios",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                ),

                                Text(
                                  widget.order.description,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ], 
                            ),
                          ),
                        ),
                        
                         DelayedReveal(
                          delay: Duration(milliseconds: 400),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Total pagado",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                ),

                                Text(
                                  "${widget.order.price}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ], 
                            ),
                          ),
                        ),

                        DelayedReveal(
                          delay: Duration(milliseconds: 400),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Método de pago",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                ),

                                Text(
                                  widget.order.typePayment,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ], 
                            ),
                          ),
                        ),


                        DelayedReveal(
                          delay: Duration(milliseconds: 400),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Teléfono",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                ),

                                Text(
                                  widget.order.numberPhone,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ], 
                            ),
                          ),
                        ),

                        DelayedReveal(
                          delay: Duration(milliseconds: 400),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Estado del pedido",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                ),

                                Text(
                                  widget.order.state,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ], 
                            ),
                          ),
                        ),

                      widget.order.state != "Finalizado" ?

                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: FlatButton(
                            color: korange,
                            child: Text(
                              "Más",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 19
                              ),
                              
                              ),
                            onPressed: (){
                              _showBottomSheet();
                            },
                            ),
                        )
                      : 

                        Container(
                          height: 70,
                          alignment: Alignment.center,
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: stars,
                            ),
                          ),
                        )
                  
                  
                  ],
                ),
              ),
            ),
          
          ],)
        );
     
     
  }
}