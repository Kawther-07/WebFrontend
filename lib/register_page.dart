import 'package:flutter/material.dart';
import 'package:web_application/fields/my_button.dart';
import 'fields/login_field.dart';
import 'login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 0,
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
                  left: 70,
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
                  left: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Already have an account?",
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
                    right: 265,
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
                          MaterialPageRoute(builder: (context) => const LoginPage()),
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
                        'Sign in',
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
        
      
    
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(left: 175),
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 155),
                    child: Text(
                      'Please enter your details to get started.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: LoginField(
                      hintText: 'First name',
                      icon: Icons.person,
                      obscureText: false,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: LoginField(
                      hintText: 'Last name',
                      icon: Icons.person,
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: LoginField(
                      hintText: 'Email',
                      icon: Icons.email,
                      obscureText: false,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: LoginField(
                      hintText: 'Password',
                      icon: Icons.lock,
                      obscureText: true,
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(left: 155),
                    child: MyButton(
                      gradientColors: [
                        Color(0xFF8D91FD),
                        Color(0xFF595DE5),
                      ],
                    ),

                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class DialogHelper {
  static void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Hello,"),
          content: Text("Send an email to the administrator contains your documents\n (diplom,agreement)to validate your account"),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),

              onPressed: () {
                Navigator.of(context).pop(); // Fermer la boîte de dialogue
              },
            ),
          ],
        );
      },
    );
  }
}