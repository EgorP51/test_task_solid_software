import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task_solid_software/provider/color_notifier.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorNotifier = Provider.of<ColorNotifier>(context);
    return Scaffold(
      body: InkWell(
        onTap: () {
          colorNotifier.changeColor();
        },
        child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            color: colorNotifier.mainColor,
            child: Align(
              alignment: Alignment.center,
              child: Text('Hey there!',
                  style:
                      TextStyle(color: colorNotifier.textColor, fontSize: 50)),
            )),
      ),
    );
  }
}
