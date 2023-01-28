import 'package:flutter/material.dart';

class StartPage2 extends StatefulWidget {
  const StartPage2({Key? key}) : super(key: key);

  static const routeName = '/StartPage2';

  @override
  State<StartPage2> createState() => _StartPageState2();
}

class _StartPageState2 extends State<StartPage2> {


  @override
  void initState() {
    super.initState();
    // delay 3 seconds before navigating to home page
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home_page');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/get_started.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // loading indicator
              Positioned(
                bottom: 100,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}