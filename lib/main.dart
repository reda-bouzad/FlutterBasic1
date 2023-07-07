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

// children is the same thing as child , the only difference is that children would be a list of child

// container and sizedbox are very simulair

// SizedBox: It is a widget that allows you to specify a fixed size for its child or provide empty space of a specific size within a layout. It does not have any visual representation on its own. SizedBox can be used to add spacing between widgets or to enforce a specific size constraint on its child widget

// Container: It is a more versatile widget that allows you to define custom constraints, padding, margin, alignment, and decoration for its child widget. It can be used to create boxes with specific dimensions and apply styling properties like color, border, and shadows.

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
            child: currentIndex == 0
                ? Container(
                    color: Colors.pink,
                    height: double.infinity,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                foregroundColor:
                                    const Color.fromARGB(255, 0, 0, 0),
                                backgroundColor: Colors.red),
                            onPressed: () {
                              setState(() {
                                count++;
                              });
                              print("pressed");
                            },
                            child: Text(count.toString())),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.black),
                            onPressed: () {
                              setState(() {});
                            },
                            child: const Text("btn")),
                      ],
                    ),
                  )
                : /* 
                Image.network(
                    'https://www.ideematic.com/wp-content/uploads/2020/07/flutter_logo.png')
                    */
                Image.asset('assets/logo.png')),
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
