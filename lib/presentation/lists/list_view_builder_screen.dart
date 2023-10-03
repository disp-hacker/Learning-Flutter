import 'package:buttons/application/theme_service.dart';
import 'package:buttons/presentation/lists/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> example = ['Example', 'List', 'With', 'Strings'];
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: example.length,
            itemBuilder: (context, index) {
              return ListItem(title: example[index], index: index);
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ThemeService>(context, listen: false).toggleTheme();
        },
      ),
    );
  }
}
