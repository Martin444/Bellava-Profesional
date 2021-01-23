import 'package:flutter/material.dart';
import 'package:bellava_prof/Utils/Sevices/CardServiceType.dart';

class ManicuraServiceList extends StatefulWidget {
  @override
  _ManicuraServiceListState createState() => _ManicuraServiceListState();
}

class _ManicuraServiceListState extends State<ManicuraServiceList> {

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
            title: 'Esmaltado Común',
            info: 'Más de 25 colores a disposición. Ideal para mantener tus uñas protegidas y prolijas. Duración del servicio: Aprox 50 Min',
            // price: '0',
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
            title: 'Esmaltado Semipermanente',
            info: 'Más de 20 colores a disposición. La base y el top coat harán que el esmaltado perdure y proteja tus uñas por mayor tiempo. Duración del servicio: Aprox 1 Hs.',
            // price: '0',
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
            title: 'Esculpidas (Gel o Acrílico) con esmalte común',
            info: 'Más de 25 colores a disposición. Perfectas para lucir unas uñas largas y finas durante largo tiempo. Duración del servicio: aprox 1:15 Hs',
            // price: '0',
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
            title: 'Esculpidas (Gel o Acrílico) con esmalte semi',
            info: 'Más de 20 colores a disposición. Perfectas para lucir unas uñas largas y finas. La base y el top coat harán que el esmaltado perdure y proteja tus uñas por mayor tiempo. Duración del servicio: aprox 1:15 Hs',
            // price: '0',
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
            title: 'Service de esculpidas con esmalte común',
            info: 'Se realiza un limado y retoque de la uña en general para que permanezcan como nuevas. Duración del servicio: aprox 1 Hs',
            // price: '0',
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
            title: 'Service de esculpidas con esmalte semi',
            info: 'Se realiza un limado y retoque de la uña en general para que permanezcan como nuevas. Duración del servicio: aprox 1 ',
            // price: '0',
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
            title: 'Service de semi con esmalte común',
            info: 'Se realiza un limado y retoque de la uña en general para que permanezcan como nuevas. Duración del servicio: aprox 1 Hs',
            // price: '0',
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
        
          CardServiceType( 
            title: 'Service de semipermanente con esmalte semi',
            info: 'Se realiza un limado y retoque de la uña en general para que permanezcan como nuevas. Duración del servicio: aprox 1:15 Hs',
            // price: '0',
            count: price8,
            onPressAdd: (){
                if(price8 >= 0){
                  setState(() {
                    price8 = price8 + 50;
                  });
                }
            },
            onPressRemove: (){
                if(price8 > 0){
                  setState(() {
                    price8 = price8 - 50;
                  });
                }
            },
          ),
        
          CardServiceType( 
            title: 'Decoración simple por uña',
            info: '',
            // price: '0',
            count: price9,
            onPressAdd: (){
                if(price9 >= 0){
                  setState(() {
                    price9 = price9 + 50;
                  });
                }
            },
            onPressRemove: (){
                if(price9 > 0){
                  setState(() {
                    price9 = price9 - 50;
                  });
                }
            },
          ),
        
          CardServiceType( 
            title: 'Decoración diseño por uña',
            info: '',
            // price: '0',s
            count: price10,
            onPressAdd: (){
                if(price10 >= 0){
                  setState(() {
                    price10 = price10 + 50;
                  });
                }
            },
            onPressRemove: (){
                if(price10 > 0){
                  setState(() {
                    price10 = price10 - 50;
                  });
                }
            },
          ),
        
        
        ],
      ),
    );
  
  }
}