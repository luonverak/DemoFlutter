import 'package:flutter/material.dart';

class InputFiedlWidget extends StatelessWidget {
  InputFiedlWidget({
    super.key,
    required this.controller,
    this.hintText,
  });
  var controller = TextEditingController();
  var hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.blue,
      style: const TextStyle(fontSize: 18),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.blue),
          borderRadius: BorderRadius.circular(15),
        ),
        // label: const Text("Password", style: TextStyle(fontSize: 18)),
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: const Icon(Icons.visibility_off),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 18),
      ),
    );
  }
}
