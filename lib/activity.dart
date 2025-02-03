import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:town_square_practice/activity_choice.dart';
import 'package:town_square_practice/activity_details.dart';
import 'package:town_square_practice/activity_prrovider.dart';
import 'package:town_square_practice/button.dart';
import 'constant.dart';

class ActivityDay extends StatefulWidget {
  const ActivityDay({super.key});

  @override
  State<ActivityDay> createState() => _ActivityDayState();
}

class _ActivityDayState extends State<ActivityDay> {
  final List<ChartData> chartData = [
    ChartData('Goal', 24)
  ];
  @override
  Widget build(BuildContext context) {
    final activity = Provider.of<ActivityProvider>(context);
    final screenHeight = MediaQuery.of(context).size.width;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 53),
              child: SizedBox(
                width: screenWidth - 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tues, Nov 12',
                      style: style12,
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.bell,
                          size: 25,
                        ),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/girl.png'))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('This week in Estepona',
              style: style20,
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: screenWidth - 369),
            child: Container(
              height: 104,
              width: screenWidth - 48,
              decoration: BoxDecoration(
                color: Color(0xffBAE6FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(3, 3),
                    color: Color(0xff9B9B9B),
                    blurRadius: 8,
                    spreadRadius: 0
                  )
                ]
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You’re close to your goal!',
                          style: style16,
                        ),
                        SizedBox(height: 3,),
                        Text('Join more sport activities to collect more points',
                          style: style114,
                        ),
                        SizedBox(height: 7,),
                        Row(
                          children: [
                            Button1(title: 'Join now'),
                            SizedBox(width: 5,),
                            Button1(title: 'My points')
                          ],
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 105,
                      width: 105,
                      child: SfCircularChart(
                        annotations: <CircularChartAnnotation>[
                          CircularChartAnnotation(
                              widget: Text('27',
                                style: style20,
                              )
                          )
                        ],
                        series: <CircularSeries>[
                          RadialBarSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                            maximumValue: 100,
                            radius: '80%',
                            innerRadius: '80%',
                            cornerStyle: CornerStyle.bothCurve,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: screenWidth - 369),
            child: Container(
              height: 42,
              width: screenWidth - 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff9B9B9B),
                    blurRadius: 8,
                    spreadRadius: 0,
                    offset: Offset(3, 3),
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  controller: activity.searchController,
                  decoration: InputDecoration(
                    hintText: 'What do you feel like doing?',
                    hintStyle: style144,
                    suffixIcon: Icon(CupertinoIcons.search,
                      size: 30,
                    ),
                    border: InputBorder.none
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: screenWidth - 369),
            child: Row(
              children: [
                Container(
                  height: 28,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffEEE1F5),
                    borderRadius: BorderRadius.circular(4),

                  ),
                  child: Transform.rotate(
                    angle: 1.5708,
                    child: Icon(Icons.tune,
                      size: 20,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 27,
                  width: 47,
                  decoration: BoxDecoration(
                    color: Color(0xffBAA1C8),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text('All',
                      style: style144B,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: SizedBox(
                    height: 27,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ActivityChoice(
                            height: 27,
                            width: 71,
                            title: 'Sports'
                        ),
                        SizedBox(width: 5,),
                        ActivityChoice(
                            height: 27,
                            width: 62,
                            title: 'Food'
                        ),
                        SizedBox(width: 5,),
                        ActivityChoice(
                            height: 27,
                            width: 58,
                            title: 'Kids'
                        ),
                        SizedBox(width: 5,),
                        ActivityChoice(
                            height: 27,
                            width: 81,
                            title: 'Create'
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: screenWidth - 369),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffFFF2AC),
                  radius: 8,
                ),
                SizedBox(width: 12,),
                Text('Today',
                  style: style145B,
                ),
                Text(' / tuesday',
                  style: style12,
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: screenWidth - 360),
                child: DottedDashedLine(
                  height: screenHeight * 0.5,
                  width: 0,
                  axis: Axis.vertical,
                  dashColor: Color(0xffDADADA),
                  dashWidth: 1.5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth - 384, top: 10),
                child: SizedBox(
                  height: screenHeight * 0.5,
                  width: screenWidth - 76,
                  child: ListView.separated(
                      itemBuilder: (context, index){
                        final activity2 = activity.passingList[index];
                        return ActivityDetails(title: activity2['title']!);
                      },
                      separatorBuilder: (context, index) => SizedBox(height: 16,),
                      itemCount: activity.passingList.length
                  ),
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ChartData {
  final String x;
  final double y;
  ChartData(this.x, this.y);
}