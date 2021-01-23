import 'package:bellava_prof/Utils/Sevices/CardServiceType.dart';
import 'package:flutter/material.dart';

class CejaServiceList extends StatefulWidget {
  @override
  _CejaServiceListState createState() => _CejaServiceListState();
}

class _CejaServiceListState extends State<CejaServiceList> {

  int price1 = 0;
  int price2 = 0;
  int price3 = 0; 
  int price4 = 0;
  int price5 = 0;
  int price6 = 0;
  int price7 = 0;
  int price8 = 0;
  int price9 = 0;
  int price10 = 0;
  int price11 = 0;

  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CardServiceType(
            title: 'Perfilado.',
            info: 'Es un servicio de depilación que consiste en darle la forma correcta a tus cejas respetando siempre la forma natural de la misma.',
            count: price1,
            onPressAdd: (){
              if(price1 >= 0){
                  setState(() {
                    price1 = price1 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price1 > 0){
                  setState(() {
                    price1 = price1 - 50;
                  });
                }
            },
          ),
          CardServiceType(
            title: 'Perfilado con Henna',
            info: 'La henna cuenta con componentes naturales que estimulan el crecimiento. Es ideal para cuando se tiene poco bello en las cejas',
            count: price2,
            onPressAdd: (){
              if(price2 >= 0){
                  setState(() {
                    price2 = price2 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price2 > 0){
                  setState(() {
                    price2 = price2 - 50;
                  });
                }
            },
          ),
          CardServiceType(
            title: 'Tinte cejas',
            info: 'Aumenta el volumen y ofrece una sensación de cejas llenas.',
            count: price3,
            onPressAdd: (){
              if(price3 >= 0){
                  setState(() {
                    price3 = price3 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price3 > 0){
                  setState(() {
                    price3 = price3 - 50;
                  });
                }
            },
          ),
          CardServiceType(
            title: 'Sombreado efecto polvo',
            info: 'Tratamiento semi permanente, que mejora y define la forma natural de las cejas con una aplicación de pigmento punto por punto.',
            count: price4,
            onPressAdd: (){
              if(price4 >= 0){
                  setState(() {
                    price4 = price4 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price4 > 0){
                  setState(() {
                    price4 = price4 - 50;
                  });
                }
            },
          ),
          CardServiceType(
            title: 'Microblading',
            info: 'Es una técnica de tatuaje semipermanente, pelo a pelo, que te permitirá lucir unas cejas perfectas y naturales, diseñadas según la forma de tu rostro',
            count: price5,
            onPressAdd: (){
              if(price5 >= 0){
                  setState(() {
                    price5 = price5 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price5 > 0){
                  setState(() {
                    price5 = price5 - 50;
                  });
                }
            },
          ),
          CardServiceType(
            title: 'Microshading',
            info: 'Es una técnica de corrección y relleno de cejas. Se logra un efecto sombreado y más intenso',
            count: price6,
            onPressAdd: (){
              if(price6 >= 0){
                  setState(() {
                    price6 = price6 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price6 > 0){
                  setState(() {
                    price6 = price6 - 50;
                  });
                }
            },
          ),
          CardServiceType(
            title: 'Retoque Microblading/Microshading',
            info: '',
            count: price7,
            onPressAdd: (){
              if(price7 >= 0){
                  setState(() {
                    price7 = price7 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price7 > 0){
                  setState(() {
                    price7 = price7 - 50;
                  });
                }
            },
          ),
        ],
      ),
    );
  }
}