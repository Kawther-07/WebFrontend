import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard UI',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F2FF),
      body: Row(
        children: <Widget>[
          Container(
            color: Colors.white,
            width: 200,
            child: Padding(
              padding: EdgeInsets.only(top: 70), // Ajout du padding en haut
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Logo de l'application
                  Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset('logo.png'),
                      ),
                      SizedBox(width: 10), // Espace entre le logo et le texte
                      Text(
                        'DOOLAB',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50), // Espace entre le nom de l'application et les options
                  Column(
                    children: <Widget>[
                      buildOption(Icons.dashboard, 'Dashboard', 0),
                      SizedBox(height: 10),
                      buildOption(Icons.analytics, 'Analytics', 1),
                      SizedBox(height: 10),
                      buildOption(Icons.notifications, 'Notification', 2),
                      SizedBox(height: 10),
                      buildOption(Icons.person, 'Profile', 3),
                      SizedBox(height: 10),
                      buildOption(Icons.settings, 'Settings', 4),
                    ],
                  ),
                  SizedBox(height: 200),
                  Row(
                    children: [
                      Icon(Icons.person), // Icône du médecin
                      SizedBox(width: 10), // Espace entre l'icône et le nom du médecin
                      Text(
                        'Dr. John Doe', // Nom du médecin
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(), // Pour pousser l'icône de déconnexion à droite
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            '/home_page', // Remplacez '/homepage' par le nom de votre route vers la page d'accueil
                                (Route<dynamic> route) => false,
                          );
                        },
                        icon: Icon(Icons.logout), // Icône de déconnexion
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
             padding: EdgeInsets.only(left: 80.0, right: 25.0,top:20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Statistic Cards
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      StatCard(title: 'Save Patient', value: '178+', icon: Icons.store),
                      StatCard(title: 'Stock Products', value: '20+', icon: Icons.inventory),
                      StatCard(title: 'Sales Products', value: '190+', icon: Icons.shopping_cart),
                      StatCard(title: 'Job Application', value: '12+', icon: Icons.work),
                    ],
                  ),

                  SizedBox(height: 20),
                  Text(
                    'Reports',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //SizedBox(height: 10),
                  // Conditional widgets based on selected index
                  if (_selectedIndex == 0)
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white, // Couleur de fond blanche pour le conteneur du LineChartWidget
                            padding: EdgeInsets.all(20), // Ajout de remplissage pour espacer le graphique de ses bords
                            child: LineChartWidget(), // Ajout du LineChartWidget dans le conteneur
                          ),
                        ),
                        SizedBox(width: 20), // Espace entre les deux graphiques
                        CircularChartWidget(),
                      ],
                    ),

                  // if (_selectedIndex == 2) RecentOrdersTable(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOption(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: _selectedIndex == index ? Colors.blue : Colors.grey,
          ),
          SizedBox(width: 5),
          Text(
            label,
            style: TextStyle(
              color: _selectedIndex == index ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  const StatCard({Key? key, required this.title, required this.value, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: <Widget>[
            Icon(icon, size: 40),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(value, style: Theme.of(context).textTheme.headline6),
                Text(title),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LineChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,

      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(
            leftTitles: SideTitles(showTitles: true),
            bottomTitles: SideTitles(showTitles: true),
          ),
          borderData: FlBorderData(show: true),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(1, 0),
                FlSpot(2, 3),
                FlSpot(3, 4),
                FlSpot(4, 3),
                FlSpot(5, 12),
                FlSpot(6, 4),
                FlSpot(7, 6),
                FlSpot(8, 4),
                FlSpot(9, 3),
                FlSpot(10, 7),
                FlSpot(11, 4),
                FlSpot(12, 3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CircularChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      color: Colors.white,
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
             // title: 'Done',
              value: 80,
              color: Colors.green,
            ),
            PieChartSectionData(
             // title: 'Postponed',
              value: 15,
              color: Colors.orange,
            ),
            PieChartSectionData(
             // title: 'Canceled',
              value: 5,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
