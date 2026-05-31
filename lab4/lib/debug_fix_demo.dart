import 'package:flutter/material.dart';

class DebugFixDemo extends StatefulWidget {
  const DebugFixDemo({super.key});

  @override
  State<DebugFixDemo> createState() =>
      _DebugFixDemoState();
}

class _DebugFixDemoState
    extends State<DebugFixDemo> {

  int count = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Debug Fixes"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Text("Increase"),
            ),

            Text(
              "Count = $count",
              style: const TextStyle(fontSize: 22),
            ),

            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text("Item $index"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}