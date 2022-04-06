import 'package:flutter/material.dart';
import 'package:rutas_app_flutter/src/pages/error_page.dart';
import 'package:rutas_app_flutter/src/pages/home_page.dart';
import 'package:rutas_app_flutter/src/pages/profile_page.dart';
import 'package:rutas_app_flutter/src/pages/services_page.dart';
import 'package:rutas_app_flutter/src/pages/team_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'profile': (BuildContext context) => ProfilePage(),
        'services': (BuildContext context) => ServicesPage(),
        'team': (BuildContext context) => TeamPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext builder) => ErrorPage());
      },
    );
  }
}
