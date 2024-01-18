import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String text;

  const ResultScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ID Scan Result'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 100.0,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Scan Successful',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Divider(
                    color: Colors.teal,
                    height: 20,
                    thickness: 2,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'ID Information:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
