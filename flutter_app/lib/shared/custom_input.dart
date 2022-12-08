import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({super.key, required this.title, required this.controller});

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              isDense: true,
            ),
          ),
        ],
      ),
    );
  }
}
