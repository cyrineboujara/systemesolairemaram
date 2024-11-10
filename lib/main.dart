import 'package:flutter/material.dart';
import 'login.dart'; // Importation de la page Login
import 'Profil.dart'; // Importation de la page Profil
import 'FirstPage.dart'; // Importation de la première page
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
          '/login', // Définir la route initiale sur la page de connexion
      routes: {
        '/login': (context) => LoginPage(),
        '/Profil': (context) => ProfilPage(),
        '/FirstPage': (context) => FirstPage(), // Route pour la première page
        '/SecondPage': (context) => SecondPage(), // Route pour la deuxième page
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP_NAME'),
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profil'),
              onTap: () {
                Navigator.pushNamed(context, '/Profil');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Déconnexion'),
              onTap: () {
                // Logique de déconnexion
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
            'Bienvenue dans l\'application'), // Affichage d'un message par défaut
      ),
    );
  }
}
