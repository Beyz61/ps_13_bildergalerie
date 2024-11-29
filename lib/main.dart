import 'package:flutter/material.dart';
import 'package:ps_13_bildergalerie/gallery/screens/gallery_widget.dart';
import 'package:ps_13_bildergalerie/profil/about_me_widget.dart';

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
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
          indicatorColor: const Color.fromARGB(255, 255, 255, 255),
          backgroundColor: const Color.fromARGB(255, 2, 2, 2),
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(
              color: Colors.white, 
              fontSize: 14,
            ),
          ),
        ),
      ),
      home: Scaffold(
        body: Container(
          decoration:  const BoxDecoration(
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
          indicatorColor: const Color.fromARGB(255, 255, 255, 255), 
          backgroundColor: const Color.fromARGB(255, 2, 2, 2),

          selectedIndex: currentIndex,//
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
