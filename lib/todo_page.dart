import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<String> tasks = [];
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  void _loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      tasks = prefs.getStringList('tasks') ?? [];
    });
  }

  void _addTask(String task) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      tasks.add(task);
      controller.clear();
    });
    await prefs.setStringList('tasks', tasks);
  }

  void _removeTask(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      tasks.removeAt(index);
    });
    await prefs.setStringList('tasks', tasks);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To-Do List App')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: 'Enter Task'),
              onSubmitted: (value) {
                if (value.trim().isNotEmpty) {
                  _addTask(value.trim());
                }
              },
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (_, index) => ListTile(
                  title: Text(tasks[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _removeTask(index),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}