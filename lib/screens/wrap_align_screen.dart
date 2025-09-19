import 'package:flutter/material.dart';

class WrapAlignScreen extends StatelessWidget {
  const WrapAlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chips = List.generate(
      12,
          (i) => Chip(
        label: Text("وسم ${i + 1}"),
        backgroundColor: Colors.teal.withOpacity(0.2),
        side: BorderSide(color: Colors.teal.shade400),
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Wrap & Align & Center Demo")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "مثال على Wrap (يلف العناصر تلقائيًا):",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: chips,
          ),
          const SizedBox(height: 24),
          const Text(
            "مثال على Align:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Container(
            height: 120,
            color: Colors.grey.withOpacity(0.2),
            child: const Align(
              alignment: Alignment.bottomRight,
              child: FlutterLogo(size: 60),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "مثال على Center:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Container(
            height: 120,
            color: Colors.indigo.withOpacity(0.2),
            child: const Center(
              child: Text(
                "أنا في المنتصف",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
