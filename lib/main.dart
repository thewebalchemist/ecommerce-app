import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          surface: AppColors.customGrey
        ),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Padding(padding: EdgeInsets.all(8.0))
    );
  }
}
