import 'package:flutter/material.dart';
import 'screen_1.dart';
import 'screen_2.dart';

void main() {
  runApp(const FlowerCatalogApp());
}

class FlowerCatalogApp extends StatelessWidget {
  const FlowerCatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Petal & Stem - Flower Catalog',
      // Shared ThemeData for consistent colors and typography across both screens
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E6F40), // Botanical Emerald Green
          primary: const Color(0xFF2E6F40),
          secondary: const Color(0xFFD96B8A), // Soft Rose Pink
          surface: const Color(0xFFFAF8F5), // Warm Cream Background
        ),
        scaffoldBackgroundColor: const Color(0xFFFAF8F5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2E6F40),
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E3524),
          ),
          titleMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1E3524),
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Color(0xFF4A5550),
            height: 1.4,
          ),
        ),
      ),
      // =====================================================================
      // HOW TO PREVIEW BOTH SCREENS (Week 14 Requirement - No Navigation Logic):
      // 1. Keep `home: const Screen1(),` active to preview & capture Screen_1.png
      // 2. Comment out Screen1() and uncomment `home: const Screen2(),` below
      //    to preview & capture Screen_2.png
      // =====================================================================
      //home: const Screen1(),
      home: const Screen2(),
    );
  }
}