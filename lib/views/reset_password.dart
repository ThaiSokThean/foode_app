import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practices_homework/components/constants.dart';
import 'package:practices_homework/views/forgot_password.dart';
import 'package:practices_homework/views/home_page.dart';
import 'package:practices_homework/views/popular_menu_page.dart';
import 'package:practices_homework/views/popular_restaurant_page.dart';
import 'package:practices_homework/views/register.dart';
import 'package:practices_homework/views/reset_password_congregate.dart';

import '../components/constants.dart';
import '../components/constants.dart';
import '../components/constants.dart';
import 'demo_sliver_lesson.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});
  static const String routeName = '/ResetPassword';
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<ResetPassword> {
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
              child: Row(
                children: [
                  Container(
                    // padding: const EdgeInsets.only(left: 20, right: 20),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF43F5E),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.05),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios_new,
                              color: Colors.white),
                          onPressed: () {
                            print("drawer");
                          },
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        'Reset password',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFF09101D),
                          fontSize: 26,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Create a new password',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF09101D),
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.only(left: 24, bottom: 5, top: 20),
              margin: const EdgeInsets.only(left: 24),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'New Password*',
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
                  hintText: 'New Password',
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
            Container(
              padding: const EdgeInsets.only(left: 24, bottom: 5, top: 20),
              margin: const EdgeInsets.only(left: 24),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Confirm New Password*',
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
                  hintText: 'Confirm New Password',
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
              padding: const EdgeInsets.only(left: 20, top: 300, right: 20),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Reset_Password_Congrats_Page.routeName);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF43F5E),
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100), // <-- Radius
                  ),
                ),
                child: const Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Product_Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

