import 'package:flutter/material.dart';
import 'package:practices_homework/views/login.dart';
import 'package:practices_homework/views/register.dart';
import 'package:practices_homework/views/start_page.dart';
import 'package:practices_homework/views/start_page2.dart';
import '../views/get_start.dart';
import '../views/homepage.dart';
import 'package:practices_homework/views/demo_sliver_lesson.dart';
import 'package:practices_homework/views/popular_menu_page.dart';
import 'package:practices_homework/views/popular_restaurant_page.dart';
import 'package:practices_homework/views/home_page.dart';
import 'package:practices_homework/views/payment_method.dart';
import 'package:practices_homework/views/upload_profile.dart';
import 'package:practices_homework/views/view_profile_photo.dart';
import 'package:practices_homework/views/set_location.dart';
import 'package:practices_homework/views/set_pin_location.dart';
import 'package:practices_homework/views/congregate.dart';
import 'package:practices_homework/views/forgot_password.dart';
import 'package:practices_homework/views/validation_pin_code.dart';
import 'package:practices_homework/views/reset_password_congregate.dart';
import 'package:practices_homework/views/reset_password.dart';
Route<RouteSettings> onGenerateRoute(RouteSettings settings) {
  var args = settings.arguments;

  switch (settings.name) {
    case StartPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const StartPage(),
      );
    case StartPage2.routeName:
      return MaterialPageRoute(
        builder: (context) => const StartPage2(),
      );
    case HomePages.routeName:
      return MaterialPageRoute(
        builder: (context) => HomePages(
          arguments: args as Map<String, dynamic>,
        ),
      );
    case GetStartedPage.routeName:
      // return MaterialPageRoute(
      //   builder: (context) => GetStartedPage(
      //     arguments: args as GetStartedPageArguments,
      //   ),
      // );
      return MaterialPageRoute(
        builder: (context) => const GetStartedPage(),
      );
    case LoginForm.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginForm(),
      );
    case RegisterForm.routeName:
      return MaterialPageRoute(
        builder: (context) => const RegisterForm(),
      );
    case PopularListPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const PopularListPage(),
      );
    case PopularMenuListPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const PopularMenuListPage(),
      );
    case PopularRestaurantListPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const PopularRestaurantListPage(),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomePage(),
      );
    case PaymentMethod.routeName:
      return MaterialPageRoute(
        builder: (context) => const PaymentMethod(),
      );
    case UploadProfile.routeName:
      return MaterialPageRoute(
        builder: (context) => const UploadProfile(),
      );
    case ViewProfilePhoto.routeName:
      return MaterialPageRoute(
        builder: (context) => const ViewProfilePhoto(),
      );
    case SetLocation.routeName:
      return MaterialPageRoute(
        builder: (context) => const SetLocation(),
      );
    case SetPinLocation.routeName:
      return MaterialPageRoute(
        builder: (context) => const SetPinLocation(),
      );
    case Congrats_Page.routeName:
      return MaterialPageRoute(
        builder: (context) => const Congrats_Page(),
      );
    case ForgotPassword.routeName:
      return MaterialPageRoute(
        builder: (context) => const ForgotPassword(),
      );
    case ValidationPinCode.routeName:
      return MaterialPageRoute(
        builder: (context) => const ValidationPinCode(),
      );
    case Reset_Password_Congrats_Page.routeName:
      return MaterialPageRoute(
        builder: (context) => const Reset_Password_Congrats_Page(),
      );
    case ResetPassword.routeName:
      return MaterialPageRoute(
        builder: (context) => const ResetPassword(),
      );
      default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
