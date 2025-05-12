import 'package:flutter/material.dart';
import 'package:miscles/pagina_cinco.dart';
import 'package:miscles/pagina_cuatro.dart';
import 'package:miscles/pagina_dos.dart';
import 'package:miscles/pagina_seis.dart';
import 'package:miscles/pagina_siete.dart';
import 'package:miscles/pagina_tres.dart';
import 'package:miscles/pagina_uno.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre paginas Routes",
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla_dos': (context) => const PantallaDos(),
        '/pantalla_tres': (context) => const PantallaTres(),
        '/pantalla_cuatro': (context) => const PantallaCuatro(),
        '/pantalla_cinco': (context) => const PantallaCinco(),
        '/pantalla_seis': (context) => const PantallaSeis(),
        '/pantalla_siete': (context) => const PantallaSiete(),
      },
    );
  }
}
