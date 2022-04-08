import 'package:flutter/material.dart';
import 'package:hotelweb/Principal.dart';

class Registro extends StatefulWidget {
  @override
  State<Registro> createState() => _Registro();
}

class _Registro extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Hotel web",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Registrate",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Ingresar Email",
                prefixIcon: Icon(Icons.mail, color: Colors.black,),
              ),
            ),
            SizedBox(height: 26.0,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Ingresar Contraseña',
                prefixIcon: Icon(Icons.lock, color: Colors.black),
              ),
            ),
            SizedBox(height: 26.0,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Repetir Contraseña',
                prefixIcon: Icon(Icons.lock, color: Colors.black),
              ),
            ),
            SizedBox(height: 88.0,),
            Container(
              width: double.infinity,
              child: RawMaterialButton(
                child: Text("Registrarse",
                  style: TextStyle(color: Colors.white, fontSize: 18.0,),
                ),
                fillColor: Color(0xFF0089FE),
                elevation: 0.0,
                padding: EdgeInsets.symmetric(vertical: 20.0,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> EstadoPrincipal()),);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
