import 'package:flutter/material.dart';
import 'package:shop_app/product_details.dart';
import 'package:shop_app/global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 223, 212, 5),
          primary: const Color.fromARGB(255, 252, 249, 190),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: const TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          prefixIconColor: Color.fromARGB(255, 72, 72, 57),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          titleMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
        useMaterial3: true,
      ),
      home: ProductDetailsPage(
        product: products[0],
      ),
    );
  }
}
