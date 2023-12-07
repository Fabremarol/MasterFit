// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    checkAndUpdateBool(); // Llama a la función para comprobar y actualizar el valor bool
    return MaterialApp(
        // ... resto del código de tu aplicación
        );
  }
}

void checkAndUpdateBool() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool boolValue = prefs.getBool('tuBool') ??
      true; // Obtener el valor bool, si no existe, se toma como true
  DateTime lastUpdated = DateTime.parse(prefs.getString('lastUpdated') ??
      DateTime.now()
          .toString()); // Obtener la última fecha de actualización, si no existe, se toma como la fecha actual

  DateTime now = DateTime.now();
  if (!boolValue) {
    if (now.difference(lastUpdated).inDays >= 30) {
      // Comprobar si han pasado 30 días
      boolValue = true; // Cambiar a true
      lastUpdated = now; // Actualizar la fecha de última actualización
      await prefs.setBool('tuBool', boolValue); // Guardar el nuevo valor bool
      await prefs.setString(
          'lastUpdated',
          lastUpdated
              .toString()); // Guardar la nueva fecha de última actualización
    }
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
