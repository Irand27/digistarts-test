import 'package:digistarts_test/home/cards/footer_card.dart';
import 'package:digistarts_test/home/cards/statistics_card.dart';
import 'package:digistarts_test/home/components/charts_bar.dart';
import 'package:digistarts_test/home/components/data_chart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estatísticas'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StatisticsCard(
                '',
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
                [FooterCard('', 1345)],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
