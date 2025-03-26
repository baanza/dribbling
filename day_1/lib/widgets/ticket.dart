import 'package:flutter/material.dart';

class TicketWidget extends StatelessWidget {
  const TicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Container(
          height: 100,
          width: size.width * 0.75,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/cutlery.png",
                    height: 48,
                    width: 50,
                  ),
                ],
              ),
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "14",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "th",
                          style: TextStyle(
                            fontFeatures: [FontFeature.subscripts()],
                          ),
                        ),
                        TextSpan(text: " Celebrate Love at Gormet..."),
                      ],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Reservation ID: ",
                          style: TextStyle(fontSize: 12),
                        ),
                        TextSpan(text: "4512E", style: TextStyle(fontSize: 15)),
                        TextSpan(
                          text: " Time: ",
                          style: TextStyle(fontSize: 12),
                        ),
                        TextSpan(
                          text: "8:25 pm",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          width: size.width * 0.75,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Image.asset("assets/images/barcode.png",colorBlendMode: BlendMode.srcIn,width: size.width * 0.35,),
              Column(
                children: [
                  Row(
                    children: [
                      Text("Table No 4"),
                      const SizedBox(width: 3,),
                      Text("|"),
                      const SizedBox(width: 4,),
                      Row(
                        children: [
                          Icon(Icons.chair),
                          Text(" 4"),
                        ],
                      ),
                       const SizedBox(width: 4,),
                      Text(" |"),
                       const SizedBox(width: 4,),
                      Text("InDoor"),
                    ],
                  ),
                  Text("Special Requests: "),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
