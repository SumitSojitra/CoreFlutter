import 'dart:math';
import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Color> color1color = [
    Colors.red, //0
    Colors.yellow, //1
    Colors.pink, //2
    Colors.purple, //3
    Colors.indigo, //4
    Colors.teal, //5
    Colors.black, //6
    Colors.orange //7
  ];

  int a = 0;
  int b = 0;
  int c = 0;

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    a = random.nextInt(color1color.length);
    b = random.nextInt(color1color.length);
    c = random.nextInt(color1color.length);
    print("===================");
    print(a);
    print(b);
    print(c);
    print("===================");
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Exam"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.restart_alt_outlined),
          onPressed: () {
            setState(() {});
          },
        ),
        actions: [
          IconButton(
            onPressed: () async {
              final pdf = pw.Document();
              PdfColor? color1;
              PdfColor? color2;
              PdfColor? color3;

              if (a == 0) {
                color1 = PdfColors.red;
                print("red");
              } else if (a == 1) {
                color1 = PdfColors.yellow;
                print("yellow");
              } else if (a == 2) {
                color1 = PdfColors.pink;
                print("pink");
              } else if (a == 3) {
                color1 = PdfColors.purple;
                print("purple");
              } else if (a == 4) {
                color1 = PdfColors.indigo;
                print("indigo");
              } else if (a == 5) {
                color1 = PdfColors.teal;
                print("teal");
              } else if (a == 6) {
                color1 = PdfColors.black;
                print("black");
              } else if (a == 7) {
                color1 = PdfColors.orange;
                print("orange");
              }

              if (b == 0) {
                color2 = PdfColors.red;
                print("red");
              } else if (b == 1) {
                color2 = PdfColors.yellow;
                print("yellow");
              } else if (b == 2) {
                color2 = PdfColors.pink;
                print("pink");
              } else if (b == 3) {
                color2 = PdfColors.purple;
                print("purple");
              } else if (b == 4) {
                color2 = PdfColors.indigo;
                print("indigo");
              } else if (b == 5) {
                color2 = PdfColors.teal;
                print("teal");
              } else if (b == 6) {
                color2 = PdfColors.black;
                print("black");
              } else if (b == 7) {
                color2 = PdfColors.orange;
                print("orange");
              }

              if (c == 0) {
                color3 = PdfColors.red;
                print("red");
              } else if (c == 1) {
                color3 = PdfColors.yellow;
                print("yellow");
              } else if (c == 2) {
                color3 = PdfColors.pink;
                print("pink");
              } else if (c == 3) {
                color3 = PdfColors.purple;
                print("purple");
              } else if (c == 4) {
                color3 = PdfColors.indigo;
                print("indigo");
              } else if (c == 5) {
                color3 = PdfColors.teal;
                print("teal");
              } else if (c == 6) {
                color3 = PdfColors.black;
                print("black");
              } else if (c == 7) {
                color3 = PdfColors.orange;
                print("orange");
              }

              pdf.addPage(
                pw.Page(
                    pageFormat: PdfPageFormat.a4,
                    build: (pw.Context context) {
                      return pw.Container(
                        margin: pw.EdgeInsets.all(16),
                        child: pw.Column(
                          children: [
                            pw.Container(
                              height: 200,
                              color: color1,
                            ),
                            pw.SizedBox(height: 10),
                            pw.Container(
                              height: 200,
                              color: color2,
                            ),
                            pw.SizedBox(height: 10),
                            pw.Container(
                              height: 200,
                              color: color3,
                            )
                          ],
                        ),
                      );
                    }),
              );
              await Printing.layoutPdf(
                onLayout: (format) {
                  return pdf.save();
                },
              );
            },
            icon: Icon(Icons.save),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 200,
              color: color1color[a],
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              color: color1color[b],
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              color: color1color[c],
            )
          ],
        ),
      ),
    );
  }
}
