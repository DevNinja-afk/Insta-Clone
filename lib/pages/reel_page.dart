import 'package:flutter/material.dart';

class ReelPage extends StatelessWidget {
  const ReelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Reels',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.black,))
        ],
      ),
    );
  }
}