import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portfolio_pessoal/screens/experience.dart';
import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const NavBar(),
    );
  }
}


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  List<Widget> telas = [Home(), Experience()];

  int index_atual = 0;

  void mudar_index(int novo_index){
    setState(() {
      index_atual = novo_index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: telas[index_atual],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Ionicons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Ionicons.person), label: "Experience"),
      ],
      currentIndex: index_atual,
      onTap: mudar_index,
      
      ),
    );
  }
}