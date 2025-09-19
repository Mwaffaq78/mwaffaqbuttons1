import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack & Positioned Demo")),
      body: Center(
        child: Container(
          width: 280,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              // خلفية مربعة
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 180,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.teal.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              // شارة أعلى اليمين
              Positioned(
                top: 12,
                right: 12,
                child: _buildBadge("TOP-RIGHT"),
              ),
              // شارة أسفل اليسار
              Positioned(
                bottom: 12,
                left: 12,
                child: _buildBadge("BOTTOM-LEFT"),
              ),
              // زر في الأسفل يمين
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton.small(
                    onPressed: () {},
                    child: const Icon(Icons.play_arrow),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBadge(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}
