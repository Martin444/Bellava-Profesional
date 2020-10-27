import 'package:bellava_prof/Screens/Home/Homepage.dart';
import 'package:bellava_prof/Utils/anim/delayed_reveal.dart';
import 'package:bellava_prof/Utils/button_green.dart';
import 'package:bellava_prof/Utils/consts.dart';
import 'package:bellava_prof/Utils/gradient_back.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bellava_prof/Screens/TyC/Tyc.dart';


class SingninPage extends StatefulWidget {

  String textButton = "Leer";

  @override
  _SingninPageState createState() => _SingninPageState();
}

class _SingninPageState extends State<SingninPage> {
  bool acept = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,

        children: <Widget>[
          GradientBack(),
          Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   DelayedReveal(
                    delay: Duration(milliseconds: 500),
                    child: Text("Bellavá",
                      style: TextStyle(
                          fontSize: 27.0,
                          fontFamily: "Lato",
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  DelayedReveal(
                    delay: Duration(milliseconds: 1000),
                    child: Container(
                        padding: EdgeInsets.only(right: 20.0, left: 20.0),
                        margin: EdgeInsets.only(bottom: 13.0, top: 12.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "Lato",
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold
                          ),
                          validator: (input){
                            if(input.isEmpty){
                              return 'Provea un Email valido';
                            }
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFe5e5e5),
                              border: InputBorder.none,
                              hintText: 'Email',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFe5e5e5)),
                                  borderRadius: BorderRadius.all(Radius.circular(9.0))
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFe5e5e5)),
                                  borderRadius: BorderRadius.all(Radius.circular(9.0))
                              )
                          ),
                          onSaved: (input) => _email = input,
                        )
                    ),
                  ),

                  DelayedReveal(
                    delay: Duration(milliseconds: 1200),
                    child: Container(
                        padding: EdgeInsets.only(right: 20.0, left: 20.0),
                        margin: EdgeInsets.only(bottom: 13.0,),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "Lato",
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold
                          ),
                          validator: (input){
                            if(input.isEmpty){
                              return 'Provea un Email valido';
                            }
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFe5e5e5),
                              border: InputBorder.none,
                              hintText: 'Contraseña',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFe5e5e5)),
                                  borderRadius: BorderRadius.all(Radius.circular(9.0))
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFe5e5e5)),
                                  borderRadius: BorderRadius.all(Radius.circular(9.0))
                              )
                          ),
                          onSaved: (input) => _password = input,
                          obscureText: true,
                        )
                    ),
                  ),

                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Checkbox(
                          hoverColor: Colors.white,
                          focusColor: Colors.white,
                          activeColor: Colors.white,
                          checkColor: korange,
                          onChanged: (bool value){
                            setState(() {
                              acept = value;
                              acept ? 
                              widget.textButton = "Iniciar": widget.textButton = "Leer";
                            });
                          },
                          value: acept,),
                        Text("Acepto los términos y condiciones",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),

                  DelayedReveal(
                    delay: Duration(milliseconds: 1400),
                    child: ButtonGreen(
                      text: widget.textButton,
                      onPressed: signin,
                      width: 300.0,
                      height: 50.0,
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }

    void signin() async {
      if(acept){
        setState(() {
          widget.textButton = "Cargando...";
        });

        if(_formKey.currentState.validate()){
          _formKey.currentState.save();
          try{
            AuthResult authResult = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(user: authResult)));
          }catch(e){
            print(e.message);
          }
        }

      }else {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Terms()));
      }
  }
}