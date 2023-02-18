import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final String title;
  final Widget body;
  final List<Widget>? action;

  const DefaultLayout({
    required this.title,
    required this.body,
    this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: action,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: body,
      ),
    );
  }
}
