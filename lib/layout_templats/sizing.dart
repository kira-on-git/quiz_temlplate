import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Listing 6.49
class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 1.2,
      child: ColoredBox(
        color: Colors.green,
      ),
    );
  }
}

//Listing 6.50
class ConstrainedBoxExample extends StatelessWidget {
  const ConstrainedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 400,
        minHeight: 100,
        maxWidth: 400,
        minWidth: 100,
      ),
      child: const ColoredBox(color: Colors.green),
    );
  }
}

//Listing 6.51
class SizedBoxExample extends StatelessWidget {
  const SizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      width: 200,
      child: ColoredBox(color: Colors.green),
    );
  }
}

//Listing 6.52
class SizedBoxInListViewExample extends StatelessWidget {
  const SizedBoxInListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text('Erster Text'),
        SizedBox(height: 20),
        Text('Zweiter Text'),
      ],
    );
  }
}

//Listing 6.53
class UnconstrainedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      clipBehavior: Clip.hardEdge,
      constrainedAxis: Axis.horizontal,
      child: ColoredBox(
        color: Colors.green,
        child: SizedBox(height: 800, width: 80),
      ),
    );
  }
}

//Listing 6.54
class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      width: 400,
      child: FittedBox(
        fit: BoxFit.contain,
        child: SizedBox(
          height: 800,
          width: 800,
          child: ColoredBox(color: Colors.green),
        ),
      ),
    );
  }
}

//Listing 6.55
class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const FractionallySizedBox(
      heightFactor: 0.25,
      widthFactor: 0.5,
      child: ColoredBox(color: Colors.green),
    );
  }
}

//Listing 6.56
class LimitedBoxExample extends StatelessWidget {
  const LimitedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LimitedBox(
          maxHeight: 50,
          child: ListView(
            children: const [
              Text('Hallo,  Welt!'),
            ],
          ),
        )
      ],
    );
  }
}

//Listing 6.57
class OverflowBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 400,
        color: Colors.black12,
        child: OverflowBox(
          maxHeight: 500,
          maxWidth: 500,
          minHeight: 150,
          minWidth: 150,
          child: Container(
            height: 500,
            width: 150,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

//Listing 6.58
class SizedOverflowBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 350,
          maxHeight: 350,
        ),
        child: SizedOverflowBox(
          size: Size(200, 200),
          child: Container(
            height: 500,
            width: 150,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

//Listing 6.59
class IntrinsicHeightFailExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Expanded(child: Text('Erste Zeile')),
            SizedBox(height: 16),
            Expanded(child: Text('Zweite Zeile')),
          ],
        ),
      ],
    );
  }
}

//Listing 6.60
class IntrinsicHeightExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          IntrinsicHeight(
            child: Column(
              children: [
                Expanded(child: Text('Erste Zeile')),
                SizedBox(height: 16),
                Expanded(child: Text('Zweite Zeile')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LayoutBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final widgets = List.generate(
          100,
          (index) => Center(child: Text(index.toString())),
        );

        if (constraints.maxWidth < 600) {
          return ListView(children: widgets);
        } else {
          return GridView.count(crossAxisCount: 2, children: widgets);
        }
      },
    );
  }
}

class SliverLayoutBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverLayoutBuilder(
          builder: (context, sliverConstraints) {
            final widgets = List.generate(
              100,
              (index) => Center(child: Text(index.toString())),
            );

            if (sliverConstraints.crossAxisExtent < 600) {
              return SliverList(delegate: SliverChildListDelegate(widgets));
            } else {
              return SliverGrid(
                delegate: SliverChildListDelegate(widgets),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
              );
            }
          },
        )
      ],
    );
  }
}
