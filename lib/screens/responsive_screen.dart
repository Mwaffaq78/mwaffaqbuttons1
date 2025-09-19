import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  // دالة تحدد عدد الأعمدة حسب عرض الشاشة
  int _gridCountForWidth(double width) {
    if (width >= 1000) return 6;
    if (width >= 800) return 5;
    if (width >= 600) return 4;
    if (width >= 400) return 3;
    return 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Responsive Layout Demo")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final crossCount = _gridCountForWidth(constraints.maxWidth);
          return GridView.builder(
            padding: const EdgeInsets.all(12),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossCount,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 4 / 3,
            ),
            itemCount: 20,
            itemBuilder: (context, i) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "عنصر ${i + 1}\n(${crossCount} أعمدة)",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
