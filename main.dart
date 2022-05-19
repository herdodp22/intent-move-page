import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    title: "movepage",
    home: myapp(),
  ));
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("halaman pertama"),
      ),
      body: Center(
          child: RaisedButton(
        child: Text("movepage2"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => halamankedua()),
          );
        },
      ),
      ),
    );
  }
}

class halamankedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("halaman kedua"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("kembali"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
