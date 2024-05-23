import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Search for the City'),
    centerTitle: true,
    titleTextStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          ), 
          
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:  Center(
              child:  TextField(

                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  labelText: 'Search',
                  suffixIcon: Icon(Icons.search),
                  //suffixIconColor: Colors.amber,
                  border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(16),  
                  ) ,
                  hintText: 'Enter City Name',
                  )
                ),
            
              ),
            ),
          );
    
  }
}
