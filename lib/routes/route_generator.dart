// Dart import
import 'package:flutter/material.dart';

//Package imports
import 'package:fooderapp/config/constants.dart';
import 'package:fooderapp/pages/album_details_page.dart';
import 'package:fooderapp/pages/error_page.dart';
import 'package:fooderapp/pages/home_page.dart';
import 'package:fooderapp/pages/login_page.dart';
import 'package:fooderapp/pages/profile_page.dart';

class RouteGenerator {
  static Route<dynamic> generatorRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: ((_) => const HomePage()));
      case loginPage:
        return MaterialPageRoute(builder: ((_) => const LoginPage()));
      case errorPage:
        return MaterialPageRoute(builder: (_) => const ErrorPage());
      case albumDetailsPage:
        return MaterialPageRoute(builder: (_) => const AlbumDetailsPage());
      case profilePage:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorPage());
    }
  }
}