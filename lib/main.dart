import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('dtgh'),
        ),
        body: MyHome(),
      ),
    );
  }
}
class MyHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(onPressed: (){
            final dsrghs =SnackBar(content: Text('I am OK'),);

            // final snackBar = SnackBar(
            //   content: const Text('Yay! A SnackBar!'),
            //   action: SnackBarAction(
            //     label: 'Undo',
            //     onPressed: () {
            //       // Some code to undo the change.
            //     },
            //   ),
            // );

            // Find the ScaffoldMessenger in the widget tree
            // and use it to show a SnackBar.
            ScaffoldMessenger.of(context).showSnackBar(dsrghs);
          },
            child: Text('Oress Me'),
          ),
        ],
      ),
    );
  }
}


