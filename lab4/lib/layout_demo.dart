import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> movies = [
      "Avengers",
      "Batman",
      "Spiderman",
      "Iron Man",
      "Doctor Strange",
      "Thor",
      "Captain America"
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.blue.shade100,
              child: const Text(
                "Featured Movies",
                style: TextStyle(fontSize: 20),
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.movie),
                      title: Text(movies[index]),
                    ),
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