import 'package:flutter/material.dart';

class EditFile extends StatelessWidget {
  const EditFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test branchs'),
      ),
      body: Row(
        children: [Container(), const Text('we are in test branch now ')],
      ),
    );
  }
}
