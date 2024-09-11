import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final double widthr;
  const CustomFormField({super.key, required this.label, required this.widthr});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 50,
        width: 315,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        child: TextFormField(
          decoration: InputDecoration(
            label: Text('   ${label}    '),
            labelStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xff13548D),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(28)),
          ),
        ),
      ),
    );
  }
}
