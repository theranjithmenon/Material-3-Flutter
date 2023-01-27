import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text("Btn")),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.menu),
          )
        ],
      ),
    );
  }

  _bottomBar() {
    return NavigationBar(destinations: const [
      NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
      NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
      NavigationDestination(icon: Icon(Icons.mail), label: 'Mail'),
      NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
    ]);
  }
}
