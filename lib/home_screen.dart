import 'package:auto_routers/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Home")),
        body: Column(children: [
          ElevatedButton(
              onPressed: () {
                context.pushRoute(DetailRoute(name:"Welcome"));
              },
              child: const Text("Go to Next")),
          ElevatedButton(
              onPressed: () {
                context.navigateTo(DetailRoute(name: "Abhijeet"));
              },
              child: const Text("Go to Next")),
          ElevatedButton(
              onPressed: () {
                context.replaceRoute(DetailRoute(name: "Abhijeet"));
              },
              child: const Text("Go to Next")),
        ]));
  }
}
