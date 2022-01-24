import 'package:digistarts_test/theme/alias/box_spacing.dart';
import 'package:digistarts_test/theme/colors.dart';
import 'package:flutter/material.dart';

class FooterCard extends StatelessWidget {
  final String description;
  final int value;
  final String subDescription;
  FooterCard(this.description, this.value, {this.subDescription});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildLine(context),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: BoxSpacingAlias.large * 2.5,
              vertical: BoxSpacingAlias.normal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: ThemeColors.black(context),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: ThemeColors.black(context),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildLine(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 35),
      child: Container(
        decoration: BoxDecoration(
            color: ThemeColors.scaffoldBackground(context),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            )),
        height: 4,
      ),
    );
  }
}
