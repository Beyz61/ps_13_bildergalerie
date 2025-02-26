import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("About Me",
                style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontStyle:  FontStyle.italic,
                     shadows:  [
                  Shadow(
                    blurRadius: 0.1,
                    color: Color.fromARGB(255, 255, 255, 255),
                    offset: Offset(0.5, 0.5),
                  ),
                ],),
          
          ),
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
        child: const Center(
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  CircleAvatar(
                      radius: 120,
                      backgroundColor: Color.fromARGB(255, 136, 190, 209),
                      child: CircleAvatar(
                        radius: 115,
                        backgroundImage: AssetImage("assets/images/kaya.jpg"),
                      )),
                      SizedBox(height: 20),
                      Divider(
                color: Color.fromARGB(255, 0, 0, 0),
                thickness: 0.8,
              indent: 40,
              endIndent: 40, ),
                  SizedBox(height: 10),
                  Text(
                    "Kaya Müller",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30, 
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Fotograf",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 20),
                      Divider(
                color: Color.fromARGB(255, 0, 0, 0),
                thickness: 0.8,
              indent: 40,
              endIndent: 40, ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 15, 30, 0),
                    child: Text(
                      "Mein Name ist Kaya Müller, ein Fotograf im Alter von 32 Jahren, der die Welt durch die Linse entdeckt. Mit einem Hintergrund in der visuellen Kunst und jahrelanger Erfahrung in der Fotografie habe ich einen Blick für die Schönheit im Alltäglichen entwickelt. Meine Spezialität liegt in der Sport- und Naturfotografie, wo ich das Spiel von Licht und Schatten einfange, um emotionale und aussagekräftige Bilder zu schaffen.\n\nIch glaube daran, dass jeder Moment einzigartig ist und seine eigene Geschichte erzählt. In meinen Arbeiten strebe ich danach, diese Geschichten visuell zu interpretieren und sie durch kreative Kompositionen und Nuancen zum Leben zu erwecken. Meine fotografische Reise hat mich durch verschiedene Länder geführt, wo ich die Vielfalt der Kulturen und Landschaften festhalte, immer auf der Suche nach neuen Perspektiven und Herausforderungen.\n\nMein Anspruch ist es, mit meinen Bildern nicht nur zu dokumentieren, sondern auch zu inspirieren und zu berühren. Jeder Auftrag und jedes Projekt ist für mich eine Möglichkeit, meine Leidenschaft und mein Können zu zeigen und eine Verbindung zwischen dem Betrachter und dem Bild herzustellen.",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}