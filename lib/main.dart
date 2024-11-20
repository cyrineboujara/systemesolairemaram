import 'package:flutter/material.dart';
import 'Profil.dart'; // Importation de la page Profil
import 'SecondPage.dart'; // Importation de la deuxième page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "APP_NAME",
      debugShowCheckedModeBanner: false,
      initialRoute:
          '/SecondPage', // Définir la route initiale sur la page de connexion
      routes: {
        '/Profil': (context) => ProfilPage(),
        '/SecondPage': (context) => SecondPage(), // Route pour la deuxième page
      },
    );
  }
}
