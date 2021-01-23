import 'package:flutter/material.dart';
import 'package:bellava_prof/Utils/Sevices/CardServiceType.dart';

class MasajeServList extends StatefulWidget {
  @override
  _MasajeServListState createState() => _MasajeServListState();
}

class _MasajeServListState extends State<MasajeServList> {

  int masajede30 = 0;
  int masajede60 = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CardServiceType( 
            title: 'Masajes desc 30 min',
            info: 'Relaja los músculos aliviando las tensiones que pueden producir en ellos el estrés, la falta de descanso o las malas posturas.Duración: 30 Minutos',
            // price: '0',
            count: masajede30,
            onPressAdd: (){
                if(masajede30 >= 0){
                  setState(() {
                    masajede30 = masajede30 + 50;
                  });
                }
            },
            onPressRemove: (){
                if(masajede30 > 0){
                  setState(() {
                    masajede30 = masajede30 - 50;
                  });
                }
            },
          ),
          CardServiceType( 
            title: 'Masajes desc 60 min',
            info: 'Relaja los músculos aliviando las tensiones que pueden producir en ellos el estrés, la falta de descanso o las malas posturas.Duración: 1 Hs',
            // price: '0',
            count: masajede60,
            onPressAdd: (){
                if(masajede60 >= 0){
                  setState(() {
                    masajede60 = masajede60 + 50;
                  });
                }
            },
            onPressRemove: (){
                if(masajede60 > 0){
                  setState(() {
                    masajede60 = masajede60 - 50;
                  });
                }
            },
          ),
        ],
      ),
    );
  
  }
}