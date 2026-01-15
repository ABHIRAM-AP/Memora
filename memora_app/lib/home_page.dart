import 'package:flutter/material.dart';
import 'package:memora_app/components/mem_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MemAppBar(),
      body: Center(
        child: Text("Notes Page"),
      ),
    );
  }
}
