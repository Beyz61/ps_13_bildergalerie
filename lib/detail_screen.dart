import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Details",
                style: TextStyle(
                    fontSize: 28,
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
      ),
    );
  }
}