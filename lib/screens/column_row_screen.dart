import 'package:flutter/material.dart';

class ColumnRowScreen extends StatelessWidget {
  const ColumnRowScreen({super.key});

  Widget _buildBox(Color color, String text) {
    return Expanded(
      child: Container(
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color.withOpacity(0.15),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color, width: 1.2),
        ),
        child: Text(
          text,
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Column & Row Demo")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "مثال على Row مع Expanded و SizedBox:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                _buildBox(Colors.teal, "Expanded 1"),
                const SizedBox(width: 8),
                _buildBox(Colors.indigo, "Expanded 2"),
                const SizedBox(width: 8),
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.orange, width: 1.2),
                  ),
                  child: const Text("ثابت"),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              "مثال على Column مع MainAxisAlignment و CrossAxisAlignment:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Container(
              height: 160,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 36, color: Colors.teal.withOpacity(0.3)),
                  Container(height: 36, color: Colors.indigo.withOpacity(0.3)),
                  Container(height: 36, color: Colors.orange.withOpacity(0.3)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
