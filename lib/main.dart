import 'package:flutter/material.dart';
import 'counter_page.dart';
import 'todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 2 Flutter App',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Week 2 Tasks')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Counter App'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const CounterPage()));
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('To-Do List App'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const TodoPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}