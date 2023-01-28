import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practices_homework/components/constants.dart';
import 'package:practices_homework/views/forgot_password.dart';
import 'package:practices_homework/views/home_page.dart';
import 'package:practices_homework/views/popular_menu_page.dart';
import 'package:practices_homework/views/popular_restaurant_page.dart';
import 'package:practices_homework/views/register.dart';

import '../components/constants.dart';
import '../components/constants.dart';
import '../components/constants.dart';
import 'demo_sliver_lesson.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});
  static const String routeName = '/LoginForm';
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginForm> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 80),
              width: MediaQuery.of(context).size.width,
              // child: const Text('Login to',
              //   textAlign: TextAlign.left,
              //   style: TextStyle(
              //     fontSize: 32,
              //     fontFamily: 'Product_Sans',
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
            ),
            Image.asset(
              "assets/images/login_logo.png",
              height: 200.0,
              width: 200.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Sign in to your account',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 23,
                    fontFamily: 'Product_Sans',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF09101D)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24, bottom: 5),
              margin: const EdgeInsets.only(left: 24),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Email*',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2C3A4B),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                style: const TextStyle(
                    fontWeight: FontWeight.w600, color: Color(0xFF09101D)),
                decoration: InputDecoration(
                  // fillColor: Colors.white,
                  // filled: true,
                  hintText: 'Email or Phone Number',
                  hintStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFDADEE3)),
                  // suffixIcon: const Icon(Icons.mail_outline),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 3, color: Color(0xFFEBEEF2)), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color(0xFF09101D)), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color:
                            Color.fromARGB(255, 66, 125, 145)), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24, bottom: 5, top: 20),
              margin: const EdgeInsets.only(left: 24),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Password*',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2C3A4B),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                obscureText: true,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFFDADEE3)),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFDADEE3)),
                  suffixIcon: const Icon(Icons.visibility),
                  // suffixIcon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 3, color: Color(0xFFEBEEF2)), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0),
                    borderSide: const BorderSide(
                        color: Color(0xff000000)), //<-- SEE HERE
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0),
                    borderSide: const BorderSide(
                        color:
                            Color.fromARGB(255, 66, 125, 145)), //<-- SEE HERE
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  margin: const EdgeInsets.only(left: 30),
                  child: Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(right: 0),
                 margin: const EdgeInsets.only(right: 190),
                 child: const Text(
                    'Remember me',
                    style: TextStyle(
                      color: Color(0xFF2C3A4B),
                      fontSize: 16,
                      fontFamily: 'Product_Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF43F5E).withOpacity(0.5),
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100), // <-- Radius
                  ),
                ),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Product_Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 1),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: SizedBox(
                  width: 400,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          ForgotPassword.routeName,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: Colors.red.withOpacity(0),
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      ),
                      child: const Align(
                        child: Text(
                          'Forgot the password?',
                          style: TextStyle(
                            color: Color(0xFFF43F5E),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: 'Product_Sans',
                          ),
                        ),
                      )),
                )),
            Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 1),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: SizedBox(
                  width: 400,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          PopularMenuListPage.routeName,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: Colors.red.withOpacity(0),
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      ),
                      child: const Align(
                        child: Text(
                          'or continue with',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Product_Sans',
                          ),
                        ),
                      )),
                )),
            Container(
              // padding: const EdgeInsets.only(left: 20, right: 20, top: 1, bottom: 1),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    padding: const EdgeInsets.only(
                        top: 10, right: 16, bottom: 10, left: 16),
                    width: 178,
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          RegisterForm.routeName,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: Colors.red.withOpacity(0.1),
                        padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                      label: const Text(
                        'Facebook',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      icon: const Icon(Icons.facebook),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 10, right: 16, bottom: 10, left: 16),
                    width: 178,
                    child: TextButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: Colors.red.withOpacity(0.1),
                        padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                        // side: const BorderSide(
                        //   width: 1.5,
                        //   color: Colors.black,
                        // ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                      label: const Text(
                        'Google',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      icon: const Icon(Icons.g_mobiledata_rounded),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                margin: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: RichText(
                  text:  TextSpan(
                      text: 'Don’t have an account? ',
                      style: const TextStyle(
                          color: Colors.black, fontFamily: 'Product_Sans'),
                      children: [


                        TextSpan(
                          text: 'Sign Up',
                          style: const TextStyle(color: Colors.red, fontWeight: FontWeight.w800, fontFamily: 'Product_Sans'),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.pushNamed(
                              context,
                              RegisterForm.routeName,
                            ),
                        )
                      ]),
                ))),
          ],
        ),
      ),
    );
  }
}

