import 'package:bellava_prof/Utils/Sevices/CardServiceType.dart';
import 'package:flutter/material.dart';

class PedicureServiceList extends StatefulWidget {
  @override
  _PedicureServiceListState createState() => _PedicureServiceListState();
}

class _PedicureServiceListState extends State<PedicureServiceList> {

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
  int price12 = 0;
  int price13 = 0;
  int price14 = 0;
  int price15 = 0;
  int price16 = 0;
  int price17 = 0;

  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CardServiceType(
            title: 'Pestañas pelo por pelo',
            info: 'Se aplica la técnica de “pelo por pelo” la cual  adhiere pestañas artificiales con mucho cuidado desde su  la raíz. No es un tratamiento invasivo y logra un efecto natural.',
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
            title: 'Pestañas pelo por pelo 2D',
            info: 'Se aplica la técnica de “pelo por pelo” la cual  adhiere dos pestañas artificiales por cada una pestaña natural, con mucho cuidado desde su  la raíz. No es un tratamiento invasivo y logra un efecto natural.',
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
            title: 'Pestañas pelo por pelo 3D',
            info: 'Se aplica la técnica de “pelo por pelo” la cual  adhiere tres pestañas artificiales por cada una pestaña natural, con mucho cuidado desde su  la raíz. No es un tratamiento invasivo y logra un efecto natural.',
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
            title: 'Pestañas pelo por pelo 4D',
            info: 'Se aplica la técnica de “pelo por pelo” la cual  adhiere cuatro pestañas artificiales por cada una pestaña natural, con mucho cuidado desde su  la raíz. No es un tratamiento invasivo y logra un efecto natural',
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
            title: 'Pestañas pelo por pelo 5D',
            info: 'Se aplica la técnica de “pelo por pelo” la cual  adhiere cinco pestañas artificiales por cada una pestaña natural, con mucho cuidado desde su  la raíz. No es un tratamiento invasivo y logra un efecto natural',
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
            title: 'Pestañas pelo por pelo 6D',
            info: 'Se aplica la técnica de “pelo por pelo” la cual  adhiere seis pestañas artificiales por cada una pestaña natural, con mucho cuidado desde su  la raíz. No es un tratamiento invasivo y logra un efecto natural',
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
            title: 'Extensión pestaña Vol. Ruso',
            info: 'Implantación “pelo a pelo” de filamentos de seda del mismo grosor, curvatura y a medida de nuestras pestañas naturales, logrando una mayor densidad.',
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
            title: 'Extracción de pestañas',
            info: '',
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
            title: 'Service de pestañas pelo por pelo',
            info: 'Se reponen las extensiones que se fueron cayendo. Se reemplazará una pestañas artificiales por cada una pestaña ',
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
            title: 'Service pestañas pelo por pelo 2D',
            info: 'Se reponen las extensiones que se fueron cayendo.Se reemplazará dos pestañas artificiales por cada una pestaña natural.',
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
          CardServiceType(
            title: 'Service pestañas pelo por pelo 3D',
            info: 'Se reponen las extensiones que se fueron cayendo.Se reemplazará tres pestañas artificiales por cada una pestaña natural.',
            count: price11,
            onPressAdd: (){
              if(price11 >= 0){
                  setState(() {
                    price11 = price11 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price11 > 0){
                  setState(() {
                    price11 = price11 - 50;
                  });
                }
            },
          ),
          CardServiceType(
            title: 'Service pestañas pelo por pelo 4D',
            info: 'Se reponen las extensiones que se fueron cayendo.Se reemplazará cuatro pestañas artificiales por cada una pestaña natural.',
            count: price12,
            onPressAdd: (){
              if(price12 >= 0){
                  setState(() {
                    price12 = price12 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price12 > 0){
                  setState(() {
                    price12 = price12 - 50;
                  });
                }
            },
          ),
          CardServiceType(
            title: 'Service pestañas pelo por pelo 5D',
            info: 'Se reponen las extensiones que se fueron cayendo.Se reemplazará dos pestañas artificiales por cada una pestaña natural.',
            count: price13,
            onPressAdd: (){
              if(price13 >= 0){
                  setState(() {
                    price13 = price13 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price13 > 0){
                  setState(() {
                    price13 = price13 - 50;
                  });
                }
            },
          ),
          CardServiceType(
            title: 'Service pestañas pelo por pelo 6D',
            info: 'Se reponen las extensiones que se fueron cayendo.Se reemplazará seis pestañas artificiales por cada una pestaña natural',
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
          CardServiceType(
            title: 'Service Vol. Ruso',
            info: 'Se reponen las extensiones que se fueron cayendo',
            count: price14,
            onPressAdd: (){
              if(price14 >= 0){
                  setState(() {
                    price14 = price14 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price14 > 0){
                  setState(() {
                    price14 = price14 - 50;
                  });
                }
            },
          ),
          CardServiceType(
            title: 'Lifting',
            info: 'Se alarga y crea una ligera curva hacia arriba de manera natural y duradera, consiguiendo mayor longitud y espesor.',
            count: price15,
            onPressAdd: (){
              if(price15 >= 0){
                  setState(() {
                    price15 = price15 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price15 > 0){
                  setState(() {
                    price15 = price15 - 50;
                  });
                }
            },
          ),
          CardServiceType(
            title: 'Lifting con tintura',
            info: 'Se alarga y crea una ligera curva hacia arriba de manera natural y duradera, consiguiendo mayor longitud y espesor. Además se potencia el color, dando una imagen de pestañas maquilladas en todo momento ',
            count: price16,
            onPressAdd: (){
              if(price16 >= 0){
                  setState(() {
                    price16 = price16 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price16 > 0){
                  setState(() {
                    price16 = price16 - 50;
                  });
                }
            },
          ),
          CardServiceType(
            title: 'Tinte de pestañas',
            info: 'Se potencia el color, dando una imagen de pestañas maquilladas en todo momento.',
            count: price17,
            onPressAdd: (){
              if(price17 >= 0){
                  setState(() {
                    price17 = price17 + 50;
                  });
                }
            },
            onPressRemove: (){
              if(price17 > 0){
                  setState(() {
                    price17 = price17 - 50;
                  });
                }
            },
          ),
        ],
      ),
    );
  }
}