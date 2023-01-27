import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  int index = 0;

  List screens = const [
    Center(
      child: Text("Mail"),
    ),
    Center(
      child: Text("Profile"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(), body: _body(), bottomNavigationBar: _bottomBar());
  }

  _appBar() {
    return AppBar(
      title: const Text("Material 3"),
    );
  }

  _body() {
    return screens[index];
  }

  _bottomBar() {
    return NavigationBar(
      onDestinationSelected: (value) {
        setState(() {
          index = value;
        });
      },
      destinations: const [
      NavigationDestination(
        icon: Icon(Icons.mail_outline),
        label: 'Mail',
        selectedIcon: Icon(Icons.mail),
      ),
      NavigationDestination(
        icon: Icon(Icons.person_2_outlined),
        label: 'Profile',
        selectedIcon: Icon(Icons.person_2),
      ),
    ]);
  }
}
