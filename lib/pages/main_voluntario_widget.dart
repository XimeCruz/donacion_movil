
import 'package:donacion/pages/albergues_widget.dart';
import 'package:donacion/pages/donaciones_disponibles_widget.dart';
import 'package:flutter/material.dart';

import 'lista_notificacion_widget.dart';
import 'perfil_widget.dart';



class MainVolunScreen extends StatefulWidget {
  @override
  _MainVolunScreenState createState() => _MainVolunScreenState();
}

class _MainVolunScreenState extends State<MainVolunScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    AlberguesWidget(),
    DonacionesDisponiblesWidget(),
    ListaNotificacionesWidget(),
    PerfilWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFF4DB051), // Color del ítem seleccionado
        unselectedItemColor: Colors.grey, // Color del ítem no seleccionado
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold), // Estilo del texto seleccionado
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Donaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
