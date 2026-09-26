import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hi Kiran')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 1.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Total Personal Assets',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                const Text(
                  '\$1,00,000',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Center(
                  child: SfCartesianChart(
                    legend: const Legend(isVisible: true),
                    series: <CartesianSeries<_WealthData, String>>[
                      SplineSeries<_WealthData, String>(
                        name: 'Portfolio Value',
                        dataSource: [
                          _WealthData('1M', 10.5),
                          _WealthData('2M', 11.2),
                          _WealthData('3M', 12.0),
                          _WealthData('4M', 12.8),
                          _WealthData('5M', 13.5),
                          _WealthData('6M', 14.2),
                        ],
                        xValueMapper: (_WealthData data, _) => data.period,
                        yValueMapper: (_WealthData data, _) => data.value,
                        markerSettings: const MarkerSettings(isVisible: true),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
           Container(
            width: 200,
            height: 200,
            child: SfCircularChart(
              title: ChartTitle(text: 'Asset Allocation'),
              legend: Legend(isVisible: true),
              series: <PieSeries<_PieData, String>>[
                PieSeries<_PieData, String>(
                  explode: true,
                  explodeIndex: 0,
                  dataSource: [
                    _PieData('Equity', 40, '40%'),
                    _PieData('Debt', 30, '30%'),
                    _PieData('Gold', 15, '15%'),
                    _PieData('Cash', 10, '10%'),
                    _PieData('Others', 5, '5%'),
                  ],
                  xValueMapper: (_PieData data, _) => data.xData,
                  yValueMapper: (_PieData data, _) => data.yData,
                  dataLabelMapper: (_PieData data, _) => data.text,
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, [this.text]);
  final String xData;
  final num yData;
  String? text;
}

class _WealthData {
  final String period;
  final double value;

  _WealthData(this.period, this.value);
}
