//test.dart

import 'package:flutter/material.dart';

//Listing 6.1-6.2
class CenterExample extends StatelessWidget {
  const CenterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      //Listing 6.2
      // widthFactor: [ 1 - 20 ],
      widthFactor: 4,
      // heightFactor: 2,
      child: Text('zentriert'),
    );
  }
}

//Listing 6.3
class AlignExample extends StatelessWidget {
  const AlignExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomLeft,
      child: Text('unten links'),
    );
  }
}

class PaddingExample extends StatelessWidget {
  const PaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.fromLTRB(50, 100, 40, 0),
      child: Text('Padding'),
    );
  }
}

class PaddingExample2 extends StatelessWidget {
  const PaddingExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 50, top: 100, right: 40),
      child: Text('Padding'),
    );
  }
}

class PaddingExample3 extends StatelessWidget {
  const PaddingExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(100),
      child: Text('Padding'),
    );
  }
}

class BaselineExample extends StatelessWidget {
  const BaselineExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 100),
      child: Baseline(
        baselineType: TextBaseline.alphabetic,
        baseline: -20,
        child: Text('Baseline -20'),
      ),
    );
  }
}

//Listing 6.8
class SafeAreaExample extends StatelessWidget {
  const SafeAreaExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text('SafeArea'),
    );
  }
}

// class ColumnMainAxisAlignmentExample extends StatelessWidget {
//   const ColumnMainAxisAlignmentExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const SafeArea(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           ColoredBox(
//             color: Colors.grey,
//             child: Column(
//               children: [
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Erste Zeile'))),
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Zweite Zeile'))),
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Dritte Zeile'))),
//               ],
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//             ),
//           ),
//           ColoredBox(
//             color: Colors.lightGreen,
//             child: Column(
//               children: [
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Erste Zeile'))),
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Zweite Zeile'))),
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Dritte Zeile'))),
//               ],
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             ),
//           ),
//           ColoredBox(
//             color: Colors.orangeAccent,
//             child: Column(
//               children: [
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Erste Zeile'))),
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Zweite Zeile'))),
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Dritte Zeile'))),
//               ],
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ColumnCrossAxisAlignmentExample extends StatelessWidget {
//   const ColumnCrossAxisAlignmentExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const SafeArea(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             verticalDirection: VerticalDirection.up,
//             children: [
//               Text(
//                 'Start',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               Text('Erste Zeile'),
//               Text('Zweite Zeile und etwas länger in der Mitte'),
//               Text('Dritte Zeile'),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             verticalDirection: VerticalDirection.up,
//             children: [
//               Text(
//                 'Center',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               Text('Erste Zeile'),
//               Text('Zweite Zeile und etwas länger in der Mitte'),
//               Text('Dritte Zeile'),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             verticalDirection: VerticalDirection.up,
//             children: [
//               Text(
//                 'End',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               Text('Erste Zeile'),
//               Text('Zweite Zeile und etwas länger in der Mitte'),
//               Text('Dritte Zeile'),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             verticalDirection: VerticalDirection.up,
//             children: [
//               Text(
//                 'Stretch',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               Text('Erste Zeile'),
//               Text('Zweite Zeile und etwas länger in der Mitte'),
//               Text('Dritte Zeile'),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class RowMainAxisAlignmentExample extends StatelessWidget {
//   const RowMainAxisAlignmentExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const SafeArea(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           ColoredBox(
//             color: Colors.grey,
//             child: Row(
//               children: [
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Erste Zeile'))),
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Zweite Zeile'))),
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Dritte Zeile'))),
//               ],
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//             ),
//           ),
//           ColoredBox(
//             color: Colors.lightGreen,
//             child: Row(
//               children: [
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Erste Zeile'))),
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Zweite Zeile'))),
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Dritte Zeile'))),
//               ],
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             ),
//           ),
//           ColoredBox(
//             color: Colors.orangeAccent,
//             child: Row(
//               children: [
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Erste Zeile'))),
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Zweite Zeile'))),
//                 Container(
//                     height: 30,
//                     width: 100,
//                     color: Theme.of(context).colorScheme.background,
//                     child: Center(child: Text('Dritte Zeile'))),
//               ],
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class RowOverflowExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('Expanded:', style: TextStyle(fontWeight: FontWeight.bold)),
//         Row(
//           children: [
//             Expanded(
//                 flex: 2,
//                 child: Text('Erster Text', style: TextStyle(fontSize: 40))),
//             Expanded(
//                 child: Text('Zweiter Text', style: TextStyle(fontSize: 40))),
//             Expanded(
//                 child: Text('Dritter Text', style: TextStyle(fontSize: 40))),
//           ],
//         ),
//         const SizedBox(height: 100),
//         Text('Flexible:', style: TextStyle(fontWeight: FontWeight.bold)),
//         Row(
//           children: [
//             Flexible(
//                 flex: 2,
//                 child: Text('Erster Text', style: TextStyle(fontSize: 40))),
//             Expanded(
//                 child: Text('Zweiter Text', style: TextStyle(fontSize: 40))),
//             Expanded(
//                 child: Text('Dritter Text', style: TextStyle(fontSize: 40))),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class SpacerColumnExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const SafeArea(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(child: Text('Erste Zeile')),
//           Expanded(child: Text('Zweite Zeile')),
//           Expanded(child: Text('Dritte Zeile')),
//           Spacer(flex: 2),
//           Expanded(child: Text('Mit Abstand das Ende')),
//         ],
//       ),
//     );
//   }
// }

// class ListViewListCtorExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const ListView(
//       children: [
//         Text('Erstes Item'),
//         Text('Zweites Item'),
//         Text('Drittes Item'),
//       ],
//     );
//   }
// }

// class ListViewListPhysicsExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const ListView(
//       physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
//       children: [
//         Text('Erstes Item2'),
//         Text('Zweites Item'),
//         Text('Drittes Item'),
//       ],
//     );
//   }
// }

// class ListViewNeverScrollExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const ListView(
//       physics: NeverScrollableScrollPhysics(),
//       children: [
//         Text('Erstes Item'),
//         Text('Zweites Item'),
//         Text('Drittes Item'),
//       ],
//     );
//   }
// }

// class ListViewWithScrollControllerExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const ListView(
//       controller: ScrollController(initialScrollOffset: 100),
//       children: [
//         Text('Erstes Item'),
//         Text('Zweites Item'),
//         Text('Drittes Item'),
//         // ...
//       ],
//     );
//   }
// }

// class ListViewBuilderExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final items = ('Item ' * 100).split(' ')
//       ..removeWhere((item) => item.isEmpty);

//     return const ListView.builder(
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         return const Text(items.elementAt(index) + (++index).toString());
//       },
//     );
//   }
// }

// class ListViewSeparatorExample extends StatelessWidget {
//   const ListViewSeparatorExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final items = ('Item ' * 100).split(' ')
//       ..removeWhere((item) => item.isEmpty);

//     return ListView.separated(
//       itemCount: items.length,
//       itemBuilder: (context, index) => ListTile(
//         title: Text(items.elementAt(index)),
//         onTap: () {},
//       ),
//       separatorBuilder: (context, _) => const Divider(),
//     );
//   }
// }

// class GridViewExample extends StatelessWidget {
//   const GridViewExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       crossAxisCount: 2,
//       crossAxisSpacing: 5,
//       mainAxisSpacing: 5,
//       children: const [
//         ColoredBox(color: Colors.grey, child: Center(child: Text('1'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('2'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('3'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('4'))),
//       ],
//     );
//   }
// }

// class GridViewExtendExample extends StatelessWidget {
//   const GridViewExtendExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.extent(
//       maxCrossAxisExtent: 80,
//       crossAxisSpacing: 5,
//       mainAxisSpacing: 5,
//       children: const [
//         ColoredBox(color: Colors.grey, child: Center(child: Text('1'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('2'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('3'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('4'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('5'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('6'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('7'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('8'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('9'))),
//       ],
//     );
//   }
// }

// class GridViewBuilderExample extends StatelessWidget {
//   const GridViewBuilderExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final items = ('Item ' * 100).split(' ')
//       ..removeWhere((item) => item.isEmpty);

//     return GridView.builder(
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         childAspectRatio: 1.61,
//         crossAxisCount: 2,
//         mainAxisSpacing: 5,
//         crossAxisSpacing: 5,
//       ),
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         return const ColoredBox(
//             color: Colors.grey, child: Center(child: Placeholder()));
//         // child: Text(item\s.elementAt(index) + (++index).toString())));
//       },
//     );
//   }
// }

// class ScrollDirectionExample extends StatelessWidget {
//   const ScrollDirectionExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       shrinkWrap: true,
//       crossAxisCount: 2,
//       crossAxisSpacing: 5,
//       mainAxisSpacing: 5,
//       children: const [
//         ColoredBox(color: Colors.grey, child: Center(child: Text('1'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('2'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('3'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('4'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('5'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('6'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('7'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('8'))),
//         ColoredBox(color: Colors.grey, child: Center(child: Text('9'))),
//       ],
//     );
//   }
// }

// class ShrinkWrapFailureExample extends StatelessWidget {
//   const ShrinkWrapFailureExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListView(
//           children: const [
//             Text('Hallo, Welt'),
//           ],
//         )
//       ],
//     );
//   }
// }

// class ShrinkWrapExample extends StatelessWidget {
//   const ShrinkWrapExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListView(
//           shrinkWrap: true,
//           children: const [
//             Text('Hallo, Welt'),
//           ],
//         )
//       ],
//     );
//   }
// }

// class SingleChildScrollViewWithoutScrollExample extends StatelessWidget {
//   const SingleChildScrollViewWithoutScrollExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Text(
//       'Hallo, Welt',
//       style: TextStyle(fontSize: 400),
//     );
//   }
// }

// class SingleChildScrollViewWithScrollExample extends StatelessWidget {
//   const SingleChildScrollViewWithScrollExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const SingleChildScrollView(
//       child: Text(
//         'Hallo, Welt',
//         style: TextStyle(fontSize: 400),
//       ),
//     );
//   }
// }

// class ScrollbarExample extends StatelessWidget {
//   const ScrollbarExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scrollbar(
//       child: SingleChildScrollView(
//         child: Text(
//           'Hallo, Welt',
//           style: TextStyle(fontSize: 400),
//         ),
//       ),
//     );
//   }
// }

// class PageViewExample extends StatelessWidget {
//   const PageViewExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return PageView(
//       onPageChanged: (index) => print('Seite: ${++index}'),
//       scrollDirection: Axis.vertical,
//       children: const [
//         ColoredBox(color: Colors.red),
//         ColoredBox(color: Colors.green),
//         ColoredBox(color: Colors.blue),
//       ],
//     );
//   }
// }

// class KeepAliveClientMixinExample extends StatefulWidget {
//   const KeepAliveClientMixinExample({super.key, required this.index});

//   final int index;

//   @override
//   _KeepAliveClientMixinExampleState createState() =>
//       _KeepAliveClientMixinExampleState();
// }

// // Beispiel ohne Implementierung von Mixin
// // class _KeepAliveClientMixinExampleState
// //     extends State<KeepAliveClientMixinExample> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return const Text('Keep Alive, please! Index: ${widget.index}');
// //   }
// //
// //   @override
// //   void dispose() {
// //     super.dispose();
// //
// //     print('Disposed: ${widget.index}');
// //   }
// // }

// // Beispiel mit Implementierung von Mixin
// class _KeepAliveClientMixinExampleState
//     extends State<KeepAliveClientMixinExample>
//     with AutomaticKeepAliveClientMixin {
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     return Text('Keep Alive, please! Index: ${widget.index}');
//   }

//   @override
//   void dispose() {
//     super.dispose();

//     print('Disposed: ${widget.index}');
//   }

//   @override
//   bool get wantKeepAlive => true;
// }

// class KeepAliveClientWidgetUsageExample extends StatelessWidget {
//   const KeepAliveClientWidgetUsageExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final widgets = List.generate(
//         200, (index) => KeepAliveClientMixinExample(index: index));

//     return ListView(
//       children: widgets,
//     );
//   }
// }

// class NotificationListenerExample extends StatelessWidget {
//   const NotificationListenerExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return NotificationListener<ScrollNotification>(
//       onNotification: (notification) {
//         print(notification.runtimeType.toString());
//         // Wir definieren die Notification als behandelt
//         return true;
//       },
//       child: const SingleChildScrollView(
//         child: Text(
//           'Hallo, Welt',
//           style: TextStyle(fontSize: 400),
//         ),
//       ),
//     );
//   }
// }

// class TableExample extends StatelessWidget {
//   const TableExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Table(
//           border: TableBorder.all(),
//           children: const [
//             TableRow(children: [Text('links oben'), Text('rechts oben')]),
//             TableRow(children: [Text('links unten'), Text('rechts unten')]),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TableFixedWithExample extends StatelessWidget {
//   const TableFixedWithExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Table(
//           columnWidths: const {
//             0: FractionColumnWidth(0.3),
//             1: FractionColumnWidth(0.7),
//           },
//           border: TableBorder.all(),
//           children: const [
//             TableRow(children: [Text('links oben'), Text('rechts oben')]),
//             TableRow(children: [Text('links unten'), Text('rechts unten')]),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class StackExample extends StatelessWidget {
//   const StackExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Stack(
//         alignment: Alignment.bottomLeft,
//         children: const [
//           Positioned.fill(
//             child: ColoredBox(
//               color: Colors.black12,
//             ),
//           ),
//           Positioned(
//             height: 200,
//             width: 200,
//             top: 280,
//             left: 115,
//             child: ColoredBox(color: Colors.green),
//           ),
//           Center(
//             child: Text(
//               'Hallo Stack',
//               style: TextStyle(fontSize: 24),
//             ),
//           ),
//           Text(
//             'Startpunkt unten links',
//             style: TextStyle(fontSize: 24),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class IndexedStackExample extends StatelessWidget {
//   const IndexedStackExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return IndexedStack(
//       index: 3,
//       alignment: Alignment.bottomLeft,
//       children: const [
//         Positioned.fill(
//           child: ColoredBox(
//             color: Colors.black12,
//           ),
//         ),
//         Positioned(
//           height: 200,
//           width: 200,
//           top: 280,
//           left: 115,
//           child: ColoredBox(color: Colors.green),
//         ),
//         Center(
//           child: Text(
//             'Hallo Stack',
//             style: TextStyle(fontSize: 24),
//           ),
//         ),
//         Text(
//           'Startpunkt unten links',
//           style: TextStyle(fontSize: 24),
//         ),
//       ],
//     );
//   }
// }

// class WrapExample extends StatelessWidget {
//   const WrapExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Wrap(
//         direction: Axis.horizontal,
//         spacing: 10,
//         runSpacing: 40,
//         alignment: WrapAlignment.end,
//         children: const [
//           Text(
//             'Der erste Text',
//             style: TextStyle(fontSize: 34),
//           ),
//           Text(
//             'Der zweite Text',
//             style: TextStyle(fontSize: 34),
//           ),
//           Text(
//             'Der dritte Text',
//             style: TextStyle(fontSize: 34),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SliverExample extends StatelessWidget {
//   const SliverExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final widgets = List.generate(
//       200,
//       (index) => Text('A Text, please! Index: $index'),
//     );
//     final sliverListChildren = widgets.take(100).toList();
//     final sliverGridChildren = widgets.skip(100).toList();

//     return CustomScrollView(
//       slivers: [
//         const SliverAppBar(
//           title: Text('Titel in der AppBar'),
//         ),
//         SliverList(
//           delegate: SliverChildBuilderDelegate(
//             (context, index) => sliverListChildren.elementAt(index),
//             childCount: sliverListChildren.length,
//           ),
//         ),
//         SliverToBoxAdapter(
//           child: Container(
//             color: Colors.green,
//             height: 200,
//           ),
//         ),
//         SliverGrid(
//           delegate: SliverChildListDelegate(sliverGridChildren),
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//           ),
//         )
//       ],
//     );
//   }
// }

// class SliverFillViewPortExample extends StatelessWidget {
//   const SliverFillViewPortExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         SliverFillViewport(
//           delegate: SliverChildListDelegate(
//             const [
//               ColoredBox(color: Colors.red),
//               ColoredBox(color: Colors.green),
//               ColoredBox(color: Colors.blue),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
