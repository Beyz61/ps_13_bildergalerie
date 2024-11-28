import 'package:flutter/material.dart';
import 'package:ps_13_bildergalerie/about_me_widget.dart';
import 'package:ps_13_bildergalerie/gallery_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Widget> widgets = [
    const GalleryWidget(),
    const AboutMeWidget(),
  ];

  int currentIndex = 0; // die Galerie wird als Standardseite angezeigt 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Gallery",
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 15, 15, 15),
                  fontWeight: FontWeight.bold),
            ),
          ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(180, 35, 36, 37),
                Color.fromARGB(99, 85, 104, 118),
              ],
            ),
          ),
          child: widgets[currentIndex],
        ),
        bottomNavigationBar: NavigationBar( 
          selectedIndex: currentIndex,
          onDestinationSelected: (int index) { // zum seiten wechseln
            setState(() {
              currentIndex = index; //  ausgewählte seite wird angezeigt
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.photo),
              label: "Galerie",
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: "Über mich",
            ),
          ],
        ),
      ),
    );
  }
}
