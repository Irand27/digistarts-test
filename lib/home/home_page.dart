import 'package:digistarts_test/home/cards/footer_card.dart';
import 'package:digistarts_test/home/cards/statistics_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatisticsCard(
      '',
      [FooterCard('', 1345)],
    );
  }
}
