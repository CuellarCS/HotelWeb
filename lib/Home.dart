import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelweb/Login.dart';
import 'package:hotelweb/Registro.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Hotel Web",
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "No es un Hotel y ya, es el lugar perfecto para reir, disfutar y soñar",
              style: TextStyle(
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RawMaterialButton(
                      child: Text(
                        "Ingresar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      fillColor: Color(0xFF0089FE),
                      elevation: 0.0,
                      padding: EdgeInsets.symmetric(
                        vertical: 20.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(width: 60),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[RawMaterialButton(
                    child: Text(
                      "Registrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    fillColor: Color(0xFF0089FE),
                    elevation: 0.0,
                    padding: EdgeInsets.symmetric(
                      vertical: 20.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Registro()),
                      );
                    },
                  ),],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
