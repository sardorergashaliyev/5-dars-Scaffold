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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_camera), label: 'Capture')
          ],
        ),
        appBar: AppBar(
          title: const Text('Application'),
          backgroundColor: Colors.grey,
          leading: const Icon(
            Icons.menu,
          ),
        ),
        body: Container(
            child: Stack(
          children: [
            Column(
              children: [
                Center(
                  child: Container(
                    color: const Color.fromARGB(255, 207, 43, 122),
                    height: 70,
                    width: 400,
                    child: const Center(
                      child: Text(
                        'body',
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: 400,
                  color: const Color.fromARGB(255, 217, 131, 233),
                ),
                Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Colors.yellowAccent,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.black,
                            spreadRadius: 10,
                            offset: Offset(50, 50))
                      ]),
                  child: const Center(
                    child: Text(
                      'BottomSheet',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          decoration: TextDecoration.none,
                          fontSize: 30),
                    ),
                  ),
                ),
                Container(
                  height: 77,
                  width: 400,
                  color: const Color.fromARGB(255, 217, 131, 233),
                ),
              ],
            ),
            Positioned(
                top: 320,
                right: 150,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            color: Colors.black,
                            spreadRadius: 2,
                            offset: Offset(2, 10))
                      ],
                      color: Color.fromARGB(255, 14, 156, 195),
                      shape: BoxShape.circle),
                  child: const Center(
                    child: Text(
                      'Refresh',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          decoration: TextDecoration.none,
                          fontSize: 25),
                    ),
                  ),
                )),
            Positioned(
                top: 585,
                right: 190,
                child: Container(
                  height: 50,
                  width: 70,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 88, 255, 177),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.black,
                            spreadRadius: -5,
                            offset: Offset(10, 10)),
                      ]),
                  child: const Center(child: Icon(Icons.add)),
                )),
            Positioned(
                top: 585,
                right: 100,
                child: Container(
                  height: 50,
                  width: 70,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 36, 80),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.black,
                            spreadRadius: -5,
                            offset: Offset(10, 10))
                      ]),
                  child: const Center(child: Text('X')),
                )),
            Positioned(
                top: 585,
                right: 10,
                child: Container(
                  height: 50,
                  width: 70,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 36, 145, 255),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.black,
                            spreadRadius: -5,
                            offset: Offset(10, 10))
                      ]),
                      child: const Icon(Icons.arrow_circle_right),
                )),
          ],
        )),
      ),
    );
  }
}
