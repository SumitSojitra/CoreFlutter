import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  double slideval = 10000;

  List<Map> myValues = [
    {
      'title': "Loan Amount",
      'min': 10000.0,
      'max': 100000.0,
      'value': 10000.0,
    },
    {
      'title': "Interest Rate",
      'min': 6.0,
      'max': 20.0,
      'value': 6.0,
    },
    {
      'title': "Loan Tenure",
      'min': 6.0,
      'max': 120.0,
      'value': 6.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("EMI Calculator"),
        centerTitle: true,
        backgroundColor: Color(0xff20295c),
        elevation: 0,
        leading: InkWell(
            onTap: () {
              setState(() {});
            },
            child: Icon(Icons.grid_view)),
      ),
      body: Center(
          child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: h,
            width: w,
            color: Color(0xff20295c),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Text(
                    "Your Loan EMI is",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "10",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: h * 0.80,
            width: w,
            decoration: BoxDecoration(
                color: Color(0xffEFEFEF),
                borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                children: myValues
                    .map((e) => Expanded(
                          child: mysliderbox(
                            title: e['title'],
                            min: e['min'],
                            max: e['max'],
                            index: myValues.indexOf(e),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Container(
              height: h * 0.07,
              width: w * 0.4,
              decoration: BoxDecoration(
                  color: Color(0xffE7EAff),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color(0xff20295c))),
              alignment: Alignment.center,
              child: Text(
                "Calculate",
                style: TextStyle(
                  color: Color(0xff2c397e),
                  fontSize: 24,
                ),
              ),
            ),
          )
        ],
      )),
      backgroundColor: Color(0xff20295c),
    );
  }

  Widget mysliderbox({
    required String title,
    required double min,
    required double max,
    required int index,
  }) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(color: Color(0xff484848), fontSize: 30),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 50, color: Color(0xffE5E6E8)),
            ),
            Text(
              "${myValues[index]['value'].toInt().toString()}",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
        Slider(
          value: myValues[index]['value'].toDouble(),
          onChanged: (val) {
            setState(() {
              myValues[index]['value'] = val;
            });
          },
          min: min,
          max: max,
          divisions: 20,
        ),
      ],
    );
  }
}
