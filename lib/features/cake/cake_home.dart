import 'package:flutter/material.dart';

class CakeHomePage extends StatefulWidget {
  const CakeHomePage({super.key});

  @override
  State<CakeHomePage> createState() => _CakeHomePageState();
}

class _CakeHomePageState extends State<CakeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar - a collapsible app bar
          SliverAppBar(
              expandedHeight: 200.0, // The height when expanded
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(children: [
                          Column(
                            children: [
                              const Text(
                                'Location',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              const Text(
                                'New York, USA',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ]),
                        IconButton(
                          icon: const Icon(Icons.shopping_cart_outlined,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.notifications_outlined,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.shopping_cart_outlined,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.notifications_outlined,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item #$index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
