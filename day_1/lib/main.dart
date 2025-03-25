import 'package:day_1/consts.dart';
import 'package:day_1/widgets/dates.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            //The row acting as the app bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(backgroundColor: Colors.grey[200],child: Icon(Icons.arrow_back),),
                Text(
                  "Reservations",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.more_vert),
                )
              ],
            ),
            //Spacing
            const SizedBox(height: 30,),
            //A segmented button but i'll use a container instead
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text("Upcoming", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Row(
                    children: [
                      Text("Completed"),
                      const SizedBox(width: 10,),
                      Text("|", style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Text("Cancelled")
                ],
              ),
            ),
            const SizedBox(height: 30,),
            //The date showers
            Row(
              children: days.map((day) => DateWidget(day: day)).toList(),
            ),
            Text("Starts in 2h 32m", style: TextStyle(fontWeight: FontWeight.bold),),

            
          ],
        ),
      ),
    );
  }
}
