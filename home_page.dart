import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xffFFF8D3);
    Color textColor = Color(0xff363435);
    return Scaffold(
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
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_circle_outline_outlined,
                        ),
                        iconSize: 34,
                        color: textColor),
                    Text(
                      '33',
                      style: TextStyle(fontSize: 28, color: textColor),
                    ),
                    IconButton(
                      onPressed: () {},
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
              Text(
                'الاستغفار',
                style: TextStyle(color: Color(0xff363435), fontSize: 20),
              ),
              SizedBox(
                height: 12,
              ),
              Text('17',
                  style: TextStyle(color: Color(0xff363435), fontSize: 20)),
              SizedBox(
                height: 12,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.touch_app_outlined),
                iconSize: 70,
              ),
              SizedBox(
                height: 12,
              ),
              Text('التكرار:12',
                  style: TextStyle(color: Color(0xff363435), fontSize: 20)),
              SizedBox(
                height: 12,
              ),
              Text('المجموع:56',
                  style: TextStyle(color: Color(0xff363435), fontSize: 20)),
              SizedBox(
                height: 12,
              ),
            ],
          )
        ],
      ),
    );
  }
  
}
