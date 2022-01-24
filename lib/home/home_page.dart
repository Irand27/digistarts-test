import 'package:digistarts_test/alias/border_radius.dart';
import 'package:digistarts_test/alias/box_spacing.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(BorderRadiusAlias.medium),
      ),
      margin: EdgeInsets.symmetric(
          vertical: BoxSpacingAlias.medium, horizontal: BoxSpacingAlias.large),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
