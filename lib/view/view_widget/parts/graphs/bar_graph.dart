import 'package:fl_chart/fl_chart.dart';import 'package:flutter/cupertino.dart';import 'package:flutter_riverpod/flutter_riverpod.dart'; //topclass TopPageBarGraph extends ConsumerWidget {  const TopPageBarGraph({Key? key}) : super(key: key);  @override  Widget build(BuildContext context, WidgetRef ref) {    return SingleChildScrollView(      scrollDirection: Axis.horizontal, // スクロールの向きを水平方向に指定      child: SizedBox(        height: 300,        width: 1000,        child: LineChart(          LineChartData(            lineBarsData: [              LineChartBarData(spots: const [                FlSpot(10, 9800),                FlSpot(11, 9600),                FlSpot(12, 12000),                FlSpot(13, 9800),                FlSpot(14, 3000),                FlSpot(15, 30000),                FlSpot(16, 30000),                FlSpot(17, 30000),                FlSpot(18, 30000),                FlSpot(19, 30000),                FlSpot(20, 30000),                FlSpot(21, 30000),                FlSpot(22, 30000),                FlSpot(23, 50000),                FlSpot(24, 30000),              ])            ],          ),        ),      ),    );  }}