import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 65, 65, 65),
          title: const Text(
            'Lesson',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          leading: Icon(Icons.menu),
        ),
        floatingActionButton: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      spreadRadius: 2,
                      offset: Offset(2, 4))
                ]),
            child: const Icon(Icons.add)),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 65, 65, 65),
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(color: Colors.grey),
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.yellow,
                ),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
