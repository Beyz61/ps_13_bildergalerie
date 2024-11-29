import 'package:flutter/material.dart';
import 'package:ps_13_bildergalerie/data/gallery_item.dart';
import 'package:ps_13_bildergalerie/detail_screen.dart';
import 'package:ps_13_bildergalerie/gallery_card.dart';

class GalleryWidget extends StatelessWidget {
  const GalleryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "My Gallery",
            style: TextStyle(
              fontSize: 40,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              shadows: [
                Shadow(
                  blurRadius: 0.1,
                  color: Color.fromARGB(255, 255, 255, 255),
                  offset: Offset(0.5, 0.5),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container( // mein Hintergrund
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(180, 35, 36, 37),
              Color.fromARGB(99, 85, 104, 118),
            ],
          ),
        ),
child: ListView.builder( // ich kann durch die Bilder scrollen
  itemCount: galleryData.length,
  itemBuilder: (context, index) {
    final galleryItem = galleryData[index];
    return GestureDetector( // ich kann auf das Bild klicken
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailScreen( // komme so zum DetailScreen
            ),
          ),
        );
      },
      child: GalleryCard(item: galleryItem), // hole mir die Bilder aus der gallery_card.dart
    );
  },
),
      ),
    );
  }
}