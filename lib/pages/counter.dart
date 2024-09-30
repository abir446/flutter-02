import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  void increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter',
        style: TextStyle(
          color: Colors.black54,
        ),),
        backgroundColor: const Color.fromARGB(255, 223, 186, 67),
      ),
      drawer: Drawer(
        backgroundColor: Colors.brown[100],
        child: Column(
          children: [
            const DrawerHeader(
              child: Text(
                'App',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              title: const Text(
                'Input Page',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(
                    context, '/input'); // Wrapped inside an anonymous function
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Press to Increase Count'),
            ElevatedButton(
              onPressed: increment,
              child: Text(_count.toString()),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.amber[50],
    );
  }
}
