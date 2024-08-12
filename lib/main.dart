import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: (Text("Gretting App")),
          ),
          body: HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('"Welcome to Flutter!'),
          SizedBox(
            height: 20,
          ),
          Image.asset('assets/images/download.jpg'),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(content: Text('Button Pressed!'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },



            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: Text('Press Me'),

          ),
        ],
      ),
    );
  }
}
