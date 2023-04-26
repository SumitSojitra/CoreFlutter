import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'dart:io';

import '../models/model.dart';
import '../utils/utils.dart';

class invoice_page extends StatefulWidget {
  const invoice_page({Key? key}) : super(key: key);

  @override
  State<invoice_page> createState() => _invoice_pageState();
}

class _invoice_pageState extends State<invoice_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invoice",
          style: TextStyle(
              fontFamily: "Glinster",
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              // final image = pw.MemoryImage(
              //     File("assets/images/logo.png").readAsBytesSync());

              // final fontData =
              //     File('assets/fonts/Wigenda.ttf').readAsBytesSync();
              // final ttf = pw.Font.ttf(fontData.buffer.asByteData());
              pw.Document pdf = pw.Document();
              pdf.addPage(
                pw.Page(
                    pageFormat: PdfPageFormat.a4,
                    build: (pw.Context context) {
                      return pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Container(
                            height: 100,
                            width: double.infinity,
                            color: PdfColors.deepPurple900,
                            child: pw.Row(
                              children: [
                                pw.SizedBox(width: 10),
                                pw.Container(
                                  height: 70,
                                  width: 70,
                                  // color: Colors.red,
                                  // child: pw.Image(image),
                                  alignment: pw.Alignment.center,
                                ),
                                pw.Spacer(),
                                pw.Text(
                                  "INVOICE",
                                  style: pw.TextStyle(
                                    fontSize: 40,
                                    color: PdfColors.white,
                                  ),
                                ),
                                pw.SizedBox(width: 10),
                              ],
                            ),
                          ),
                          pw.SizedBox(height: 8),
                          pw.Container(
                            height: 112,
                            width: double.infinity,
                            color: PdfColors.deepPurple900,
                            alignment: pw.Alignment.center,
                            child: pw.Row(
                              children: [
                                pw.Padding(
                                  padding: const pw.EdgeInsets.all(8.0),
                                  child: pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.Text(
                                        "${Globals.yourName}",
                                        style: pw.TextStyle(
                                          fontSize: 15,
                                          color: PdfColors.white,
                                          // font: ttf,
                                        ),
                                      ),
                                      pw.Text(
                                        "${Globals.yourNumber}",
                                        style: pw.TextStyle(
                                          fontSize: 15,
                                          color: PdfColors.white,
                                          // font: ttf,
                                        ),
                                      ),
                                      pw.Text(
                                        "${Globals.yourCity} - ${Globals.yourCode}",
                                        style: pw.TextStyle(
                                          fontSize: 15,
                                          color: PdfColors.white,
                                          // font: ttf,
                                        ),
                                      ),
                                      pw.Text(
                                        "${Globals.yourState}",
                                        style: pw.TextStyle(
                                          fontSize: 15,
                                          color: PdfColors.white,
                                          // font: ttf,
                                        ),
                                      ),
                                      pw.Text(
                                        "${Globals.yourAddress}",
                                        style: pw.TextStyle(
                                          fontSize: 15,
                                          color: PdfColors.white,
                                          // font: ttf,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Container(
                            height: 30,
                            width: double.infinity,
                            color: PdfColors.deepPurple900,
                            alignment: pw.Alignment.centerLeft,
                            child: pw.Text(
                              "Bill To : ",
                              style: pw.TextStyle(color: PdfColors.white),
                            ),
                          ),
                          pw.Text(
                            "${Globals.CustomerName}",
                            style: pw.TextStyle(
                              fontSize: 15,
                              color: PdfColors.black,
                              // font: ttf,
                            ),
                          ),
                          pw.Text(
                            "${Globals.CustomerNumber}",
                            style: pw.TextStyle(
                              fontSize: 15,
                              color: PdfColors.black,
                              // font: ttf,
                            ),
                          ),
                          pw.Text(
                            "${Globals.yourCity} - ${Globals.CustomerCode}",
                            style: pw.TextStyle(
                              fontSize: 15,
                              color: PdfColors.black,
                              // font: ttf,
                            ),
                          ),
                          pw.Text(
                            "${Globals.CustomerState}",
                            style: pw.TextStyle(
                              fontSize: 15,
                              color: PdfColors.black,
                              // font: ttf,
                            ),
                          ),
                          pw.Text(
                            "${Globals.CustomerAddress}",
                            style: pw.TextStyle(
                              fontSize: 15,
                              color: PdfColors.black,
                              // font: ttf,
                            ),
                          ),
                          pw.Divider(thickness: 2),
                          pw.SizedBox(height: 12),
                          pw.Row(
                            children: [
                              pw.Container(
                                height: 30,
                                width: 40,
                                color: PdfColors.deepPurple900,
                                alignment: pw.Alignment.center,
                                child: pw.Text(
                                  "No.",
                                  style: pw.TextStyle(color: PdfColors.white),
                                ),
                              ),
                              pw.SizedBox(width: 6),
                              pw.Container(
                                height: 30,
                                width: 120,
                                color: PdfColors.deepPurple900,
                                alignment: pw.Alignment.centerLeft,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.all(8.0),
                                  child: pw.Text(
                                    "Product",
                                    style: pw.TextStyle(color: PdfColors.white),
                                  ),
                                ),
                              ),
                              pw.SizedBox(width: 6),
                              pw.Container(
                                height: 30,
                                width: 50,
                                color: PdfColors.deepPurple900,
                                alignment: pw.Alignment.centerLeft,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.all(8.0),
                                  child: pw.Text(
                                    "Qty",
                                    style: pw.TextStyle(color: PdfColors.white),
                                  ),
                                ),
                              ),
                              pw.SizedBox(width: 6),
                              pw.Container(
                                height: 30,
                                width: 40,
                                color: PdfColors.deepPurple900,
                                alignment: pw.Alignment.centerLeft,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.all(8.0),
                                  child: pw.Text(
                                    "Tax",
                                    style: pw.TextStyle(color: PdfColors.white),
                                  ),
                                ),
                              ),
                              pw.SizedBox(width: 6),
                              pw.Container(
                                height: 30,
                                width: 70,
                                color: PdfColors.deepPurple900,
                                alignment: pw.Alignment.centerLeft,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.all(8.0),
                                  child: pw.Text(
                                    "Price",
                                    style: pw.TextStyle(color: PdfColors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          pw.Expanded(
                            child: pw.ListView.builder(
                              itemCount: Globals.dataList.length,
                              itemBuilder: (context, i) {
                                return pw.Row(
                                  children: [
                                    pw.Container(
                                      height: 30,
                                      width: 40,
                                      alignment: pw.Alignment.center,
                                      child: pw.Text(
                                        "${i + 1}",
                                        style: pw.TextStyle(
                                          color: PdfColors.deepPurple900,
                                          // font: ttf,
                                        ),
                                      ),
                                    ),
                                    pw.SizedBox(width: 6),
                                    pw.Container(
                                      height: 30,
                                      width: 120,
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.all(8.0),
                                        child: pw.Text(
                                          "${Globals.dataList[i].pName}",
                                          style: pw.TextStyle(
                                            color: PdfColors.deepPurple900,
                                            // font: ttf,
                                          ),
                                        ),
                                      ),
                                    ),
                                    pw.SizedBox(width: 6),
                                    pw.Container(
                                      height: 30,
                                      width: 50,
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.all(8.0),
                                        child: pw.Text(
                                          "${Globals.dataList[i].pQty}",
                                          style: pw.TextStyle(
                                            color: PdfColors.deepPurple900,
                                            // font: ttf,
                                          ),
                                        ),
                                      ),
                                    ),
                                    pw.SizedBox(width: 6),
                                    pw.Container(
                                      height: 30,
                                      width: 40,
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.all(8.0),
                                        child: pw.Text(
                                          "18%",
                                          style: pw.TextStyle(
                                            color: PdfColors.deepPurple900,
                                            // font: ttf,
                                          ),
                                        ),
                                      ),
                                    ),
                                    pw.SizedBox(width: 6),
                                    pw.Container(
                                      height: 30,
                                      width: 70,
                                      alignment: pw.Alignment.centerLeft,
                                      child: pw.Padding(
                                        padding: const pw.EdgeInsets.all(8.0),
                                        child: pw.Text(
                                          "${Globals.dataList[i].amount}",
                                          style: pw.TextStyle(
                                            color: PdfColors.deepPurple900,
                                            // font: ttf,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          pw.Container(
                            height: 30,
                            width: double.infinity,
                            color: PdfColors.deepPurple900,
                            alignment: pw.Alignment.centerLeft,
                            child: pw.Text(
                              " Total Amount :                                                        ₹28,800",
                              style: pw.TextStyle(color: PdfColors.white),
                            ),
                          ),
                          pw.Spacer()
                        ],
                      );
                    }),
              );

              await Printing.layoutPdf(onLayout: (format) {
                return pdf.save();
              });
            },
            icon: Icon(Icons.print),
            color: Colors.black,
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: dark,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 70,
                    width: 70,
                    // color: Colors.red,
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Spacer(),
                  Text(
                    "INVOICE",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 112,
              width: double.infinity,
              color: dark,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${Globals.yourName}",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: "Wigenda"),
                        ),
                        Text(
                          "${Globals.yourNumber}",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: "Wigenda"),
                        ),
                        Text(
                          "${Globals.yourCity} - ${Globals.yourCode}",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: "Wigenda"),
                        ),
                        Text(
                          "${Globals.yourState}",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: "Wigenda"),
                        ),
                        Text(
                          "${Globals.yourAddress}",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: "Wigenda"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 30,
              width: double.infinity,
              color: dark,
              alignment: Alignment.centerLeft,
              child: Text(
                "Bill To : ",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Text(
              "${Globals.CustomerName}",
              style: TextStyle(
                  fontSize: 15, color: Colors.black, fontFamily: "Wigenda"),
            ),
            Text(
              "${Globals.CustomerNumber}",
              style: TextStyle(
                  fontSize: 15, color: Colors.black, fontFamily: "Wigenda"),
            ),
            Text(
              "${Globals.yourCity} - ${Globals.CustomerCode}",
              style: TextStyle(
                  fontSize: 15, color: Colors.black, fontFamily: "Wigenda"),
            ),
            Text(
              "${Globals.CustomerState}",
              style: TextStyle(
                  fontSize: 15, color: Colors.black, fontFamily: "Wigenda"),
            ),
            Text(
              "${Globals.CustomerAddress}",
              style: TextStyle(
                  fontSize: 15, color: Colors.black, fontFamily: "Wigenda"),
            ),
            Divider(thickness: 2),
            SizedBox(height: 12),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 40,
                  color: dark,
                  alignment: Alignment.center,
                  child: Text(
                    "No.",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 6),
                Container(
                  height: 30,
                  width: 120,
                  color: dark,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Product",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 6),
                Container(
                  height: 30,
                  width: 50,
                  color: dark,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Qty",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 6),
                Container(
                  height: 30,
                  width: 40,
                  color: dark,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Tax",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 6),
                Container(
                  height: 30,
                  width: 70,
                  color: dark,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Price",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Globals.dataList.length,
                itemBuilder: (context, i) {
                  return Row(
                    children: [
                      Container(
                        height: 30,
                        width: 40,
                        alignment: Alignment.center,
                        child: Text(
                          "${i + 1}",
                          style: TextStyle(color: dark, fontFamily: "Wigenda"),
                        ),
                      ),
                      SizedBox(width: 6),
                      Container(
                        height: 30,
                        width: 120,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${Globals.dataList[i].pName}",
                            style:
                                TextStyle(color: dark, fontFamily: "Wigenda"),
                          ),
                        ),
                      ),
                      SizedBox(width: 6),
                      Container(
                        height: 30,
                        width: 50,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${Globals.dataList[i].pQty}",
                            style:
                                TextStyle(color: dark, fontFamily: "Wigenda"),
                          ),
                        ),
                      ),
                      SizedBox(width: 6),
                      Container(
                        height: 30,
                        width: 40,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "18%",
                            style:
                                TextStyle(color: dark, fontFamily: "Wigenda"),
                          ),
                        ),
                      ),
                      SizedBox(width: 6),
                      Container(
                        height: 30,
                        width: 70,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${Globals.dataList[i].amount}",
                            style:
                                TextStyle(color: dark, fontFamily: "Wigenda"),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 30,
              width: double.infinity,
              color: dark,
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Total Amount : ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "₹${Globals.totalAmount}",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
