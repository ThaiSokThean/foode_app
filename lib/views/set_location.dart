import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practices_homework/views/congregate.dart';
import 'package:practices_homework/views/login.dart';
import 'package:practices_homework/views/set_pin_location.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({super.key});
  static const String routeName = '/SetLocation';
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SetLocation> {
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
                        'Set Your Location',
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
                'This data will be displayed in your account profile for security',
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
              padding:
              const EdgeInsets.only(left: 10, right: 20, top: 20, bottom: 20),
              //height: 100,

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
                  Container(
                    padding:
                    const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF43F5E).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.location_pin,
                          color: Color(0xFFFF1843)),
                      iconSize: 40,
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          SetPinLocation.routeName,
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 10),
                  const Text(
                    "Set location",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.only(left: 20, top: 400, right: 20),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                      Navigator.pushNamed(
                      context,
                        Congrats_Page.routeName,
                    );
                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF43F5E),
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100), // <-- Radius
                  ),
                ),
                child: const Text(
                  'Next',
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
