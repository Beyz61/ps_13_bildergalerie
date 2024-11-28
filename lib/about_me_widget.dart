import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Über mich",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
