import 'package:flutter/material.dart';
import 'package:lox_services/screens/confirm.dart';
import 'package:lox_services/screens/confirm_end.dart';
import 'package:lox_services/screens/end_message.dart';
import 'package:lox_services/screens/home.dart';
import 'package:lox_services/screens/location.dart';
import 'package:lox_services/screens/login.dart';
import 'package:lox_services/screens/profile.dart';
import 'package:lox_services/screens/reset_password.dart';
import 'package:lox_services/screens/signup.dart';
import 'package:lox_services/screens/walk_through.dart';
import 'package:lox_services/screens/work_request.dart';
import 'package:lox_services/screens/work_request_end.dart';


const String routeInit='/';
// const String routeLogin='/login';
const String routeSignup='/signup';
const String routeForgotPassword='/forgotpassword';
const String routeHome='/home';
const String routeConfirm='/confirm';
const String routeConfirmEnd='/confirmend';
const String routeEndMessage='/Endmessage';
const String routeWorkRequest='/workrequest';
const String routeWorkRequestEnd='/workrequestend';
const String routeProfile='/routeprofile';
const String routeLocation='/routelocation';

Route<dynamic> generateRoute(RouteSettings settings) {
  final args = settings.arguments;
  switch (settings.name) {
      case routeInit:
        return MaterialPageRoute(builder: (_) => WalkThrough());
      // case routeLogin:
      //   return MaterialPageRoute(builder: (_) => LoginScreen());
      case routeSignup:
        return MaterialPageRoute(builder: (_) => SignupScreen(data: args));
      case routeForgotPassword:
        return MaterialPageRoute(builder: (_) => ResetPasswordScreen());
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case routeConfirm:
        return MaterialPageRoute(builder: (_) => ConfirmScreen());
      case routeConfirmEnd:
        return MaterialPageRoute(builder: (_) => ConfirmEndScreen());
      case routeEndMessage:
        return MaterialPageRoute(builder: (_) => EndMessageScreen());
      case routeWorkRequest:
        return MaterialPageRoute(builder: (_) => WorkRequestScreen());
      case routeWorkRequestEnd:
        return MaterialPageRoute(builder: (_) => WorkRequestEndScreen());
      case routeProfile:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case routeLocation:
        return MaterialPageRoute(builder: (_) => LocationScreen());
      default:
        return MaterialPageRoute(builder: (_) => WalkThrough());
  }

}