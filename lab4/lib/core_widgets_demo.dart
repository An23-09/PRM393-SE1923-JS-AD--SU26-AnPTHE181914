import 'package:flutter/material.dart';

class CoreWidgetsDemo extends StatelessWidget {
  const CoreWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Core Widgets"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            const Text(
              "Flutter UI Fundamentals",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Icon(
              Icons.flutter_dash,
              size: 80,
              color: Colors.blue,
            ),

            const SizedBox(height: 20),

            Image.network(
              "https://picsum.photos/300",
              height: 180,
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Pham Thai An"),
                subtitle: const Text("FPT University"),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}