import 'package:flutter/material.dart';
import 'package:test_task_solid_software/provider/color_notifier.dart';
import 'package:test_task_solid_software/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ColorNotifier(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Test task',
          home: HomePage()),
    );
  }
}
