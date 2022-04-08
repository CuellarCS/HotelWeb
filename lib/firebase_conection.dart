import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hotelweb/Login.dart';

class EstadoAppConeccionFirebase extends StatefulWidget{
  @override
  State<EstadoAppConeccionFirebase> createState() => _EstadoAppConeccionFirebase();
}

class _EstadoAppConeccionFirebase extends State<EstadoAppConeccionFirebase>{
  //Inicializar Firebase
  Future<FirebaseApp> _initializeFirebase() async{
    FirebaseApp firebaseApp= await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _initializeFirebase(),
          builder: (context, snapshot){
            if(snapshot.connectionState==ConnectionState.done){
              return Login();
            }else{
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }
      ),
    );
  }
}