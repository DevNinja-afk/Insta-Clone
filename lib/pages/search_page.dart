import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'Search',
          contentPadding: EdgeInsets.all(0),
          
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none
          ),
          fillColor: Color.fromRGBO(220, 220, 220, 1),
          filled: true
        ),
        
        
       ),
       elevation: 0,
       automaticallyImplyLeading: false,
       backgroundColor: Colors.white,
       actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.person_add,color: Colors.black,size: 30,))
       ],),
    );
  }
}