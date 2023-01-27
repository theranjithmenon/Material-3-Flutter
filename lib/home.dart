import 'package:flutter/material.dart';
import 'package:flutter_application/pages/calls.dart';
import 'package:flutter_application/pages/mails.dart';
import 'package:flutter_application/pages/messages.dart';
class MyNavScreen extends StatefulWidget {
  const MyNavScreen({super.key});

  @override
  State<MyNavScreen> createState() => _MyNavScreenState();
}

class _MyNavScreenState extends State<MyNavScreen> {
  int currentIndex = 0;
  List pages = const [Messages(), Calls(), Mails()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: (currentIndex == 0)
            ? const Text("Messages")
            : (currentIndex == 1)
                ? const Text("Calls")
                : const Text("Mails"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.nightlight_outlined),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: pages[currentIndex],
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.chat_bubble_outline_rounded),
              label: "Messages",
              selectedIcon: Icon(Icons.chat_bubble_outlined),
            ),
            NavigationDestination(
              icon: Icon(Icons.call_outlined),
              label: "Calls",
              selectedIcon: Icon(Icons.call),
            ),
            NavigationDestination(
              icon: Icon(Icons.mail_outline),
              label: "Mail",
              selectedIcon: Icon(Icons.mail),
            ),
          ]),
    );
  }
}
