import 'package:flutter/material.dart';
import 'package:ps_13_bildergalerie/data/gallery_item_class.dart';

class DetailScreen extends StatelessWidget {
  final GalleryItem item;

  const DetailScreen({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Details",
            style: TextStyle(
              fontSize: 28,
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
      body: SingleChildScrollView( // ich kann durch die Bilder scrollen
        child: Column(
          children: [
            Image.asset(item.imagePath, fit: BoxFit.fill),
            const SizedBox(height: 30),
            Text(
              item.imageTitle, // das hole ich mir aus der galleryItem
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              item.imageDate,  // das hole ich mir aus der galleryItem
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 27, 25, 25),
                fontStyle: FontStyle.italic
              ),
            ),
               const SizedBox(height: 5),
                      const Divider(
                color: Color.fromARGB(255, 0, 0, 0),
                thickness: 0.8,
              indent: 40,
              endIndent: 40, ),
                  const SizedBox(height: 5),            
                Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                item.imageDescription, // das hole ich mir aus der galleryItem
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 27, 25, 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}