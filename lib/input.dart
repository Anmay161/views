import 'package:flutter/material.dart';



Widget buildinputfield(control,label,keyboard,pass) {
  return TextField(
    controller: control,
    keyboardType: keyboard,
    obscureText: pass,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder()
    ),
  );
} 