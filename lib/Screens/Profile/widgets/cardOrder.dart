import 'package:bellava_prof/Models/orders.dart';
import 'package:bellava_prof/Models/user.dart';
import 'package:bellava_prof/Screens/Profile/order_detail.dart';
import 'package:bellava_prof/Utils/anim/delayed_reveal.dart';
import 'package:bellava_prof/Utils/consts copy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

    Color setCOlor (){
      switch (widget.order.type) {
        case 'Manicura':
            return Color.fromRGBO(250, 208, 211, 1.8);
          break;
        case 'Pedicura':
            return Color.fromRGBO(250, 208, 211, 1.8);
          break;
        case 'Manicura y Pedicura':
            return Color.fromRGBO(243, 227, 249, 1.8);
          break;
        case 'Pestañas':
            return Color.fromRGBO(250, 208, 211, 1.8);
          break;
        case 'Masajes coorporales':
            return Color.fromRGBO(250, 203, 203, 1.8);
          break;
        case 'Cejas':
            return Color.fromRGBO(247, 213, 224, 1.8);
          break;
        default:
      }
    }
    

   return  Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          child: Stack(
            alignment: AlignmentDirectional.centerStart,
            children: <Widget>[
              DelayedReveal(
                delay: Duration(milliseconds: 300),
                child: Container(
                  // width: SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      offset: Offset(0.0, 2.0))
                ],
                  ),
                  child: ListTile(
                    onTap: (){
                      // _.goToDetails(widget.order);

                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderDetails(order: widget.order,user: widget.user,)));
                    },

                    // Fila de arriba
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Servicio - ',
                              style: TextStyle(
                                  color: Color(0xff66A6B7),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.order.state,
                              style: TextStyle(
                                  color: widget.order.state == 'Finalizado' ||
                                          widget.order.state == 'En proceso'
                                      ? Colors.redAccent
                                      : kceleste1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          'Fecha y hora',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff66A6B7),
                          ),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${widget.order.type.split(" ")[0]}...',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.blueGrey),
                        ),
                        Text(
                          widget.order.recolectionStart,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              // fontSize: 13,
                              color: Colors.blueGrey),
                        ),
                      ],
                    ),
                    // trailing: SvgPicture.asset(
                    //   'assets/icons/chevron-right.svg',
                    //   height: 20,
                    //   color: kceleste1,
                    // ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                width: 4,
                height: 40,
                decoration: BoxDecoration(
                color: setCOlor(),
                borderRadius: BorderRadius.circular(10)

                ),
              ),
            ],
          ));
    
  
     
  }
}