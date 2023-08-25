import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Match List"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Argentina vs Africa'),
            trailing: Icon(Icons.arrow_right_alt),
            onTap: () {},
          ),
          ListTile(
            title: Text('Italy vs Spain'),
            trailing: Icon(Icons.arrow_right_alt),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
