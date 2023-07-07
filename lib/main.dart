import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// using the snippet fstless
// a flutter project is just a list of componenets
// a widget start with a capital letter
// inside every argument there is another widget
// we cant have a widget inside another widget

// there are three types of buttons in flutter
// 1- the text button
// 2- the outline button
// 3- and the elevated button

// StatlessWidget : the screen never changes
// StatefulWidget : the scrren can change

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name = "Reda";
  int currentIndex = 0;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(name)),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                  print("pressed");
                },
                child: Text(count.toString()))),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  size: 30,
                )),
            BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(
                  Icons.settings,
                  size: 30,
                )),
            BottomNavigationBarItem(
                label: 'meet',
                icon: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 30,
                ))
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
