import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Профиль',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
bottomNavigationBar: Container(
        width: double.infinity,
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.badge_rounded),
            Icon(Icons.map),
            Icon(Icons.favorite_sharp),
            Icon(Icons.portrait_rounded),
            Text('Лента'),
            Text('Карта'),
            Text('Избранные'),
            Text('Профиль'),
          ],
        ),
      ),
