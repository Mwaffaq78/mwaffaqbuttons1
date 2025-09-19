import 'package:flutter/material.dart';
import '../widgets/app_button.dart';

class ButtonPlaygroundScreen extends StatelessWidget {
  const ButtonPlaygroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Button Playground")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          AppButton(
            label: "زر عادي",
            icon: Icons.check_circle,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("ضغطت على زر عادي ✅")),
              );
            },
          ),
          const SizedBox(height: 12),
          AppButton(
            label: "زر أيقونة مختلفة",
            icon: Icons.star,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("ضغطت على زر النجمة ⭐")),
              );
            },
          ),
          const SizedBox(height: 12),
          AppButton(
            label: "زر معطل",
            icon: Icons.block,
            onPressed: null, // null = معطل
          ),
        ],
      ),
    );
  }
}
