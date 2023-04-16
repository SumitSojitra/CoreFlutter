import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../utils/globals.dart';

class pdf extends StatefulWidget {
  const pdf({Key? key}) : super(key: key);

  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Resume"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () async {
                var image = pw.MemoryImage(
                  Globals.image!.readAsBytesSync(),
                );
                pw.Document pdf = pw.Document();
                pdf.addPage(pw.Page(
                    pageFormat: PdfPageFormat.a4,
                    build: (pw.Context context) {
                      return pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Row(
                            children: [
                              pw.Container(
                                height: 80,
                                width: 60,
                                decoration: pw.BoxDecoration(
                                  border: pw.Border.all(),
                                ),
                                child: pw.Image(image),
                              ),
                              pw.SizedBox(width: 20),
                              pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text(
                                    "Contact Info",
                                    style: pw.TextStyle(
                                        fontSize: 22,
                                        fontWeight: pw.FontWeight.bold,
                                        color: PdfColors.purple),
                                  ),
                                  pw.SizedBox(height: 10),
                                  pw.Row(
                                    children: [
                                      pw.Text(
                                        "Name : ",
                                        style: pw.TextStyle(
                                            fontSize: 18,
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                      pw.Text(
                                        "${Globals.name}",
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      pw.SizedBox(width: 14),
                                      pw.Text(
                                        "Phone Number : ",
                                        style: pw.TextStyle(
                                            fontSize: 18,
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                      pw.Text(
                                        "${Globals.phone}",
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  pw.SizedBox(height: 20),
                                  pw.Row(
                                    children: [
                                      pw.Text(
                                        "Email  : ",
                                        style: pw.TextStyle(
                                            fontSize: 18,
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                      pw.Text(
                                        "${Globals.email}",
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      pw.SizedBox(width: 14),
                                      pw.Text(
                                        "Address   : ",
                                        style: pw.TextStyle(
                                            fontSize: 18,
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                      pw.Text(
                                        "${Globals.address1}, ${Globals.address2}",
                                        style: pw.TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      pw.Text(
                                        ", ${Globals.address3}",
                                        style: pw.TextStyle(fontSize: 16),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          pw.SizedBox(height: 8),
                          pw.Divider(),

                          //Carrier Objective
                          pw.Text(
                            "Carrier Objective",
                            style: pw.TextStyle(
                                fontSize: 22,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.purple),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Row(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceBetween,
                              children: [
                                pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.Text(
                                        "Carrier Objective  ",
                                        style: pw.TextStyle(
                                            fontSize: 18,
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                      pw.Text(
                                        "${Globals.Career_Objective}",
                                        style: pw.TextStyle(fontSize: 16),
                                      ),
                                    ]),
                                /////
                                pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.Text(
                                        "Current Designation  ",
                                        style: pw.TextStyle(
                                            fontSize: 18,
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                      pw.Text(
                                        "${Globals.Current_Designation}",
                                        style: pw.TextStyle(fontSize: 16),
                                      ),
                                    ])
                              ]),
                          pw.SizedBox(height: 8),
                          pw.Divider(),

                          ///Education
                          pw.Text(
                            "Education",
                            style: pw.TextStyle(
                                fontSize: 22,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.purple),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Row(
                            children: [
                              pw.Text(
                                "Course/Degree : ",
                                style: pw.TextStyle(
                                    fontSize: 18,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                              pw.Text(
                                "${Globals.Course}",
                                style: pw.TextStyle(fontSize: 16),
                              ),
                              pw.Spacer(),
                              pw.Text(
                                "College/Institute : ",
                                style: pw.TextStyle(
                                    fontSize: 18,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                              pw.Text(
                                "${Globals.College}",
                                style: pw.TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          pw.SizedBox(height: 16),
                          pw.Row(
                            children: [
                              pw.Text(
                                "Percentages     : ",
                                style: pw.TextStyle(
                                    fontSize: 18,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                              pw.Text(
                                "${Globals.percentage}",
                                style: pw.TextStyle(fontSize: 16),
                              ),
                              pw.Spacer(),
                              pw.Text(
                                "Year of Pass        : ",
                                style: pw.TextStyle(
                                    fontSize: 18,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                              pw.Text(
                                "${Globals.PassYear}",
                                style: pw.TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          pw.SizedBox(height: 8),
                          pw.Divider(), //Experience
                          pw.Text(
                            "Education",
                            style: pw.TextStyle(
                                fontSize: 22,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.purple),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Row(
                            children: [
                              pw.Text(
                                "Company Name : ",
                                style: pw.TextStyle(
                                    fontSize: 18,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                              pw.Text(
                                "${Globals.CompanyName}",
                                style: pw.TextStyle(fontSize: 16),
                              ),
                              pw.Spacer(),
                              pw.Text(
                                "Designation : ",
                                style: pw.TextStyle(
                                    fontSize: 18,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                              pw.Text(
                                "${Globals.School}",
                                style: pw.TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          pw.SizedBox(height: 16),
                          pw.Row(
                            children: [
                              pw.Text(
                                "Joining Date : ",
                                style: pw.TextStyle(
                                    fontSize: 18,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                              pw.Text(
                                "${Globals.JoinDay}/${Globals.JoinMonth}/${Globals.JoinYear}",
                                style: pw.TextStyle(fontSize: 16),
                              ),
                              pw.Spacer(),
                              pw.Text(
                                "Exit Date : ",
                                style: pw.TextStyle(
                                    fontSize: 18,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                              pw.Text(
                                "${Globals.ExitDay}/${Globals.ExitMonth}/${Globals.ExitYear}",
                                style: pw.TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          pw.SizedBox(height: 8),
                          pw.Divider(),

                          //Tecnical SKILLS & Achievements
                          pw.Row(
                            mainAxisAlignment:
                                pw.MainAxisAlignment.spaceBetween,
                            children: [
                              //Technicxal
                              pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text(
                                    "Technical Skills",
                                    style: pw.TextStyle(
                                        fontSize: 22,
                                        fontWeight: pw.FontWeight.bold,
                                        color: PdfColors.purple),
                                  ),
                                  pw.SizedBox(height: 10),
                                  pw.Text(
                                    "${Globals.technical_skills}",
                                    style: pw.TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              //Achivements

                              pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text(
                                    "Achivements",
                                    style: pw.TextStyle(
                                        fontSize: 22,
                                        fontWeight: pw.FontWeight.bold,
                                        color: PdfColors.purple),
                                  ),
                                  pw.SizedBox(height: 10),
                                  pw.Text(
                                    "${Globals.acheivements}",
                                    style: pw.TextStyle(fontSize: 16),
                                  ),
                                ],
                              )
                            ],
                          ),
                          pw.SizedBox(height: 8),
                          pw.Divider(),
                          //Reference
                          pw.Text(
                            "Reference",
                            style: pw.TextStyle(
                                fontSize: 22,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.purple),
                          ),
                          pw.SizedBox(height: 10),
                          pw.Row(
                            children: [
                              pw.Text(
                                "Reference Name          : ",
                                style: pw.TextStyle(
                                    fontSize: 18,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                              pw.Text(
                                "${Globals.ReferenceName}",
                                style: pw.TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          pw.SizedBox(height: 10),
                          pw.Row(
                            children: [
                              pw.Text(
                                "Designation                   : ",
                                style: pw.TextStyle(
                                    fontSize: 18,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                              pw.Text(
                                "${Globals.Designation}",
                                style: pw.TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          pw.SizedBox(height: 10),
                          pw.Row(
                            children: [
                              pw.Text(
                                "Organization/Institute : ",
                                style: pw.TextStyle(
                                    fontSize: 18,
                                    fontWeight: pw.FontWeight.bold),
                              ),
                              pw.Text(
                                "${Globals.Institute}",
                                style: pw.TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          pw.SizedBox(height: 8),
                          pw.Divider(),
                        ],
                      );
                    }));
                await Printing.layoutPdf(onLayout: (format) {
                  return pdf.save();
                });
              },
              icon: Icon(Icons.print))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 48),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Name : ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${Globals.name}",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 14),
                          Text(
                            "Phone Number : ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${Globals.phone}",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Email  : ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${Globals.email}",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 14),
                          Text(
                            "Address             : ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${Globals.address1}, ${Globals.address2}",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            ", ${Globals.address3}",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Carrier Objective  ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "${Globals.Career_Objective}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  //Carrier
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current Designation  ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "${Globals.Career_Objective}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
              Divider(),

              ///Education
              Text(
                "Education",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Course/Degree : ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Globals.Course}",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "College/Institute : ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Globals.College}",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    "Percentages : ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Globals.percentage}",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "Year of Pass : ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Globals.PassYear}",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              Divider(),
              //Experience
              Text(
                "Education",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Company Name : ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Globals.CompanyName}",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "Designation : ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Globals.School}",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    "Joining Date : ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Globals.JoinDay}/${Globals.JoinMonth}/${Globals.JoinYear}",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "Exit Date : ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Globals.ExitDay}/${Globals.ExitMonth}/${Globals.ExitYear}",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              Divider(),
              //Tecnical SKILLS & Achievements
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Technicxal
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Technical Skills",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${Globals.technical_skills}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  //Achivements

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Achivements",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${Globals.acheivements}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
              Divider(),
              //Reference
              Text(
                "Reference",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Reference Name          : ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Globals.ReferenceName}",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Designation                   : ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Globals.Designation}",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Organization/Institute : ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Globals.Institute}",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
