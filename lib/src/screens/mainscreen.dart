import 'package:flutter/material.dart';
import 'package:vpnclient/src/screens/config.dart';
import 'package:vpnclient/src/screens/profile.dart';
import 'package:vpnclient/src/screens/vpnmain.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  _MainScreenState createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const MainVpnScreen(),
    ConfigListScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.vpn_key),
            label: 'VPN',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Конфиги',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
