

# Iniciar proyecto Flutter

flutter packages get

## Notas:

**mainAxisAlignment :**

Se utiliza en los Row para alineación horizontal.

mainAxisAlignment: MainAxisAlignment.spaceAround

**crossAxisAlignment :**

Se utiliza en las Column para alineación vertical.

crossAxisAlignment: CrossAxisAlignment.start

**SizedBox :**

Permite hacer separación entre widget, ya sea de altura o ancho.

SizedBox( height: 7.0)

**PageView :**

Widget que permite hacer escroll en una página.
Se puede configurar hacia dónde se quiere hacer scroll.

**Poner una imagen de fondo para la página**

Container(
     width: double.infinity,
     height: double.infinity,
     child: Image(
       image: AssetImage('assets/scroll-1.png'),
       //Expande la imagen para que ocupe el mayor espacio que pueda.
       fit: BoxFit.cover,
     ),
   );