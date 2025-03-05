import 'package:flutter/material.dart';

class WhistlistElemnt extends StatelessWidget {
  const WhistlistElemnt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'WishList Elemnt',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 1),
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    const Text('Hello wish'),
                    const SizedBox(height: 10),
                    Text('$index')
                  ],
                ),
                // decoration:
                //     BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.),
              );
            }),
      ),
    );
  }
}
