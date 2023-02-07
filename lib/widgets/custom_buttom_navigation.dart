import 'package:flutter/material.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        //showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0,
        selectedItemColor: Colors.pink,
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Calendario'),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart), label: 'Gráfica'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuario')
        ]);
  }
}
