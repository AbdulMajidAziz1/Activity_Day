import 'package:flutter/material.dart';
import 'package:town_square_practice/constant.dart';

class ActivityDetails extends StatelessWidget {
  final String title;
  const ActivityDetails({
    required this.title,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 109,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0xD3BDBDC5),
            blurRadius: 8,
            spreadRadius: 0,
            offset: Offset(3, 3)
          )
        ]
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('08:00',
                      style: style125B,
                    ),
                    Text(' (60 min)',
                      style: style12,
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Text(title,
                  style: style147B,
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined,
                      size: 13,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 3,),
                    Text('La Playa de la Rada',
                      style: style12,
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  height: 16,
                  width: 71,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1)
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(Icons.person_outline,
                          size: 13,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 3,),
                        Text('8 spots left',
                          style: style105,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
