import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int radioValue = 0;
int goal = 0;
int colorHix = 0xffEEC6FF;
int counter = 0;
int time = 0;

class _HomePageState extends State<HomePage> {
  setcount(int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("counter", value);
    getcount();
  }

  setTime(int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("time", value);
    getcount();
  }

  setGoal(int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("goal", value);
    getcount();
  }

  getcount() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter = prefs.getInt("counter") ?? 0;
      time = prefs.getInt("time") ?? 0;
      goal = prefs.getInt('goal') ?? 0;
    });
  }

  rsetToZiro({bool? resetGoal}) {
    setcount(0);
    setGoal(0);
    if (resetGoal == true) {
      setTime(0);
    }
  }

  @override
  void initState() {
    getcount();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(colorHix);

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            rsetToZiro(resetGoal: true);
          },
          clipBehavior: Clip.hardEdge,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          enableFeedback: true,
          autofocus: true,
          backgroundColor: mainColor,
          child: const Icon(
            Icons.refresh_outlined,
            color: Colors.white,
          ),
        ),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.color_lens_outlined))
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
                      style: TextStyle(fontSize: 28, color: Colors.black),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          rsetToZiro();
                          setGoal(goal - 1);
                        },
                        icon: Icon(
                          Icons.remove_circle_outline_outlined,
                        ),
                        iconSize: 34,
                        color: Colors.black,
                      ),
                      Container(
                        child: Text(
                          '$goal',
                          style: TextStyle(fontSize: 28, color: Colors.black),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          rsetToZiro();
                          setGoal(goal + 1);
                        },
                        icon: Icon(
                          Icons.add_circle_outline_outlined,
                          color: Colors.black,
                        ),
                        iconSize: 34,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setGoal(1000);
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "1000",
                            style: TextStyle(fontSize: 16, color: mainColor),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          setGoal(500);
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "500",
                            style: TextStyle(fontSize: 16, color: mainColor),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          setGoal(100);
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "100",
                            style: TextStyle(fontSize: 16, color: mainColor),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          setGoal(33);
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "33",
                            style: TextStyle(fontSize: 16, color: mainColor),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          setGoal(0);
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "0",
                            style: TextStyle(fontSize: 16, color: mainColor),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
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
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('$counter', style: TextStyle(color: Colors.black, fontSize: 22)),
                SizedBox(
                  height: 10,
                ),
                CircularPercentIndicator(
                  progressColor: mainColor,
                  startAngle: 0.0,
                  radius: 80.0,
                  animation: true,
                  animationDuration: 1100,
                  lineWidth: 10.0,
                  percent: counter / goal,
                  center: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (counter >= goal) {
                          setTime(time + 1);
                          setcount(1);
                        } else {
                          setcount(counter + 1);
                        }
                      });
                    },
                    child: Icon(
                      Icons.touch_app_outlined,
                      size: 60,
                      color: mainColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('التكرار:$time',
                    style: const TextStyle(color: Color(0xff363435), fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                Text('المجموع:${time * goal + counter}',
                    style: const TextStyle(color: Color(0xff363435), fontSize: 20)),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => const Color(0xffEEC6FF)),
                    value: 0xffEEC6FF,
                    groupValue: colorHix,
                    onChanged: (value) {
                      setState(() {
                        colorHix = value!;
                      });
                    },
                  ),
                  Radio(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => const Color(0xff5DD0D0)),
                    value: 0xff5DD0D0,
                    groupValue: colorHix,
                    onChanged: (value) {
                      setState(() {
                        colorHix = value!;
                      });
                    },
                  ),
                  Radio(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => const Color(0xff6CA0DB)),
                    value: 0xff6CA0DB,
                    groupValue: colorHix,
                    onChanged: (value) {
                      setState(() {
                        colorHix = value!;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
