import 'package:flutter/material.dart';

class LeftDrawer extends StatefulWidget {
  const LeftDrawer({super.key});

  @override
  _LeftDrawerState createState() => _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Tests"),
            accountEmail: Text("test@test.com"),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.account_circle, size: 50.0)
            ),
            decoration: BoxDecoration(color: Colors.red),
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Tambah Makanan'),
            onTap: () {
              Navigator.pushNamed(context, '/add_food');
            }
          ),
          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text('Lihat Makanan'),
            onTap: () {
              Navigator.pushNamed(context, '/food_list');
            }
          ),
          ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Login'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              }
          ),
          ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Register'),
              onTap: () {
                Navigator.pushNamed(context, '/register');
              }
          ),
        ],
      ),
    );
  }
}