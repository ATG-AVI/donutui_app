import "package:donutui/tabs/burger_tab.dart";
import "package:donutui/tabs/donut_tab.dart";
import "package:donutui/tabs/pancake_tab.dart";
import "package:donutui/tabs/pizza_tab.dart";
import "package:donutui/tabs/smoothie_tab.dart";
import "package:donutui/util/my_tab.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my tabs
  List<Widget> mytabs = [
    // donut tab
    MyTab(iconPath: 'lib/icons/donut.png'),
    // burger tab
    MyTab(iconPath: 'lib/icons/burger.png'),

    // smoothie tab
    MyTab(iconPath: 'lib/icons/smoothie.png'),

    // pancake tab
    MyTab(iconPath: 'lib/icons/pancakes.png'),

    // pizza tab
    MyTab(iconPath: 'lib/icons/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey.shade800,
                size: 36,
              ),
              onPressed: () {
                // open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey.shade800,
                  size: 36,
                ),
                onPressed: () {
                  // account button tapped
                },
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // i want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'I want to',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    ' EAT',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),

            const SizedBox(height: 24),

            // tab bar
            TabBar(tabs: mytabs),

            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // donut page
                  DonutTab(),

                  // burger page
                  BurgerTab(),

                  // smoothie page
                  SmoothieTab(),

                  // pancake page
                  PancakeTab(),

                  // pizza page
                  PizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
