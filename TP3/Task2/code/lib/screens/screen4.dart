import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is Screen 4',
              style: TextStyle(fontSize: 24.0),
            ),
            ElevatedButton(
              child: Text('End of screen go back to 1 '),
              onPressed: () {
                Navigator.pushNamed(context, '/screen1');
              },
            ),
          ],
        ),
      ),
    );
  }
}
