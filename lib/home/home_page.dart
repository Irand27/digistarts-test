import 'package:digistarts_test/home/cards/footer_card.dart';
import 'package:digistarts_test/home/cards/statistics_card.dart';
import 'package:digistarts_test/home/components/charts_bar.dart';
import 'package:digistarts_test/home/components/data_chart.dart';
import 'package:digistarts_test/screens/custom_appbar.dart';
import 'package:digistarts_test/theme/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          defaultBackground(),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StatisticsCard(
                  'Maior índice de confirmações',
                  ChartsBar(barData: [
                    ChartSampleData(
                        x: 2006, y: 16.219, secondSeriesYValue: 10.655),
                    ChartSampleData(
                        x: 2007, y: 16.461, secondSeriesYValue: 11.498),
                    ChartSampleData(
                        x: 2008, y: 17.427, secondSeriesYValue: 12.514),
                    ChartSampleData(
                        x: 2009, y: 13.754, secondSeriesYValue: 11.012),
                    ChartSampleData(
                        x: 2010, y: 15.743, secondSeriesYValue: 12.315),
                  ]),
                  [
                    FooterCard('Quantos casos', 7000),
                    FooterCard('Mortes', 1345)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container defaultBackground() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF73AEF5),
              Color(0xFF61A4F1),
              Color(0xFF478DE0),
              Color(0xFF398AE5),
            ],
            stops: [
              0.1,
              0.4,
              0.7,
              0.9,
            ]),
      ),
    );
  }
}
