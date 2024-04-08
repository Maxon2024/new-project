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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.black,
              backgroundImage: AssetImage('assets/images/photo1696045534.jpeg'),
            ),
            Text(
              'Бурканов Максат',
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
            Text(
              'maxon2023kg@gmail.com',
              style: TextStyle(color: Colors.black, fontSize: 20),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 60,
        color: Colors.white,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(Icons.badge_rounded),
                
                Text('Лента'),
              ],
            ),
            SizedBox(width: 30),
            Column(
              children: [
                Icon(Icons.map),
                Text('Карта'),
              ],
            ),
            SizedBox(width: 20),
            Column(
              children: [
                Icon(Icons.favorite_sharp),
                Text('Избранные'),
              ],
            ),
            SizedBox(width: 20),
            Column(
              children: [
                Icon(Icons.portrait_rounded),
                Text('Профиль'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
