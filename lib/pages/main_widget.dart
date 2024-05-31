import 'package:donacion/pages/Informacion_albergue_widget.dart';
import 'package:donacion/pages/donaciones_widget.dart';
import 'package:flutter/material.dart';

import 'lista_notificacion_widget.dart';
import 'perfil_widget.dart';
import 'productos_widget.dart';



class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    ProductosWidget(),
    DonacionesWidget(),
    ListaNotificacionesWidget(),
    InformacionAlbergueWidget(),
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
            icon: Icon(Icons.home),
            label: 'Albergue',
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
