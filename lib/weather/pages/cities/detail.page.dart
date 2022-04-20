import 'package:flutter/material.dart';

class CityDetailPage extends StatelessWidget {
  final String name;
  final String ruLabel;

  const CityDetailPage({Key? key, required this.name, required this.ruLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? _buildVerticalLayout()
            : _buildHorizontalLayout();
      },
    ));
  }

  _buildVerticalLayout() {}

  _buildHorizontalLayout() {}
}
