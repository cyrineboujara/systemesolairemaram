import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('أين نحن في الكون؟'),
        backgroundColor:
            const Color.fromARGB(255, 183, 143, 58), // Couleur de l'AppBar
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 183, 143, 58),
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
