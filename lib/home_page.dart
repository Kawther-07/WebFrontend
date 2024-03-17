import 'package:flutter/material.dart';
import 'package:web_application/login_page.dart'; // Importez la nouvelle page login.dart
import 'Register_page.dart'; // Importez la nouvelle page register.dart



class HomePage extends StatelessWidget {
  final GlobalKey whatWeDoKey = GlobalKey();
  final GlobalKey moreAboutUsKey = GlobalKey();
  final GlobalKey contactUsKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF0F2FF),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'AppName',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF595DE5),
                ),
              ),
            ),
            Spacer(),
            NavBarItem(
              title: 'Services',
              textColor: Colors.black,

              onPressed: () {
                Scrollable.ensureVisible(whatWeDoKey.currentContext!,
                    duration: Duration(milliseconds: 500), alignment: 0.5);
              },
            ),
            NavBarItem(
              title: 'About Us',
              textColor: Colors.black,
              onPressed: () {
                Scrollable.ensureVisible(moreAboutUsKey.currentContext!,
                    duration: Duration(milliseconds: 500), alignment: 0.5);
              },
            ),
            NavBarItem(
              title: 'Contact Us ',
              textColor: Colors.black,
              onPressed: () {
                Scrollable.ensureVisible(contactUsKey.currentContext!,
                    duration: Duration(milliseconds: 500),
                    alignment: 0.5);
              },
            ),
            SizedBox(width: 20),
            NavBarItem(
              title: 'Login',
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
            NavBarItem(
              title: 'Register',
              backgroundColor: Color(0xFF595DE5),
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFF0F2FF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 90.0, top: 200.0),
                child: Text(
                  'Diabetic Foot Health Management',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 90.0),
                child: Text(
                  ' Diabetic foot ulcers (DFUs) are a common diabetes consequence that,'
                      ' if not addressed, can lead to major health problems.\n Early detection and proactive management are essential in avoiding complications including infections and amputations.'
                      'So,we propose a comprehensive system whitch is our app DOOLAB composed of two parts: a mobile application for patients and a web application for doctors and admins.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 450,
                      height: 200,
                      child: Image.asset('background.jpg'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50), // Espacement entre les sections
              // Nouvelle section "Services"
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  key: whatWeDoKey,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'WHAT WE DO',
                      style: TextStyle(
                        color: Color(0xFF595DE5),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'We provide the Perfect Solution\nto your foot health',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 32), // Espacement entre le texte et les icônes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ServiceIcon(
                          iconData: Icons.favorite,
                          color: Color(0xFF595DE5),
                          title: 'Tracking Patient’s Condition',
                          subtitle:
                          'We help patient keep track hid diabetes remotly',
                        ),
                        ServiceIcon(
                          iconData: Icons.favorite,
                          color: Colors.teal,
                          title: 'Early Detection',
                          subtitle:
                          'We help identify the best ways to improve your business',
                        ),
                        ServiceIcon(
                          iconData: Icons.work,
                          color: Colors.grey,
                          title: 'Improve Business Model',
                          subtitle:
                          'We help identify the best ways to improve your business',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              // Nouvelle section "Statistics Display" avec fond bleu
              Container(
                color: Color(0xFFF0F2FF), // Fond bleu clair
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStatisticItem(
                      icon: Icons.group,
                      title: 'Patient Satisfaction',
                      value: '90%', // Exemple de valeur
                    ),
                    _buildStatisticItem(
                      icon: Icons.calendar_today,
                      title: 'Years Experience',
                      value: '10 yrs', // Exemple de valeur
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'More About Us',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF595DE5),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'WE help businesses like yours earn more customers,\n stand out from competitors, make more money',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    MoreAboutUsSection(key: moreAboutUsKey),
                  ],
                ),
              ),
              // SizedBox(height: 50),
              // Section des témoignages
              TestimonialsSection(),
              SizedBox(height: 80),
              // FooterSections
              Container(
                color: Color(0xFFF0F2FF),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FooterSection(
                      title: 'WEB LOGO',
                      content:
                      'Some footer text about the Agency.\n Just a little description to help people understand you better.',
                      icons: [
                        Icons.facebook,
                        // Icons.twitter,
                        // Icons.linkedin,
                        // Icons.instagram,
                      ],
                    ),
                    FooterSection(
                      title: 'Quick Links',
                      links: ['Services', 'Portfolio', 'About Us', 'Contact Us'],
                    ),
                    FooterSection(
                      title: 'Address',
                      content: 'Design Agency Head Office.\nAirport Road\nUnited Arab Emirate',
                      scrollKey: contactUsKey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback? onPressed;

  const NavBarItem({
    required this.title,
    this.backgroundColor,
    this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}

class ServiceIcon extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String title;
  final String subtitle;

  const ServiceIcon({
    Key? key,
    required this.iconData,
    required this.color,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              iconData,
              size: 48,
              color: color,
            ),
            SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildStatisticItem({
  required IconData icon,
  required String title,
  required String value,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(
        icon,
        size: 48,
        color: Color(0xFF595DE5),
      ),
      SizedBox(height: 8),
      Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
      SizedBox(height: 4),
      Text(
        value,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xFF595DE5),
        ),
      ),
    ],
  );
}

class MoreAboutUsSection extends StatelessWidget {
  final Key? key; // Ajoutez le paramètre Key ici

  const MoreAboutUsSection({
    this.key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      key: key,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: VideoItem(
                    videoUrl: 'https://www.example.com/video1.mp4',
                    title: 'How to ....?',
                    subtitle: 'Description de la vidéo 1',
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: VideoItem(
                    videoUrl: 'https://www.example.com/video2.mp4',
                    title: 'How to ....?',
                    subtitle: 'Description de la vidéo 2',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: VideoItem(
                    videoUrl: 'https://www.example.com/video3.mp4',
                    title: 'How to ....?',
                    subtitle: 'Description de la vidéo 3',
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: VideoItem(
                    videoUrl: 'https://www.example.com/video4.mp4',
                    title: 'How to ....?',
                    subtitle: 'Description de la vidéo 4',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class VideoItem extends StatelessWidget {
  final String videoUrl;
  final String title;
  final String subtitle;

  const VideoItem({
    Key? key,
    required this.videoUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Implémentez la logique pour afficher la vidéo avec la description ici.
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Affichez la vidéo ici en utilisant le package vidéo ou tout autre package approprié.
          // Vous pouvez également utiliser une image ou une icône à la place de la vidéo à des fins de démonstration.
          // Placeholder pour la vidéo
          Icon(Icons.play_circle_outline, size: 50, color: Colors.blue),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class TestimonialsSection extends StatefulWidget {
  @override
  _TestimonialsSectionState createState() => _TestimonialsSectionState();
}

class _TestimonialsSectionState extends State<TestimonialsSection> {
  final List<Map<String, String>> testimonials = [
    {
      'text':
      "Merci pour votre service. Je suis très satisfait du résultat. J'ai vu une croissance exponentielle de mon entreprise et c'est grâce à votre service exceptionnel.",
      'name': 'Emily Stones',
      'position': 'PDG, Marketing Guru',
    },
    {
      'text':
      "Votre service a vraiment fait la différence pour notre entreprise. Nous avons vu une amélioration significative de nos performances depuis que nous avons commencé à travailler avec vous. Merci pour votre excellent travail!",
      'name': 'John Doe',
      'position': 'Directeur général',
    },
    {
      'text':
      "Je recommande vivement votre service à tous ceux qui cherchent à développer leur entreprise. Vous avez vraiment fait un travail exceptionnel pour nous, et nous sommes très reconnaissants.",
      'name': 'Alice Smith',
      'position': 'Propriétaire de petite entreprise',
    },
  ];

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TESTIMONIALS',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF595DE5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        _pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'See What Our Patient Say About Us',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            height: 220,
            child: PageView.builder(
              controller: _pageController,
              itemCount: testimonials.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ReviewCard(
                    reviewText: testimonials[index]['text']!,
                    reviewerName: testimonials[index]['name']!,
                    reviewerTitle: testimonials[index]['position']!,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 80),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'DOWNLOAD',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF595DE5),
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Download Our App Mobile To Get More Foot Care',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Ajoutez votre logique de téléchargement ici
                  },
                  child: Text('LINK'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String reviewText;
  final String reviewerName;
  final String reviewerTitle;

  const ReviewCard({
    Key? key,
    required this.reviewText,
    required this.reviewerName,
    required this.reviewerTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Color(0xFFFFFFFF),
      child: Container(
        width: 150, // Définissez la largeur souhaitée
        height: 150, // Définissez la hauteur souhaitée
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(
                reviewText,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 20),
              Text(
                reviewerName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                reviewerTitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  final String title;
  final String? content;
  final List<IconData>? icons;
  final List<String>? links;
  final Key? scrollKey;

  const FooterSection({
    Key? key,
    required this.title,
    this.content,
    this.icons,
    this.links,
    this.scrollKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      key: scrollKey,
      children: [

        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color(0xFF0C0C0E),
          ),
        ),
        SizedBox(height: 10),
        if (content != null) ...[
          Text(
            content!,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
        ],
        if (icons != null) ...[
          Row(
            children: icons!.map((icon) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(icon),
              );
            }).toList(),
          ),
          SizedBox(height: 10),
        ],
        if (links != null) ...[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: links!.map((link) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  link,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ],
    );
  }
}