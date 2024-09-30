import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController cont = TextEditingController();

    void greetUser() {
      print(cont.text); // Prints the text to the console
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.backspace_outlined)),
        title: const Text('Input Page'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0), // Adds padding for spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: cont,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
                height: 20), // Adds space between the text field and button
            ElevatedButton(
              onPressed: greetUser,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
