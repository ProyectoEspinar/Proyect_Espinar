import 'package:flutter/material.dart';
import 'add_service.dart'; // Importa tu archivo AddService
// O importa la pantalla inicial adecuada, como perfil_page.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AddService(), // Cambia esto por la clase inicial deseada
    );
  }
}
