import 'package:flutter/material.dart';
class CuartoDoble extends StatefulWidget{
  @override
  State<CuartoDoble> createState()=> _CuartoDoble();
}
class _CuartoDoble extends State<CuartoDoble>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuarto doble individuales'),
      ),
      body: Column(
        children: <Widget>[
          Image(
            image: NetworkImage('data:image/jpeg;base64,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'),
          ),
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: Column(
                    children: [
                      Text(''),
                      Text('Cuarto doble individuales'),
                      Text(''),
                      Expanded(child: Text('Habitaciones clásicas y elegantes, pero con detalles contemporáneos y una decoración exquisita. Muy acogedoras, dan una sensación de confort intemporal; diseñadas para momentos especiales y estancias tranquilas. Las habitaciones individuales, con 18 m2, tienen cama individual, baño en mármol con bañera y vistas a la villa de Estoril. Además, le reciben con una bebida de bienvenida.', textAlign: TextAlign.justify,),)
                    ],
                  ),),
                  Expanded(child: Column(children: <Widget>[
                    Expanded(child: Column(children: <Widget>[
                      Text(''),
                      Text('Comodidades de la habitación:', textAlign: TextAlign.center,),
                      Text(''),
                      Text('- Wifi gratuito',textAlign: TextAlign.left,),
                      Text('- Aire acondicionado con termostato individual',textAlign: TextAlign.left,),
                      Text('- Televisión LCD-100 canales',textAlign: TextAlign.justify,),
                      Text('- Teléfono',textAlign: TextAlign.justify,),
                      Text('- Minibar',textAlign: TextAlign.justify,),
                      Text('- Caja fuerte individual digital',textAlign: TextAlign.justify,),
                      Text('- Internet ADSL',textAlign: TextAlign.justify,),
                      Text('- Escritorio',textAlign: TextAlign.justify,),
                      Text('- Albornoz',textAlign: TextAlign.justify,),
                      Text('- Secador de pelo',textAlign: TextAlign.justify,),
                      Text('- Espejo de afeitado',textAlign: TextAlign.justify,),
                      Text('- Productos de higiene',textAlign: TextAlign.justify,),],))
                  ],))
                ],
              ))
        ],
      ),
    );
  }
}