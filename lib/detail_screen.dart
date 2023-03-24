import 'package:auto_route/auto_route.dart';
import 'package:auto_routers/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key, this.name}) : super(key: key);
  String? name;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail")),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              context.replaceRoute(const HomeRoute());
            },
            child: const Text("Go to Next")),
        ElevatedButton(
            onPressed: () {
              context.back();
            },
            child: const Text("Go to Next")),
      ]),
    );
  }
}