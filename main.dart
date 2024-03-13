import 'package:flutter/material.dart';
import 'package:sib7a/home_page.dart';

void main() {
  runApp(const Sib7a());
}
class Sib7a extends StatelessWidget {
  const Sib7a({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomePage(),
    );
  }
}

