import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<charts.Series<SalesData, String>> seriesList = [];

  @override
  void initState() {
    super.initState();
    seriesList = generateData();
  }
  bool isAvatar1Active = false;
  bool isAvatar2Active = false;
  bool isAvatar3Active = false;
  bool isAvatar4Active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Color(0xFFFF8E01),
          textTheme: Theme.of(context)
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
          onPressed: _onBackPressed,
        ),
        title: const Text('Dashboard',style: TextStyle(fontSize: 22,color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: BarChartWidget(
                seriesList,
                animate: true,
              ),
            ),
            const Center(
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod \n               tempor incididunt ut labore et dolore magna aliqua. ",
              style: TextStyle(fontSize: 9),),
            ),
            const SizedBox(height: 49,),
            Stack(
              children: [
                 Image.asset("images/Rectangle 4.png", fit: BoxFit.fill),
                Positioned(
                  top: 15,
                    left: 25,
                    child: Text("Wallet",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
                Positioned(
                  top:65,
                  left: 26,
                  child: Stack(
                    children: [
                       Row(
                         children: [
                           Container(
                             width:15,
                               height: 15,
                               child: Image.asset("images/Ellipse 4.png",fit: BoxFit.fill,)),
                           Padding(
                             padding: const EdgeInsets.only(left: 13.0),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Lorum ipsum",style: TextStyle(fontSize: 9,color: Colors.white),),
                                 Text("\$ 9.613,5",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                               ],
                             ),
                           ),
                         ],
                       ),
                      Positioned(
                        top: 6,
                        left: 4,
                          child: const Text("\$",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white),)),
                    ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 27.0,right: 65,top: 100),
                  child: Divider(
                    thickness: 1.5,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top:120,
                  left: 26,
                  child: Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                                width:15,
                                height: 15,
                                child: Image.asset("images/Ellipse 4.png",fit: BoxFit.fill,)),
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Lorum ipsum",style: TextStyle(fontSize: 9,color: Colors.white),),
                                  Text("\$ 9.613,5",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                            top: 6,
                            left: 4,
                            child: const Text("\$",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white),)),
                      ]),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
  Future<bool> _onBackPressed() {
    Navigator.pop(context); // This will pop the current route and navigate back
    return Future.value(false);
  }
}

class BarChartWidget extends StatelessWidget {
  final List<charts.Series<SalesData, String>> seriesList;
  final bool animate;

  BarChartWidget(this.seriesList, {required this.animate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23.0,right: 10),
      child: Container(
        height: 270,
        width: 310,
        child: charts.BarChart(
          seriesList,
          animate: animate,
        ),
      ),
    );
  }
}

class SalesData {
  final String product;
  final int sales;
  final charts.Color color;

  SalesData(this.product, this.sales, this.color);
}

List<charts.Series<SalesData, String>> generateData() {
  final data = [
    SalesData('A', 120, charts.ColorUtil.fromDartColor(Color(0xFF0CADC4),)),
    SalesData('B', 180, charts.ColorUtil.fromDartColor(Color(0xFF0768AD),)),
    SalesData('C', 150, charts.ColorUtil.fromDartColor(Color(0xFF0CADC4),)),
    SalesData('D', 180, charts.ColorUtil.fromDartColor(Color(0xFF0768AD),)),
  ];

  return [
    charts.Series<SalesData, String>(
      id: 'Sales',
      domainFn: (SalesData sales, _) => sales.product,
      measureFn: (SalesData sales, _) => sales.sales,
      colorFn: (SalesData sales, _) => sales.color,
      data: data,
    ),
  ];

}






