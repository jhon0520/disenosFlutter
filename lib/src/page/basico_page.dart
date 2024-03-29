import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle (fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),

        ],
      ),
    );
  }

  Widget  _crearImagen() {
    return Image(
            image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          );
  }

  Widget _crearTitulo() {
    return Container(

            padding: EdgeInsets.symmetric(horizontal:  30.0, vertical: 20.0) ,

            child: Row(
              children: <Widget>[

                //Permite expandir todo el contenido horizontalmente en todo el espacio que tenga.
                Expanded(
                  child: Column(
                           
                    //Alineacion vertical hacia la izquierda.
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Text('Lago con un puente', style: estiloTitulo,),
                      SizedBox( height: 7.0),
                      Text('Lago en alemania', style: estiloSubTitulo,),
                    ],
                  ),
                ),

                Icon(Icons.star, color: Colors.red, size: 30.0),
                Text('41', style: TextStyle( fontSize: 20.0))
              ],
            ),
          );
  }

  Widget _crearAcciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue,),
            SizedBox( height: 20.0),
            Text(texto, style: TextStyle( fontSize: 15.0, color: Colors.blue))
            
          ],
        );
  }

  Widget _crearTexto() {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text('Sint culpa ut qui ex fugiat id enim consequat et occaecat commodo anim aliqua. Do aute quis excepteur magna amet in est. Ipsum voluptate elit ullamco labore minim nostrud eiusmod duis amet dolor.',
      textAlign: TextAlign.justify )
      );

  }
}