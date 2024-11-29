import 'package:flutter/material.dart';
import 'package:ps_13_bildergalerie/data/gallery_item_class.dart';

class GalleryCard extends StatelessWidget {
  final GalleryItem item;

  const GalleryCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card( // Karte für das Bild
      margin: const EdgeInsets.all(12.0),
      color: Colors.white.withOpacity(0.8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect( // ist dafür da, dass das Bild abgerundet ist
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                item.imagePath, 
                height: 200,
                width: double.infinity, //breite des Bildes
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              item.imageTitle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
         
           ],
        ),
      ),
    );
  }
}
