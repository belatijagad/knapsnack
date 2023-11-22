import 'package:flutter/material.dart';
import 'package:knapsnack/widgets/left_drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const LeftDrawer(),
      appBar: AppBar(
        title: const Text("Knapsnack"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Hello worldo!"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("click me"),
        onPressed: () {},
      ),
    );
  }
}