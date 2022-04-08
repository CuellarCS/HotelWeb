import 'package:flutter/material.dart';
import 'package:hotelweb/Principal.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
//Funcion login
  static Future<User?> loginUsingEmailPassword({
    required String email,
    required String password,
    required BuildContext context})async{
    FirebaseAuth auth=FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential=await auth.signInWithEmailAndPassword(email: email, password: password);
      user=userCredential.user;
    }on FirebaseAuthException catch(ex){
      if(ex.code=="user-not-found"){
        print("No user found for that email");
      }
    }
    return user;
  }
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Material(
      child: Padding(
        padding: EdgeInsets.all(16.0),
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
              "Ingresa a tu perfil",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 26.0,
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Contraseña',
                prefixIcon: Icon(Icons.lock, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 88.0,
            ),
            Container(
              width: double.infinity,
              child: RawMaterialButton(
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
                onPressed: () async{
                  User? user=await loginUsingEmailPassword(
                      email: _emailController.text.trim(),
                      password: _passwordController.text.trim(),
                      context: context);
                  if(user!=null){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> EstadoPrincipal()),);
                  };
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
