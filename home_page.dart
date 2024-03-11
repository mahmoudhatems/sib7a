import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

int radioValue = 0;
int goal = 0;
int colorHix = 0xffEEC6FF;
  int counter = 0;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(colorHix);
    Color textColor =const Color(0xff363435);
    Color secondColor = Color(0xff5DD0D0);
    int secondColorHix = 0xff5DD0D0;
    Color thirdColor = Color(0xff6CA0DB);
    int thirdColorHix = 0xff6CA0DB;
  

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.refresh_outlined,
            color: Colors.white,
          ),
          clipBehavior: Clip.hardEdge,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          enableFeedback: true,
          autofocus: true,
          backgroundColor: mainColor,
        ),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.color_lens_outlined))
          ],
          backgroundColor: mainColor,
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      "الهدف",
                      style: TextStyle(fontSize: 28, color: textColor),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              goal = goal - 1;
                            });
                          },
                          icon: Icon(
                            Icons.remove_circle_outline_outlined,
                          ),
                          iconSize: 34,
                          color: textColor),
                      Container(
                        child: Text(
                          '$goal',
                          style: TextStyle(fontSize: 28, color: textColor),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            goal = goal + 1;
                          });
                        },
                        icon: Icon(
                          Icons.add_circle_outline_outlined,
                          color: textColor,
                        ),
                        iconSize: 34,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "1000+",
                          style: TextStyle(fontSize: 16, color: mainColor),
                        ),
                        decoration: BoxDecoration(
                            color: textColor,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "100+",
                          style: TextStyle(fontSize: 16, color: mainColor),
                        ),
                        decoration: BoxDecoration(
                            color: textColor,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "100",
                          style: TextStyle(fontSize: 16, color: mainColor),
                        ),
                        decoration: BoxDecoration(
                            color: textColor,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "33",
                          style: TextStyle(fontSize: 16, color: mainColor),
                        ),
                        decoration: BoxDecoration(
                            color: textColor,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "0",
                          style: TextStyle(fontSize: 16, color: mainColor),
                        ),
                        decoration: BoxDecoration(
                            color: textColor,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(color: mainColor),
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'الاستغفار',
                  style: TextStyle(color: Color(0xff363435), fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('$counter',
                    style: TextStyle(color: Color(0xff363435), fontSize: 22)),
                SizedBox(
                  height: 10,
                ),
                CircularPercentIndicator(
                    progressColor: mainColor,
                    radius: 80.0,
                    animation: true,
                    animationDuration: 1100,
                    lineWidth: 10.0,
                    percent: 0.8,
                    center: GestureDetector(
                      onTap: () {
                        setState(() {
                          counter++;
                        });
                      },
                      child: Icon(
                        Icons.touch_app_outlined,
                        size: 60,
                        color: mainColor,
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Text('التكرار:12',
                    style: TextStyle(color: Color(0xff363435), fontSize: 20)),
                SizedBox(
                  height: 10,
                ),
                Text('المجموع:56',
                    style: TextStyle(color: Color(0xff363435), fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                      //activeColor: mainColor,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Color(0xffEEC6FF)),
                      value: 0xffEEC6FF,
                      groupValue: colorHix,
                      onChanged: (value) {
                        setState(() {
                          colorHix = value!;
                        });
                      }),
                  Radio(
                      // activeColor: secondColor,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Color(0xff5DD0D0)),
                      value: 0xff5DD0D0,
                      groupValue: colorHix,
                      onChanged: (value) {
                        setState(() {
                          colorHix = value!;
                        });
                      }),
                  Radio(
                      // activeColor: thirdColor,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Color(0xff6CA0DB)),
                      value: 0xff6CA0DB,
                      groupValue: colorHix,
                      onChanged: (value) {
                        setState(() {
                          colorHix = value!;
                        });
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
