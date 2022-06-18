import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
    required this.errorName,
    required this.errorCode,
  }) : super(key: key);

  final String errorName;
  final int errorCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text(errorName),
      ),
    );
  }
}
