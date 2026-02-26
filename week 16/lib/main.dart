import 'package:flutter/material.dart';
import 'package:responsive_app/views/drawer_view.dart';
import 'package:responsive_app/views/home_view_body.dart';

void main() {
  runApp(const ResponsiveApp());
}

class ResponsiveApp extends StatefulWidget {
  const ResponsiveApp({super.key});

  @override
  State<ResponsiveApp> createState() => _ResponsiveAppState();
}

class _ResponsiveAppState extends State<ResponsiveApp> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        drawer: DrawerView(),
        appBar: MediaQuery.of(context).size.width < 900
            ? AppBar(
                backgroundColor: Colors.black,
                leading: IconButton(
                  icon: Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                ),
              )
            : null,
        backgroundColor: Color(0xffdbdbdb),
        body: HomeViewBody(),
      ),
    );
  }
}
