import 'package:flutter/material.dart';

class SliverGridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverSafeArea(
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.child_friendly,
                    size: 48.0,
                    color: Colors.amber,
                  ),
                  Divider(),
                  Text('Grid ${index + 1}'),
                ],
              ),
            );
          },
          childCount: 12,
        ),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      ),
    );
  }
}
