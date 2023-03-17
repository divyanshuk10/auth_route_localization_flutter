import 'package:auth_route_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: TextButton(
        onPressed: () {
          AutoRouter.of(context).pop();
        },
        style: TextButton.styleFrom(backgroundColor: Colors.blue),
        child:  Text(AppLocalizations.current.auto_route_back),
      )),
    );
  }
}
