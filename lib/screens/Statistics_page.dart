import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class StatisticsPage extends StatelessWidget {

  bool isAvatar1Active = false;
  bool isAvatar2Active = false;
  bool isAvatar3Active = false;
  bool isAvatar4Active = false;

  @override
  Widget build(BuildContext context) {
    final String A = 'A';
    final String B = 'B';
    final String C = 'C';
    final String D = 'D';

    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFFFF8E01),
          textTheme: Theme
              .of(context)
              .textTheme
              .copyWith(caption: const TextStyle(color: Colors.yellow)),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white24, size: 29),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white24, size: 29),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined,
                  color: Colors.white24, size: 29),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded,
                  color: Colors.white24, size: 29),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded,
                  color: Colors.white24, size: 29),
              label: "",
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: -15,
        toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 22, color: Colors.black),
          onPressed: () => _onBackPressed(context), // Pass the context here
        ),
        title: const Text('Statistics',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15,),
                const Text("Portfolio Value",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                SizedBox(height: 4,),
                const Text.rich(

                  TextSpan(
                    children: [
                      TextSpan(
                        text: "\$ 450,102.98",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      TextSpan(
                        text: "2.64% ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFFCAE17),
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("images/Ellipse 11.png"),
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Gain", style: TextStyle(fontSize: 10),),
                                  Text("\$1,479.26", style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Container(
                        height: 70,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Color(0xFFFF8E01),
                            borderRadius: BorderRadius.circular(4)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 17),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/Ellipse 12.png"),
                              Padding(
                                padding: const EdgeInsets.only(left: 13.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Loss", style: TextStyle(fontSize: 10),),
                                    Text("\$1,479.26", style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 7,),
                Center(
                  child: SfCartesianChart(
                    primaryXAxis: NumericAxis(), // Use NumericAxis for x-axis
                    primaryYAxis: NumericAxis(), // Use NumericAxis for y-axis
                    series: <AreaSeries>[
                      AreaSeries<Point, num>(
                        dataSource: <Point>[
                          Point(1, 4),
                          Point(2, 4.5),
                          Point(3, 5.5),
                          Point(4, 6),
                        ],
                        xValueMapper: (Point point, _) => point.x,
                        yValueMapper: (Point point, _) => point.y,
                        // Return the numeric value directly
                        color: Colors.blue, // Customize the area color
                      ),
                    ],
                  ),
                ),
                const Text("Saved Stocks",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                const SizedBox(height: 16,),
                Container(
                  width: 381,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFFCAE17),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey,
                          // Set the background color to white
                          backgroundImage: AssetImage('images/g1 1.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 11.0),
                                child: Text(
                                  "Alibaba",
                                  style: TextStyle(fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "+%21.0",
                                style: TextStyle(fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 138.0),
                          child: Text(
                            "-\$321.00",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
                const SizedBox(height: 11,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 38.0),
                  child: Container(
                    width: 381,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFFCAE17),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey,
                            // Set the background color to white
                            backgroundImage: AssetImage('images/g1 1.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(top: 11.0),
                                  child: Text(
                                    "Alibaba",
                                    style: TextStyle(fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  "+%21.0",
                                  style: TextStyle(fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 138.0),
                            child: Text(
                              "-\$321.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                ),


              ]
          ),
        ),
      ),

    );
  }

  Future<bool> _onBackPressed(BuildContext context) {
    Navigator.pop(context); // This will pop the current route and navigate back
    return Future.value(false);
  }
}

class Point {
  final num x;
  final double y;

  Point(this.x, this.y);
}







