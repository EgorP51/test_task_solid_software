import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task_solid_software/provider/color_notifier.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  final _textControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var colorNotifier = Provider.of<ColorNotifier>(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: const Color.fromARGB(255, 0, 171, 6),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.white, fontSize: 20),
                controller: _textControler,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                    backgroundColor: const Color.fromARGB(255, 10, 98, 5),
                  ),
                  onPressed: () {
                    colorNotifier.text = _textControler.text;
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'return',
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  )),
            ]),
      ),
    );
  }
}
