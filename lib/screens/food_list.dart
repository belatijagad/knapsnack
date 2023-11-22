import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:knapsnack/models/consumable.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodList> {
  Client client = http.Client();
  List<Consumable> consumables = [];

  @override
  void initState() {
    _retrieveConsumables();
    super.initState();
  }

  _retrieveConsumables() async {
    consumables = [];
    List response = json.decode((await client.get(Uri.parse('http://192.168.56.1:8000/consumables/'))).body);
    response.forEach((element) {
      consumables.add(Consumable.fromMap(element));
    });
    setState(() {

    });
  }

  void _deleteNote(int id) async {
    await client.delete(Uri.parse('http://192.168.56.1:8000/consumables/$id/delete/'));
    _retrieveConsumables();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Lihat Makanan'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          _retrieveConsumables();
        },
        child: ListView.builder(
          itemCount: consumables.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(consumables[index].name),
              onTap: () {},
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => _deleteNote(consumables[index].id),
              ),
            );
          },
        ),
      )
    );
  }
}