import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Us")),
      body: Container(
        child: const Column(
          children: [
            Text('About Us'),
            Text('About me !!! Nothing'),
          ],
        ),
      ),
    );
  }
}