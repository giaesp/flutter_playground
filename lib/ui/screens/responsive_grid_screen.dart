import 'package:flutter/material.dart';
import 'package:flutter_playground/ui/screens/base_stateless_screen.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ResponsiveGridScreen extends BaseStatelessScreen {
  const ResponsiveGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildGridLayout(context));
  }

  _buildGridLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              lg: 12,
              child: Container(
                height: 100,
                alignment: const Alignment(0, 0),
                color: Colors.purple,
                child: const Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Container(
                height: 100,
                alignment: const Alignment(0, 0),
                color: Colors.green,
                child: const Text("xs : 6 \r\nmd : 3"),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Container(
                height: 100,
                alignment: const Alignment(0, 0),
                color: Colors.orange,
                child: const Text("xs : 6 \r\nmd : 3"),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Container(
                height: 100,
                alignment: const Alignment(0, 0),
                color: Colors.red,
                child: const Text("xs : 6 \r\nmd : 3"),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Container(
                height: 100,
                alignment: const Alignment(0, 0),
                color: Colors.blue,
                child: const Text("xs : 6 \r\nmd : 3"),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _buildGridList_rowMainAxisAlign(BuildContext context) {
    return ResponsiveGridList(
        rowMainAxisAlignment: MainAxisAlignment.center,
        desiredItemWidth: 100,
        minSpacing: 10,
        children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20].map((i) {
          return Container(
            height: 100.0,
            alignment: const Alignment(0, 0),
            color: Colors.cyan,
            child: Text(i.toString()),
          );
        }).toList());
  }

  _buildGridList_variableItemsHeights(BuildContext context) {
    return ResponsiveGridList(
        rowMainAxisAlignment: MainAxisAlignment.center,
        desiredItemWidth: 100,
        minSpacing: 10,
        children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20].map((i) {
          return Container(
            height: ((i % 5) + 1) * 100.0,
            alignment: const Alignment(0, 0),
            color: Colors.cyan,
            child: Text(i.toString()),
          );
        }).toList());
  }

  _buildGridLayout_testCrossAlign(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ResponsiveGridRow(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ResponsiveGridCol(
              xs: 6,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    color: Colors.blue,
                    margin: const EdgeInsets.all(10),
                  ), // height 100px
                  Container(
                    height: 100,
                    color: Colors.blueGrey,
                    margin: const EdgeInsets.all(10),
                  ) // height 100px
                ],
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              child: Container(
                height: 400,
                color: Colors.black45,
                margin: const EdgeInsets.all(10),
              ), // height 500px
            )
          ],
        ),
      ],
    );
  }

  _resposiveWidgetTest(BuildContext context) {
    return const Center(
        child: ResponsiveWidget(xs: Text('xs'), sm: Text('sm'), md: Text('md'), lg: Text('lg'), xl: Text('xl')));
  }

  _resposiveValueTest(BuildContext context) {
    return Center(child: Text(responsiveValue(context, xs: 'xs', lg: 'lg', md: 'md', sm: 'sm', xl: 'xl')));
  }

  _resposiveBuilderTest(BuildContext context) {
    return Center(
        child: ResponsiveBuilder(
            child: const Text(
              'child',
              style: TextStyle(fontSize: 30),
            ),
            xs: (_, child) => Container(
                  alignment: Alignment.topRight,
                  child: child,
                ),
            sm: (_, child) => Container(
                  alignment: Alignment.topLeft,
                  child: child,
                ),
            md: (_, child) => Container(
                  alignment: Alignment.center,
                  child: child,
                ),
            lg: (_, child) => Container(
                  alignment: Alignment.bottomRight,
                  child: child,
                ),
            xl: (_, child) => Container(
                  alignment: Alignment.bottomLeft,
                  child: child,
                )));
  }

  _buildStaggeredGridList(BuildContext context) {
    return ResponsiveStaggeredGridList(
        desiredItemWidth: 100,
        minSpacing: 10,
        children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20].map((i) {
          return Container(
            height: ((i % 3) + 1) * 100.0,
            alignment: const Alignment(0, 0),
            color: Colors.cyan,
            child: Text(i.toString()),
          );
        }).toList());
  }

  _buildResponsiveLocalWidget(BuildContext context) {
    return ResponsiveLocalWidget(
      configs: [500, 600, 700, 900]
          .map((e) => ResponsiveWidgetConfig(upToWidth: e.toDouble(), child: Center(child: Text(e.toString()))))
          .toList(),
    );
  }
}
