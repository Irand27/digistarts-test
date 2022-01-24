import 'package:digistarts_test/theme/alias/border_radius.dart';
import 'package:digistarts_test/theme/alias/box_spacing.dart';
import 'package:digistarts_test/theme/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeColors.paper(context),
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
