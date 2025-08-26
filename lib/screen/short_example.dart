import 'package:flutter/material.dart';

class ShortExample extends StatelessWidget {
  const ShortExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Small Example"),
      ),

      body: FloatingActionButton(onPressed: (){
        
      },
      child: Icon(Icons.add),
      ),
    );
  }
}