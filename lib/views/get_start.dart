import 'package:flutter/material.dart';
import 'package:practices_homework/views/home_page.dart';
import 'package:practices_homework/views/homepage.dart';
import 'package:practices_homework/views/login.dart';
import 'package:practices_homework/views/payment_method.dart';
import 'package:practices_homework/views/register.dart';
import 'package:practices_homework/views/set_location.dart';
import 'package:practices_homework/views/upload_profile.dart';
import 'package:practices_homework/views/view_profile_photo.dart';

// class GetStartedPageArguments {
//   final String title;
//   final String description;
//
//   GetStartedPageArguments({required this.title, required this.description});
// }

class GetStartedPage extends StatelessWidget {
  // const GetStartedPage({Key? key, required this.arguments}) : super(key: key);
  const GetStartedPage({Key? key}) : super(key: key);
  static const String routeName = '/get_started';
  // final GetStartedPageArguments arguments;

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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Foode",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Text(
                      "The best food ordering and delivery app of the century",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.white,
                        fontSize: 13
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    child: Padding(

                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.pushNamed(
                          //   context,
                          //   HomePage.routeName,
                          //   arguments: {
                          //     'title': 'Food',
                          //     'description': 'Pad',
                          //   },
                          // );
                          Navigator.pushNamed(
                            context,
                            HomePage.routeName,
                          );
                          },
                        child: const Text("Get Start"),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}