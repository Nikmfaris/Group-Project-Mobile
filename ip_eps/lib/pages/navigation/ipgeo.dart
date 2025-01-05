import 'package:flutter/material.dart';

class IpGeoPage extends StatefulWidget {
  @override
  _IpGeoPageState createState() => _IpGeoPageState();
}

class _IpGeoPageState extends State<IpGeoPage> {
  final TextEditingController _controller = TextEditingController();
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent, // Set the desired background color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter IP Address',
              ),
            ),
            // Add other widgets here
          ],
        ),
      ),
    );
  }
}
