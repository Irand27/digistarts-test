import 'package:digistarts_test/home/components/chart.dart';
import 'package:digistarts_test/home/components/data_chart.dart';
import 'package:digistarts_test/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartsBar extends Chart {
  final List<ChartSampleData> barData;

  const ChartsBar({Key key, this.barData}) : super(key: key);

  @override
  _SyncFusionFlutterChartsBarState createState() =>
      _SyncFusionFlutterChartsBarState();
}

class _SyncFusionFlutterChartsBarState extends State<ChartsBar> {
  _SyncFusionFlutterChartsBarState();

  static const double _columnWidth = 0.8;
  static const double _columnSpacing = 0.2;

  @override
  Widget build(BuildContext context) {
    return _getSpacingBarChart();
  }

  SfCartesianChart _getSpacingBarChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      legend: Legend(isVisible: false),
      primaryXAxis: NumericAxis(
        minimum: 2005,
        maximum: 2011,
        interval: 1,
        majorGridLines: MajorGridLines(
          width: 0,
        ),
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}%',
      ),
      series: _getSpacingBarSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  List<BarSeries<ChartSampleData, num>> _getSpacingBarSeries() {
    return <BarSeries<ChartSampleData, num>>[
      BarSeries<ChartSampleData, num>(
        color: ThemeColors.accent(context),
        width: _columnWidth,
        spacing: _columnSpacing,
        dataSource: widget.barData,
        xValueMapper: (sales, _) => sales.x,
        yValueMapper: (sales, _) => sales.y,
        name: 'Import',
      ),
      BarSeries<ChartSampleData, num>(
        width: _columnWidth,
        spacing: _columnSpacing,
        dataSource: widget.barData,
        xValueMapper: (sales, _) => sales.x,
        yValueMapper: (sales, _) => sales.secondSeriesYValue,
        name: 'Export',
      ),
    ];
  }
}
