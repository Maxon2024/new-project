import 'package:flutter/material.dart';
import 'package:flutter_application_7/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Center(
              child: Text('Авторизация', style: TextStyle(fontSize: 20))),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 800,
                  height: 50,
                  color: Colors.white,
                  child: Text(
                    'Логин и почта',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    'Пароль',
                    style: const TextStyle(fontSize: 20),
                  ),
                  width: 800,
                  height: 50,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Home())));
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'Войти',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    width: 800,
                    height: 50,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Text(
                      'Зарегистрироваться',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  width: 800,
                  height: 50,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ));
  }
}
