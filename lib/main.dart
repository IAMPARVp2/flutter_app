import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: width * 0.03, horizontal: width * 0.05),
                child: Row(
                  children: [
                    Expanded(
                      // Wrap search bar in Expanded
                      child: Padding(
                        padding: EdgeInsets.only(right: width * 0.03),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.search),
                              Text("pay friends and merchants")
                            ],
                          ),
                        ),
                      ),
                    ),
                    const CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            NetworkImage('https://picsum.photos/250?image=9'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
