import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:knapsnack/utils/constants.dart';

// class AddFood extends StatelessWidget {
//   const AddFood({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('Tambah makanan'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: const Text('tambah'),
//     );
//   }
// }

class AddFoodScreen extends StatefulWidget {
  @override
  _AddFoodScreenState createState() => _AddFoodScreenState();
}

class _AddFoodScreenState extends State<AddFoodScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  Future<void> _createFood() async {
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
      // Handle successful registration (e.g., navigate to login page)
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
