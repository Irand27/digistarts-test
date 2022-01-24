import 'package:digistarts_test/home/components/chart.dart';
import 'package:digistarts_test/theme/alias/border_radius.dart';
import 'package:digistarts_test/theme/alias/box_spacing.dart';
import 'package:digistarts_test/theme/colors.dart';
import 'package:flutter/material.dart';

class StatisticsCard extends StatelessWidget {
  final String title;
  final Chart graph;
  final List<Widget> footerCardList;
  const StatisticsCard(
    this.title,
    this.graph,
    this.footerCardList, {
    Key key,
  }) : super(key: key);

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
          children: [
            _buildTitle(context),
            _buildGraph(),
            ...(footerCardList ?? <Widget>[]),
          ],
        ),
      ),
    );
  }

  Padding _buildTitle(context) {
    return Padding(
      padding: const EdgeInsets.only(top: BoxSpacingAlias.large),
      child: Text(
        title,
        style: TextStyle(
          decoration: TextDecoration.none,
          color: ThemeColors.black(context),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Padding _buildGraph() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: BoxSpacingAlias.small, horizontal: BoxSpacingAlias.large),
      child: SizedBox(
        child: graph,
        height: 200,
      ),
    );
  }
}
