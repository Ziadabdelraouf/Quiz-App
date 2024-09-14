import 'package:flutter/material.dart';
import 'summary_item.dart';
class SummaryData extends StatelessWidget {
  const SummaryData(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
  
    return SizedBox(
      height: 370,
      width: 370,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
