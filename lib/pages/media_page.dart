import 'package:flutter/material.dart';

class MediaPage extends StatelessWidget {
  const MediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('New Post',style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.close,color: Colors.black,),
          
        ),
        actions: [
          TextButton(onPressed: (){}, child: Text('Next',style: TextStyle(color: Colors.black,fontSize: 16),))
        ],
      ),
    );
  }
}