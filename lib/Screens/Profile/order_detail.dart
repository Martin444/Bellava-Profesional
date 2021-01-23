
import 'package:bellava_prof/Models/orders.dart';
import 'package:bellava_prof/Models/user.dart';
import 'package:bellava_prof/Screens/Profile/widgets/button_purple.dart';
import 'package:bellava_prof/Screens/Success/success.dart';
import 'package:bellava_prof/Utils/consts%20copy.dart';
import 'package:bellava_prof/Utils/gradient_back.dart';
import 'package:bellava_prof/Utils/map.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bellava_prof/Utils/button_green.dart';
import 'package:latlong/latlong.dart';

class OrderDetails extends StatefulWidget {
  Order order;
  User user;
  OrderDetails({this.order, this.user});

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  bool star1 = false;

  bool star2 = false;

  bool star3 = false;

  bool star4 = false;

  bool star5 = false;

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

    List<Text> servs = new List<Text>();
 
      widget.order.services.forEach((e) {
        e != null
            ? servs.add(Text(
                e,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Lato'),
              ))
            : null;
      });

      List<Icon> stars = new List<Icon>();

      widget.order.stars != null
          ? widget.order.stars.forEach((e) {
              e == true
                  ? stars.add(Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 24,
                    ))
                  : stars.add(Icon(
                      Icons.star_border,
                      color: Colors.blueGrey,
                      size: 24,
                    ));
            })
          : null;


      createAlertDialog() async {
        return showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle_outline, color: Colors.greenAccent),
                  Text("Genial!"),
                ],
              ),
              content: Container(
                height: 100,
                child: 
                  Container(
                    child: Text("Ahora este pedido pasará a estar en tu lista de Servicios Activos",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 19, color: Colors.blueGrey),
                    ),
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

      
      return Scaffold(
        body: Stack(
          children: [
            GradientBack(),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    // BarTop
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              'Plan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            ),
                          ),
                          
                          GestureDetector(
                            child: Container(
                              width: 35,
                              height: 35,
                              // color: Colors.redAccent,
                              child: SvgPicture.asset(
                                'assets/icons/arrow-narrow-left.svg',
                                alignment: AlignmentDirectional.centerStart,
                                // fit: BoxFit.none,
                                height: 30,
                                color: Colors.black87,
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ),

                    // SizedBox(height: 10),
                    widget.order.profesionalID != null
                        ? Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Aceptaste este pedido',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                                // SizedBox(height: 10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Foto de perfil despues cabiar a la base de datos 
                                    Container(
                                      height: 50,
                                      width: 50,
                                      margin:
                                          EdgeInsets.only(right: 10, top: 20),
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage( 'https://static.dribbble.com/users/460298/screenshots/4289309/nick0_copy.jpg'),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(top: 26),
                                          child: Text(
                                            widget.order.profesionalName,
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(height: 6),
                                        Container(
                                          // height: 30,
                                          alignment: Alignment.topCenter,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: stars,
                                          ),
                                        ),
                                        SizedBox(height: 12),
                                        Container(
                                          height: 49,
                                          // width: 100,
                                          child: ButtonPurple(
                                            buttonText: titleBtnGreen,
                                            onPressed: () {
                                              // Navigator.of(context).push(MaterialPageRoute(builder:(context) =>FeeddBack()));
                                            },
                                          ),
                                        ),
                                        
                                      ],
                                    )
                                  ],
                                ),

                                SizedBox(height: 30),
                              ],
                            ),
                          )
                        : Container(),

                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Column(
                        children: [
                          // Estado y total a pagar
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Estado del pedido',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    widget.order.state,
                                    style: TextStyle(
                                        color: widget.order.state == 'Finalizado' ||
                                                widget.order.state == 'En proceso'
                                            ? Colors.redAccent
                                            : kceleste1,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Total a pagar',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '${widget.order.price} Pesos',
                                    style: TextStyle(
                                        color: kgreenPrimary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21),
                                  )
                                ],
                              ),
                            ],
                          ),

                          SizedBox(height: 20),

                          // Horario Flexxible
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '¿Acepta horario flexible?',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    widget.order.flexible ? 'Si' : 'No',
                                    style: TextStyle(
                                        color: kgreenPrimary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21),
                                  )
                                ],
                              ),
                            ],
                          ),

                          // Metodo de pago
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Metodo de pago',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    width: MediaQuery.of(context).size.width - 30,
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    decoration: BoxDecoration(
                                        color: Color(0xffF0FBFE),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            widget.order.typePayment == 'Efectivo'
                                                ? 'assets/icons/cash.svg'
                                                : 'assets/icons/credit-card.svg',
                                            color: kceleste1),
                                        SizedBox(width: 10),
                                        Text(
                                          widget.order.typePayment,
                                          style: TextStyle(
                                              color: Colors.blueGrey[400],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 21),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),

                          // Detalles del pedido
                          SizedBox(height: 20),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Detalles del pedido',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                              widget.order.services.length >= 1
                                  ? Container(
                                      margin:
                                          EdgeInsets.only(top: 10, bottom: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(left:5, right: 10),
                                            child: SvgPicture.asset(
                                                'assets/icons/clipboard-list.svg',
                                                color: kceleste1),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Servicios',
                                                style: TextStyle(
                                                    color: Colors.blueGrey,
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Lato'),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context).size.width - 100,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceBetween,
                                                  children: servs,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  : Column(
                                      children: <Widget>[],
                                    ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left:5, right: 10),
                                    child: SvgPicture.asset(
                                        'assets/icons/calendar.svg',
                                        color: kceleste1),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Dia y Hora',
                                        style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Lato"),
                                      ),
                                      Text(
                                        '${widget.order.recolectionStart}',
                                        style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Lato"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left:5, right: 10),
                                    child: SvgPicture.asset(
                                        'assets/icons/location-marker.svg',
                                        color: kceleste1),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Ubicación',
                                        style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Lato"),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width - 70,
                                        child: Text(
                                          '${widget.order.direction}',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Lato"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left:5, right: 10),
                                    child: SvgPicture.asset(
                                        'assets/icons/home.svg',
                                        color: kceleste1),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Tipo de vivienda',
                                        style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Lato"),
                                      ),
                                      Container(
                                        width: 200,
                                        child: Text(
                                          '${widget.order.typeHouse}',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Lato"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left:5, right: 10),
                                    child: SvgPicture.asset(
                                        'assets/icons/phone.svg',
                                        color: kceleste1),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Número de teléfono',
                                        style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Lato"),
                                      ),
                                      Container(
                                        width: 200,
                                        child: Text(
                                          '${widget.order.numberPhone}',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Lato"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                            ],
                          ),
                          ButtonGreen(
                            // width: 140,
                            height: 50,
                            text: titleBtnGreen,
                            onPressed: (){
                              createAlertDialog();
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    
  }
}
