import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Animation Demo'),
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
  double _buttonWidth = 100.0;
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _buttonWidth = _buttonWidth == 100.0 ? 200.0 : 100.0;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: _buttonWidth,
                height: 50,
                color: Colors.amber,
                alignment: Alignment.center,
                child: const Text('Tap to Grow Width',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  _opacity = _opacity == 1.0 ? 0.5 : 1.0;
                });
              },
              child: AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: _opacity,
                child: Container(
                  width: 100,
                  height: 50,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text('Tap to Fade',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  _buttonWidth = _buttonWidth == 100.0 ? 150.0 : 100.0;
                  _opacity = _opacity == 1.0 ? 0.7 : 1.0;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: _buttonWidth,
                height: 50,
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text('Tap to Grow & Fade',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
