import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart_provider.dart';
import 'package:shop_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Shopping App',
        theme: ThemeData(
          fontFamily: 'Inter',
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 223, 212, 5),
            primary: const Color.fromARGB(255, 252, 249, 190),
          ),
          appBarTheme: AppBarTheme(
            titleTextStyle: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            prefixIconColor: Color.fromARGB(255, 72, 72, 57),
          ),
          textTheme: TextTheme(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 33,
            ),
            titleMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            bodySmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
