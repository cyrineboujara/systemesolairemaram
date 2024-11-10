import 'package:flutter/material.dart';
import 'secondpage.dart'; // Importation de la deuxième page

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('النظام الشمسي'),
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'قائمة الصفحة',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('الصفحة الرئيسية'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/FirstPage');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(' معلومات'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/Profil');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('قطع الاتصال'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Image de fond
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/images2.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Contenu principal
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // La carte avec l'image et la liste des planètes
                _buildPublicationCard("assets/images/images6.jpg", [
                  "عطارد",
                  " الزهرة",
                  " الأرض",
                  "مارس",
                  "كوكب المشتري",
                  " زحل",
                  " أورانوس",
                  " نبتون"
                ]),
                SizedBox(height: 20), // Espacement
                ElevatedButton(
                  onPressed: () {
                    // Navigation vers la deuxième page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  },
                  child: Text('شاهد المزيد'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPublicationCard(String imagePath, List<String> items) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
              height: 350,
              width: 300,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: items
                  .asMap()
                  .entries
                  .map(
                    (entry) => Text(
                      "${entry.key + 1}. ${entry.value}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors
                            .white, // Changer la couleur pour contraster avec le fond
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
