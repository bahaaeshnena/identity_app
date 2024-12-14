import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff003161),
        appBar: AppBar(
          backgroundColor: const Color(0xff003161),
          centerTitle: true,
          title: const Text('Identity Card',
              style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                    )),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 75,
                  backgroundImage: AssetImage('assets/me.jpg'),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff4A628A),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.all(20),
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(
                      color: Colors.white,
                      Icons.person_outline,
                    ),
                    title: Text(
                      'bahaa eshnena',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(
                      color: Colors.white,
                      Icons.calendar_today_outlined,
                    ),
                    title: Text(
                      ' 9 / 11 / 2002',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(
                      color: Colors.white,
                      Icons.location_on_outlined,
                    ),
                    title: Text(
                      'Amman',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
