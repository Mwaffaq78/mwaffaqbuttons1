import 'package:flutter/material.dart';

class ListGridScreen extends StatelessWidget {
  const ListGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // تبويبين: ListView + GridView
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ListView & GridView Demo"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: "ListView"),
              Tab(icon: Icon(Icons.grid_view), text: "GridView"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            _ListTab(),
            _GridTab(),
          ],
        ),
      ),
    );
  }
}

// شاشة الـ ListView
class _ListTab extends StatelessWidget {
  const _ListTab();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: 15,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        return ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          tileColor: Colors.teal.withOpacity(0.1),
          leading: CircleAvatar(child: Text("${index + 1}")),
          title: Text("عنصر رقم ${index + 1}"),
          subtitle: const Text("هذا نص توضيحي قصير"),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {},
        );
      },
    );
  }
}

// شاشة الـ GridView
class _GridTab extends StatelessWidget {
  const _GridTab();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3 أعمدة
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 12,
      itemBuilder: (context, i) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.orange.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text("خانة ${i + 1}"),
        );
      },
    );
  }
}
