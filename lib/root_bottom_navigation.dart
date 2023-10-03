import 'package:buttons/presentation/counter_screen.dart';
import 'package:buttons/presentation/legal_bachelors_screen.dart';
import 'package:buttons/presentation/lists/list_view_builder_screen.dart';
import 'package:flutter/material.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({super.key});

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _currnetIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currnetIndex,
        children: const [CounterScreen(), LegalBachelor(), ListViewExample()],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currnetIndex = index;
            });
          },
          currentIndex: _currnetIndex,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Counter'),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: 'LB'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List')
          ]),
    );
  }
}
