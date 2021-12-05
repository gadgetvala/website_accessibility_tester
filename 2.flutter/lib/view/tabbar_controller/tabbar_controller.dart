import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wat/view/tabbar_controller/tabbar_controller_view_model.dart';

class TabBarController extends StatefulWidget {
  static const String id = "/tabContoller";
  final int index;

  const TabBarController({Key? key, this.index = 0}) : super(key: key);

  @override
  _TabBarControllerState createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  static const tabs = [
    Tabs.first,
    Tabs.second,
    Tabs.third,
    Tabs.four,
  ];

  @override
  void initState() {
    super.initState();
    controller = TabController(
        length: tabs.length, vsync: this, initialIndex: widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
        ),
        child: SafeArea(
          child: TabBar(
              controller: controller,
              onTap: (index) {
                context.read(tabControllerProvider).state = tabs[index];
              },
              labelPadding: EdgeInsets.zero,
              indicatorWeight: 0.1,
              tabs: const <Tab>[
                Tab(
                  icon: Icon(Icons.ac_unit),
                  text: "One",
                ),
                Tab(
                  icon: Icon(Icons.access_alarm),
                  text: "Two",
                ),
                Tab(
                  icon: Icon(Icons.safety_divider),
                  text: "Three",
                ),
                Tab(
                  icon: Icon(Icons.read_more),
                  text: "Four",
                ),
              ]),
        ),
      ),
      body: TabBarView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          _widget(),
          _widget(),
          _widget(),
          _widget(),
        ],
      ),
    );
  }
}

Widget _widget() {
  return const Center(child: Text("Hello"));
}
