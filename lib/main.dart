import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  int _currentIndex = 0; 

  final List<Widget> _pages = [
    const Center(child: Text('This is Test 1', style: TextStyle(fontSize: 24))),
    const Center(child: Text('This is Test 2', style: TextStyle(fontSize: 24))),
    const Center(child: Text('This is Test 3', style: TextStyle(fontSize: 24))),
  ];

  void _onNavBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onNavBarTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: 'Test 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: 'Test 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: 'Test 3',
          ),
        ],
      ),
    );
  }
}
