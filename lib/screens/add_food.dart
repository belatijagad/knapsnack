import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:knapsnack/screens/home.dart';
import 'dart:convert';
import 'package:knapsnack/utils/constants.dart';

class AddFoodScreen extends StatefulWidget {
  @override
  _AddFoodScreenState createState() => _AddFoodScreenState();
}

class _AddFoodScreenState extends State<AddFoodScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  bool _validateInput() {
    if (_nameController.text.isEmpty ||
        _descriptionController.text.isEmpty ||
        _priceController.text.isEmpty) {
      return false;
    }
    return true;
  }

  bool _validatePrice() {
    return int.tryParse(_priceController.text) != null;
  }

  Future<void> _createFood() async {
    if (!_validateInput()) {
      // Handle input tidak valid (misalnya, menampilkan SnackBar)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Semua field harus diisi!')),
      );
      return; // Keluar dari fungsi jika input tidak valid
    }

    if (!_validatePrice()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Tolong masukkan nominal yang valid!')),
      );
      return;
    }
    var response = await http.post(
      Uri.parse(APIConstants.createConsumables),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'name': _nameController.text,
        'description': _descriptionController.text,
        'price': _priceController.text,
      }),
    );

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Berhasil menambahkan makanan!')),
      );
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Home()));
    } else {
      // Handle error (e.g., show error message)
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Makanan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Deskripsi'),
            ),
            TextField(
              controller: _priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Harga'),
            ),
            ElevatedButton(
              onPressed: _createFood,
              child: Text('Tambah Makanan'),
            ),
          ],
        ),
      ),
    );
  }
}
