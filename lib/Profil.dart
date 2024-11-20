import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('أين نحن في الكون؟'),
        backgroundColor:
            const Color.fromARGB(255, 183, 58, 58), // Couleur de l'AppBar
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(
            255, 120, 118, 118), // Change le fond du Drawer en noir
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 201, 196, 196), // Fond noir pour le DrawerHeader
              ),
              child: Text(
                'قائمة الصفحة',
                style: TextStyle(
                  color: Colors.white, // Texte blanc
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white), // Icône blanche
              title: Text('الصفحة الرئيسية',
                  style: TextStyle(color: Colors.white)), // Texte blanc
              onTap: () {
                Navigator.pushReplacementNamed(context, '/SecondPage');
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('معلومات', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/Profil');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text('قطع الاتصال', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 183, 58, 58),
              const Color.fromARGB(255, 233, 173, 44),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'هذا سؤال يطرحه الإنسان على نفسه منذ فجر التاريخ؛ “أين نحن في الكون؟”.\n'
                'بادئ ذي بدء، كانت مركزية الأرض هي الإجابة المنطقية، التي كانت مقيدة بمعتقدات وعلوم عصرها: الأرض ثابتة، في حالة ثابتة.\n'
                'سينو'
                'أنستينتي'
                'جرافيا'
                'ويندانت'
                'مركز الكون. هذه الرؤية هي رؤية العصور القديمة حتى القرن السادس عشر. تم التخلي عن نموذج بطليموس هذا لأن الدقة المتزايدة للقياسات العلمية التي تم إجراؤها خلال عصر النهضة لم تعد تجعل من الممكن تحمل الأخطاء الناتجة عنها.\n'
                'ثم جاء عصر مركزية الشمس، وهي نظرية فيزيائية تضع الشمس في مركز الكون. كان نيكولاس كوبرنيكوس أول من اقترح نموذج مركزية الشمس بما في ذلك الأرض وجميع الكواكب المعروفة في ذلك الوقت.\n'
                'ثم قام جاليليو بمراقبة الكواكب باستخدام التلسكوب الذي اخترعه، واكتشف أن النجوم تدور حول نجوم أخرى (الأقمار الجليليين). أضاف كيبلر بعض détails مع قوانينه الثلاثة. في عام 1687، اقترح إسحاق نيوتن صيغة رياضية للجاذبية. منذ القرن السادس عشر، أصبحت مركزية الشمس تدريجيًا تمثل العالم المعتمد بشكل شائع في الغرب.',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset('assets/images/geo.jpg'), // Première image
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset('assets/images/helio.jpg'), // Deuxième image
              ),
            ],
          ),
        ),
      ),
    );
  }
}
