import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');  //just like useNavigation in react-Native
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit Location'),
            )
          ],
        ),
      ), //just like safeareaview in reactnative
    );
  }
}
