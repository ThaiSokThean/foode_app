import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:practices_homework/views/reset_password.dart';
import 'package:practices_homework/views/upload_profile.dart';

import '../components/menu_item_card.dart';
import '../components/restaurant_item_card.dart';

class ValidationPinCode extends StatefulWidget {
  const ValidationPinCode({super.key});
  static const String routeName = '/ValidationPinCode';
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<ValidationPinCode> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  bool _onEditing = true;
  String? _code;
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
                        'Forgot password',
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
            const SizedBox(height: 100),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Code has been send to +6282******39',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF09101D),
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 20, top: 20, bottom: 20),
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
                        children: [
                          VerificationCode(
                            margin: const EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 12),
                            textStyle:
                            Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Colors.black, fontFamily: 'Product Sans', fontSize: 24),
                            keyboardType: TextInputType.number,
                            fullBorder: true,
                            underlineColor: Colors.black,
                            length: 4,
                            cursorColor: Colors.blue,
                            onCompleted: (String value) async {
                              setState(() {
                                _code = value;
                              });
                            },
                            onEditing: (bool value) {
                              setState(() {
                                _onEditing = value;
                              });
                              if (!_onEditing) FocusScope.of(context).unfocus();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // const SizedBox(height: 100),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Resend code in 56 s',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF09101D),
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 300, right: 20),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ResetPassword.routeName,
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
