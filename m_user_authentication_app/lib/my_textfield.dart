import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.hintText,
    required this.inputType,
    required String label,
    required this.controller2,
  }) : super(key: key);
  final String hintText;
  final TextInputType inputType;
  final TextEditingController controller2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 5.0,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffECEBEB),
        ),
      ),
      child: TextField(
          controller: controller2,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 8, left: 20),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.6),
            ),
            labelStyle:
                const TextStyle(fontSize: 14, decoration: TextDecoration.none),
          )),
    );
  }
}
