import 'package:flutter/material.dart';
import 'package:http/http.dart'  as http; 
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    // Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
    // Map data = jsonDecode(response.body);
    // print(data);
    // print(data['title']);
     try {
    // Make the GET request
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

    // Check if the request was successful
    if (response.statusCode == 200) {
      // Decode the JSON response
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data);
      print(data['title']);
    } else {
      // Handle the error if the response is not successful
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    // Handle any exceptions that occur during the request
    print('An error occurred: $e');
  }
  }

  int counter = 0;
  @override
  void initState() {
    super.initState();

    getData();
    print('Hey Guys');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loding Screen'),
    );
  }
}
