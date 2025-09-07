import 'package:dattebayo/features/characters/presentation/screens/characters_screen.dart';
import 'package:dattebayo/features/tailed_beasts/presentation/screens/tailed_beasts_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});
  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [CharactersScreen(), TailedBeastsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: _currentIndex, children: _screens),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Characters',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tailed-Beasts',
          ),
        ],
      ),
    );
  }
}
