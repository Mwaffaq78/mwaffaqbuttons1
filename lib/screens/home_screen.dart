import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import 'button_playground_screen.dart';
import 'column_row_screen.dart';
import 'stack_screen.dart';
import 'list_grid_screen.dart';
import 'wrap_align_screen.dart';
import 'responsive_screen.dart'; // 👈 استيراد الشاشة الجديدة

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Layouts Demo")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            AppButton(
              label: "تجربة الزر المخصص",
              icon: Icons.smart_button,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ButtonPlaygroundScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            AppButton(
              label: "تخطيطات Column & Row",
              icon: Icons.view_day,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ColumnRowScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            AppButton(
              label: "تخطيطات Stack & Positioned",
              icon: Icons.layers,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const StackScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            AppButton(
              label: "تخطيطات ListView & GridView",
              icon: Icons.view_list,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ListGridScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            AppButton(
              label: "تخطيطات Wrap & Align & Center",
              icon: Icons.wrap_text,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const WrapAlignScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            AppButton(
              label: "تخطيطات Responsive (LayoutBuilder)",
              icon: Icons.phone_android,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ResponsiveScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
