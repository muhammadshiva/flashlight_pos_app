import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardMenu extends StatelessWidget {
  const DashboardMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10.w,
        crossAxisSpacing: 10.w,
      ),
      itemCount: 16,
      itemBuilder: (context, index) {
        return dashboardCard(
          title: 'Card ${index + 1}',
          value: '\$ ${index * 100}',
        );
      },
    );
  }

  Widget dashboardCard({required String title, required String value}) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue,
      child: Column(
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
  }
}
