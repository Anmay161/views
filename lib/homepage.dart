import 'package:flutter/material.dart';
import 'package:views/gridview.dart';
import 'package:views/listview.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListviewPage())
                );
              },
              child: const Text('ListView'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => GridviewPage())
                );
              },
              child: const Text('GridView'),
            ),
          ],
        ),
      ),
    );
  }
}
