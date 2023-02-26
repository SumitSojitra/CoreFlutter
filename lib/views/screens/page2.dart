import 'package:ch10_1_1/utils/utils.dart';
import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  final Map data;
  const page2({Key? key, required this.data}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Page",
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 10,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: h * 0.18,
                  width: h * 0.18,
                  // color: Colors.red,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.data['ceo']),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Text(
                        "${widget.data['ceoN']}",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Text(
                        "CEO",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                "Company Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: w * 0.2,
                  width: w * 0.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.data['logo']),
                      fit: BoxFit.cover,
                    ),
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text(
                    "${widget.data['Company']}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                "Company Description",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Text("${widget.data['discription']}"),
            )
          ],
        ),
      ),
    );
  }
}
