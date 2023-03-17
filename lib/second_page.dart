import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'generated/l10n.dart';

class SecondPage extends StatefulWidget {
  final String data;

  const SecondPage({required this.data});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Center(
          child: Column(
            children: [
              Text(widget.data),
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).pop();
                },
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                child: Text(AppLocalizations.current.auto_route_back),
              )
            ],
          ),
        ),
      )),
    );
  }
}
