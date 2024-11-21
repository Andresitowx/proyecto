import 'package:flutter/material.dart';

class FeatureText extends StatelessWidget {
  final String text;

  FeatureText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
