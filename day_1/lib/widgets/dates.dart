import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  final Map day;
  const DateWidget({super.key, required this.day});

  Color picker() {
    if (day["number"] == 14) {
      return Colors.orange[900]!;
    } else if (day["number"] > 16) {
      return Colors.grey[300]!;
    } else {
      return Colors.white10;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return Container(
      width: screenSize.width * 0.18,
      height: screenSize.width * 0.25,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: picker(),
        border: Border.all()
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              day["number"].toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(day["name"]),
          ],
        ),
      ),
    );
  }
}
