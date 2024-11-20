import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  PageController _pageController = PageController();
  int _currentIndex = 0;

  // Liste des images et descriptions
  final List<Map<String, String>> images = [
    {
      "image": "assets/images/imagesO.jpg",
      "description":
          "عطارد هو أصغر كواكب المجموعة الشمسية وأقربها إلى الشمس، بقطر 4880 كم وكتلة تساوي 0.055 من كتلة الأرض. جاذبيته تعادل 0.387 من جاذبية الأرض. رغم قربه من الشمس، فإن الزهرة أكثر حرارة بسبب تأثير الدفيئة، حيث تصل حرارة عطارد إلى 465 درجة مئوية في النهار وتنخفض إلى -160 درجة مئوية ليلاً. يتكون عطارد من الحديد والنيكل، ويتميز بكثافة عالية (5.44 جم/سم³). سطحه مليء بالفوهات الناتجة.",
    },
    {
      "image": "assets/images/veniss.png",
      "description":
          "كوكب الزهرة هو الكوكب الثاني في النظام الشمسي والسادس من حيث الحجم. ويدور حول الشمس في 224.7 يومًا، وله دورة تراجعية تبلغ 243 يومًا، وهي أطول من أي كوكب آخر. يمتلك كوكب الزهرة مدارًا دائريًا تقريبًا وليس له قمر طبيعي.",
    },
    {
      "image": "assets/images/image1.webp",
      "description":
          "الأرض (🜨) هي الكوكب الثالث في النظام الشمسي والخامس حجمًا. وهو أحد أكبر الكواكب الأرضية والمكان الوحيد المعروف الذي يدعم الحياة. تشكلت الحياة قبل 4.54 مليار سنة، وظهرت هناك منذ حوالي 3.5 إلى 3.8 مليار سنة. قام المحيط الحيوي بتعديل الغلاف الجوي، مما سمح بتكوين طبقة الأوزون والمجال المغناطيسي، اللذين يحميان الأرض من الإشعاعات الضارة.",
    },
    {
      "image": "assets/images/images3.webp",
      "description":
          "المريخ هو الكوكب الرابع في النظام الشمسي وثاني أصغر الكواكب من حيث الحجم والكتلة. يدور على مسافة تتراوح بين 206.6 و249.2 مليون كيلومتر من الشمس، وتبلغ فترة مداره 686.71 يومًا أرضيًا. المريخ كوكب أرضي، ويشترك في ميزاته مع القمر والأرض، مثل الحفر والبراكين والقبعات القطبية. فهي موطن لأكبر بركان، أوليمبوس مونس، وأكبر وادي، فاليس مارينريس، في النظام الشمسي.",
    },
    {
      "image": "assets/images/mchtary.jpg",
      "description":
          "كوكب المشتري هو أكبر كوكب في النظام الشمسي وخامس أكبر كوكب من الشمس. وهو عملاق غازي، ويمثل نحو ثلثي كتلة الكواكب الأخرى. يمكن رؤية كوكب المشتري من الأرض بسطوع كبير، وهو ثالث ألمع جسم في سماء الليل. وهو أحد كواكب المشتري إلى جانب زحل وأورانوس ونبتون.",
    },
    {
      "image": "assets/images/zohal.jpg",
      "description":
          "زحل (♄) هو الكوكب السادس بعداً عن الشمس وثاني أكبر كوكب في النظام الشمسي بعد المشتري. يُصنف ضمن الكواكب الغازية مثل المشتري وأورانوس ونبتون، وتسمى هذه الكواكب . نصف قطر زحل أكبر بتسع مرات من الأرض، لكن كثافته أقل بثماني مرات، وكتلته تفوق الأرض بـ 95 مرة.",
    },
    {
      "image": "assets/images/orus.jpg",
      "description":
          "أورانوس (⛢) هو سابع كوكب من حيث البعد عن الشمس وثالث أضخم كوكب في النظام الشمسي. اكتشفه وليام هرشل في 1781، وهو أول كوكب يُكتشف بالتلسكوب. يشابه تركيب أورانوس نبتون ويُصنف كعملاق جليدي. يتكون غلافه الجوي من الهيدروجين، الهيليوم، والجليد (مثل الماء والميثان). يتميز بكونه الأبرد في المجموعة الشمسية بمتوسط حرارة 49 كلفن (-224 مئوية).",
    },
    {
      "image": "assets/images/nptun.jpg",
      "description":
          "نبتون (♆)، الكوكب الأزرق، هو رابع أكبر كوكب في النظام الشمسي والثامن والأبعد عن الشمس. تبلغ كتلته 17 مرة كتلة الأرض ويكمل دورته حول الشمس كل 164.8 سنة. اكتُشف في 23 سبتمبر 1846 عبر المعادلات الرياضية نتيجة اضطراب مدار أورانوس. زارته مركبة فوياجر 2 عام 1989، وتمت دراسته بالتفصيل لاحقاً باستخدام تلسكوب هابل.",
    },
    {
      "image": "assets/images/nj.jpg",
      "description":
          "النجم هو جسم فلكي كروي من البلازما ضخم ولامع ومتماسك بفعل الجاذبية. يستمد النجم لمعانه من الطاقة النووية المتولدة فيه، حيث تلتحم ذرات الهيدروجين مع بعضها البعض مكونة عناصر أثقل من الهيدروجين، مثل الهيليوم والليثيوم وباقي العناصر الخفيفة حتى عنصر الحديد. إن هذا التفاعل الفيزيائي يسمى اندماجاً نووياً تنتج عنهُ طاقة حرارية كبيرة جدًا تصل إلينا في صورة أشعة ضوئية.",
    },
    {
      "image": "assets/images/chams.jpg",
      "description":
          "الشمس هي إحدى نجوم مجرتنا - مجرة، درب التبانة - التي تحوي تقريباً نحو 200 مليار نجم، ومجرتنا نفسها تتبع مجموعة مجرات أخرى تسمى المجموعة المحلية، ويبلغ الفضاء الكوني الذي تشغله تلك المجموعة كرة نصف قطرها نحو 10 ملايين سنة ضوئية (هذا بالمقارنة بسرعة الضوء الذي يصلنا من الشمس مستغرقا نحو 8 دقائق على الطريق).",
    },
  ];

  void _nextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % images.length;
    });
  }

  void _previousImage() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + images.length) % images.length;
    });
  }

  // Formatage de la description avec mise en valeur du premier mot
  TextSpan _formatDescription(String description) {
    List<String> parts = description.split(" ");
    String firstWord = parts.isNotEmpty ? parts[0] : '';
    String rest = parts.length > 1 ? parts.sublist(1).join(" ") : '';

    return TextSpan(
      style: TextStyle(color: Colors.white, fontSize: 18),
      children: [
        TextSpan(
          text: firstWord + " ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(176, 236, 79, 79),
          ),
        ),
        TextSpan(
          text: rest,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('رحلة في الكواكب'),
        backgroundColor: const Color.fromARGB(
            255, 150, 128, 128), // Garde la couleur orange du titre
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
                Navigator.pushReplacementNamed(context, '/FirstPage');
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
      body: Stack(
        children: [
          Container(
            color: Colors.black, // Fond noir pour le corps
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          images[_currentIndex]["image"]!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        height: 50,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          color: Colors.black.withOpacity(0.7),
                          child: RichText(
                            text: _formatDescription(
                                images[_currentIndex]["description"]!),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: _previousImage,
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                      onPressed: _nextImage,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
