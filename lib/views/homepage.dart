import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key, required Map<String, dynamic> arguments}) : super(key: key);

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Hello'),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton.icon(
              onPressed: () {
              },
              icon: const Icon(Icons.arrow_forward),
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Get Started'),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}