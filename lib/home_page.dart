import 'package:auth_route_flutter/app_router.dart';
import 'package:auth_route_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutoRouteAware {
  String recievedData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text(AppLocalizations.of(context).title))),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
          child: Center(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    AutoRouter.of(context).push(FirstRoute());
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: Text(AppLocalizations.of(context).simple_route),
                ),
                TextButton(
                  onPressed: () {
                    AutoRouter.of(context)
                        .push(SecondRoute(data: "Data Sent from First page"));
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(AppLocalizations.of(context).send_data_to_route),
                ),
                TextButton(
                  onPressed: () async {
                    var data =
                        await AutoRouter.of(context).push(const FourthRoute());
                    setState(() {
                      recievedData = data.toString();
                    });
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  child:
                      Text(AppLocalizations.of(context).get_data_from_popped),
                ),
                Column(
                  children: [
                    Text(AppLocalizations.of(context).received_data),
                    Text(
                      recievedData,
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
