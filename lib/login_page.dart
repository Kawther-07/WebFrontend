import 'package:flutter/material.dart';
import 'package:web_application/fields/my_button.dart';
import 'fields/login_field.dart';
import 'register_page.dart';
import 'doctor_page.dart';
import 'forgotpassword.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  const Padding(
                    padding: EdgeInsets.only(left: 165),
                    child: Text(
                      'Sign in to AppName',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 175),
                    child: Text(
                      'Please enter your details to sign in.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: LoginField(
                      hintText: 'Email',
                      icon: Icons.email,
                      obscureText: false,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: LoginField(
                      hintText: 'Password',
                      icon: Icons.lock,
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 400),
                    //padding: EdgeInsets.only(left: 150, right: 150),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                        );
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: const Color.fromRGBO(89, 93, 229, 1.0), // Changer la couleur pour indiquer qu'il s'agit d'un lien
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                         // decoration: TextDecoration.underline, // Ajouter un soulignement pour indiquer qu'il s'agit d'un lien
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 35),
                  Padding(
                    padding: EdgeInsets.only(left: 150, right: 150),
                    child: ElevatedButton(
                      onPressed: () {
                        // Ajoutez ici la logique à exécuter lorsque le bouton est cliqué
                        // Par exemple, naviguer vers la page 'DoctorPage'
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DashboardScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero, // Supprimer le rembourrage par défaut
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF8D91FD),
                              Color(0xFF595DE5),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 55,
                          alignment: Alignment.center,
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 450,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      'assets/background.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 125,
                  left: 245,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Welcome to appname!\n',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 35),
                        ),
                        TextSpan(
                          text: 'Lorem ipsum dolor sit amet est sodales elit.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 180,
                  right: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 110,
                  right: 90,
                  child: Container(
                    width: 255,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromRGBO(89, 93, 229, 1.0),
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterPage()),
                        );
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                        elevation: MaterialStateProperty.all<double>(0),
                        shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
                      ),
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromRGBO(89, 93, 229, 1.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}