import 'package:flutter/material.dart';

class AddFood extends StatelessWidget {
  const AddFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Tambah makanan'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Testis'),
    );
  }
}