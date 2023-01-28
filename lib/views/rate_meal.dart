import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practices_homework/views/home_page.dart';
import 'package:practices_homework/views/login.dart';
import 'package:practices_homework/views/set_pin_location.dart';
import 'package:practices_homework/views/start_page2.dart';

class RateMeal extends StatefulWidget {
  const RateMeal({super.key});
  static const String routeName = '/RateMeal';
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<RateMeal> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 150),
            Container(
              padding:
              const EdgeInsets.only(left: 10, right: 20, top: 20, bottom: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Image.asset(
                    "assets/images/congrats.png",
                    height: 200.0,
                    width: 200.0,
                  ),
                  const SizedBox(height: 10),

                  const Text(
                    "Congrats!",
                    style: TextStyle(
                      color: Color(0xFFF43F5E),
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),

                  const Text(
                    "Your profile is ready to use",
                    style: TextStyle(
                      color: Color(0xFF09101D),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.only(left: 20, top: 300, right: 20),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, StartPage2.routeName);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF43F5E),
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100), // <-- Radius
                  ),
                ),
                child: const Text(
                  'OK',
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
