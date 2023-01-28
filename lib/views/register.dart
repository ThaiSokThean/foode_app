import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practices_homework/views/login.dart';
import 'package:practices_homework/views/payment_method.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});
  static const String routeName = '/RegisterForm';
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<RegisterForm> {
  // Initial Selected Value
  String dropdownvalue = 'Man';

  // List of items in our dropdown menu
  var items = [
    'Man',
    'Female',
    'Monk',
    'Other',
  ];

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
                            Navigator.pushNamed(
                              context,
                              LoginForm.routeName,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        'Fill in your bio',
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
            Container(
              padding: const EdgeInsets.only(left: 40, right: 20),
              margin: const EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        'Full Name',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff8B8989),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '*',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xffDA1414),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                // obscureText: true, // hide if password
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFFDADEE3)),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  // filled: true,
                  hintText: 'Full Name',
                  hintStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFDADEE3)),
                  // suffixIcon: const Icon(Icons.visibility),
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
              padding: const EdgeInsets.only(left: 40, right: 20),
              margin: const EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        'Nick Name',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff8B8989),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '*',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xffDA1414),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                // obscureText: true, // hide if password
                // keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFFDADEE3)),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  // filled: true,
                  hintText: 'Nick Name',
                  hintStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFDADEE3)),
                  // suffixIcon: const Icon(Icons.visibility),
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
              padding: const EdgeInsets.only(left: 40, right: 20),
              margin: const EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        'Phone Number',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff8B8989),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '*',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xffDA1414),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ), //phone
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                // obscureText: true, // hide if password
                // keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFFDADEE3)),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  // filled: true,
                  hintText: 'Phone Number',
                  hintStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFDADEE3)),
                  // suffixIcon: const Icon(Icons.visibility),
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
              padding: const EdgeInsets.only(left: 40, right: 20),
              margin: const EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        'Gender',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff8B8989),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '*',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xffDA1414),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ), //gender
            // Container(
            //   padding: const EdgeInsets.only(left: 20, right: 20),
            //   width: MediaQuery.of(context).size.width,
            //   child: TextField(
            //     // obscureText: true, // hide if password
            //     // keyboardType: TextInputType.emailAddress,
            //     style: const TextStyle(
            //         fontWeight: FontWeight.w600,
            //         fontSize: 16,
            //         color: Color(0xFFDADEE3)),
            //     decoration: InputDecoration(
            //       fillColor: Colors.white,
            //       // filled: true,
            //       hintText: 'Gender',
            //       hintStyle: const TextStyle(
            //           fontSize: 16.0,
            //           fontWeight: FontWeight.w600,
            //           color: Color(0xFFDADEE3)),
            //       // suffixIcon: const Icon(Icons.visibility),
            //       // suffixIcon: Icon(Icons.lock),
            //       enabledBorder: OutlineInputBorder(
            //         borderSide: const BorderSide(
            //             width: 3, color: Color(0xFFEBEEF2)), //<-- SEE HERE
            //         borderRadius: BorderRadius.circular(100.0),
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(100.0),
            //         borderSide: const BorderSide(
            //             color: Color(0xff000000)), //<-- SEE HERE
            //       ),
            //       errorBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(100.0),
            //         borderSide: const BorderSide(
            //             color:
            //                 Color.fromARGB(255, 66, 125, 145)), //<-- SEE HERE
            //       ),
            //     ),
            //   ),
            // ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: DropdownButtonFormField(
                value: dropdownvalue,
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 40, right: 20),
              margin: const EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        'Date of Birth',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff8B8989),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '*',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xffDA1414),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ), //dob
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                // obscureText: true, // hide if password
                // keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFFDADEE3)),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  // filled: true,
                  hintText: 'Date of Birth',
                  hintStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFDADEE3)),
                  // suffixIcon: const Icon(Icons.visibility),
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
              padding: const EdgeInsets.only(left: 40, right: 20),
              margin: const EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        'Address',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff8B8989),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '*',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Product_Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xffDA1414),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ), //address
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(bottom: 30),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                // obscureText: true, // hide if password
                // keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFFDADEE3)),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  // filled: true,
                  hintText: 'Address',
                  hintStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFDADEE3)),
                  // suffixIcon: const Icon(Icons.visibility),
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
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    PaymentMethod.routeName,
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
                  'Register',
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
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              width: MediaQuery.of(context).size.width,
              child: TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    PaymentMethod.routeName,
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  backgroundColor: Colors.red.withOpacity(0),
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  side: const BorderSide(
                    width: 1.5,
                    color: Colors.black,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // <-- Radius
                  ),
                ),
                label: const Text(
                  'Sign up with Facebook',
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
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                margin: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: RichText(
                  text: TextSpan(
                      text: 'Already have an account? ',
                      style: const TextStyle(
                          color: Colors.black, fontFamily: 'Product_Sans'),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Product_Sans'),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.pushNamed(
                                  context,
                                  LoginForm.routeName,
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
