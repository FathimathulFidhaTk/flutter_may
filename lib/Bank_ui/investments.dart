import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main(){
  runApp(MaterialApp(home: investments(),
    debugShowCheckedModeBanner: false,));
}
class investments extends StatefulWidget{
  @override
  State<investments> createState() => _investmentsState();
}

class _investmentsState extends State<investments> {
  List<_SalesData> data = [
    _SalesData('2016', 10000),
    _SalesData('2017', 20000),
    _SalesData('2018', 15000),
    _SalesData('2019', 30000),
    _SalesData('2020', 20000),
    _SalesData('2021',25000 )
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
            children:[
              Column(
                children: [
                  Container(
                    height: 160,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 10.0,),
                        ListTile(
                          leading: Icon(Icons.menu,color: Colors.black,),
                          title: Center(child: Text("Investments",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                          trailing: CircleAvatar(backgroundImage: AssetImage("assets/images/fid.jpeg"),radius: 18,),
                        ),SizedBox(height: 30.0,),
                        Padding(
                          padding: const EdgeInsets.only(left: 26,right: 26),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[50]
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(Icons.search,color: Colors.grey,),
                                  ),
                                  label: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Search for something",style: TextStyle(color: Colors.grey),),
                                  )

                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 5,height: 20.0,),
                  Container(
                    height: 80,
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[100],
                        child: Image(height: 26,
                          image: AssetImage("assets/images/bank17.png"),),),
                      ),
                        Column(
                          children: [
                            SizedBox(height: 18,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text('Total Invested Amount',style: TextStyle(color: Colors.grey,fontSize: 16),),
                            ),
                            SizedBox(height: 5.0,),
                            Padding(
                              padding: const EdgeInsets.only(right: 85),
                              child: Text("\$150,000",style: TextStyle(color: Colors.blue[800]),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,height: 15.0,),
                  Container(
                    height: 80,
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey[100],
                            child: Image(height: 26,
                              image: AssetImage("assets/images/bank15.png"),),),
                        ),
                        Column(
                          children: [
                            SizedBox(height: 18,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text('Number of Investments',style: TextStyle(color: Colors.grey,fontSize: 16),),
                            ),
                            SizedBox(height: 5.0,),
                            Padding(
                              padding: const EdgeInsets.only(right: 118),
                              child: Text("1,250",style: TextStyle(color: Colors.blue[900]),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,height: 15.0,),
                  Container(
                    height: 80,
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey[100],
                            child: Image(height: 26,
                              image: AssetImage("assets/images/bank16.png"),),),
                        ),
                        Column(
                          children: [
                            SizedBox(height: 18,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text('Rate of Return',style: TextStyle(color: Colors.grey,fontSize: 16),),
                            ),
                            SizedBox(height: 5.0,),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text("+5.80%",style: TextStyle(color: Colors.blue[900]),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.0,),
                  Padding(
                    padding: const EdgeInsets.only(right: 120,bottom: 20),
                    child: Text('Yearly Total Investment',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      height: 330,
                      width: 314.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child:Padding(
                        padding: const EdgeInsets.only(top: 30,left: 15),
                        child: Column(children: [
                          SfCartesianChart(primaryXAxis: CategoryAxis(),
                          legend: Legend(isVisible: true),
                          tooltipBehavior: TooltipBehavior(enable: true),
                          series: <ChartSeries<_SalesData, String>>[
                          LineSeries<_SalesData, String>(
                          dataSource: data,
                          xValueMapper: (_SalesData sales, _) => sales.year,
                          yValueMapper: (_SalesData sales, _) => sales.sales,
                          )
                          ]),
                          ]),
                      )
                    ),
                  ),
                  SizedBox(height: 18.0,),
                  Padding(
                    padding: const EdgeInsets.only(right: 160,bottom: 20),
                    child: Text('Monthly Revenue',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),

                ],
              ),
            ]
        ),

      ),
    );
  }
}
class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
