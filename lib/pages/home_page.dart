import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "HomePage";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task1"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: [
          const SizedBox(height: 20),
          _itemList(),
          const SizedBox(height: 20),
          _itemList(),
          const SizedBox(height: 20),
          _itemList(),
        ],
      ),
    );
  }

  Widget _itemList() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
            image: AssetImage('assets/images/img1.jpg'), fit: BoxFit.cover),
      ),
      child: Container(
        padding: const EdgeInsets.only(bottom: 20, left: 20),
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: const Text(
          "PDP Online",
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
