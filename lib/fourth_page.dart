import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'generated/l10n.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  var data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Center(
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter something'),
                  onChanged: (value) {
                    data = value;
                  },
                ),
                TextButton(
                  onPressed: () {
                    AutoRouter.of(context).pop(data);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(AppLocalizations.current.auto_route_back),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
