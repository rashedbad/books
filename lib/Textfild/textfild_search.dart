// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Textfield_Search extends StatelessWidget {
  const Textfield_Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
            offset: const Offset(0, 15),
            spreadRadius: 3,
          )
        ],
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: Icon(Icons.search, color: Color(0xff305F72)),
            labelText: "Search books here...",
            labelStyle: TextStyle(
              color: Colors.grey,
            )),
      ),
    );
  }
}
