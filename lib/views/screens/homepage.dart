import 'package:flutter/material.dart';
import 'package:invoice_generator/views/models/model.dart';

import '../utils/utils.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String GlinsterFont = "Glinster";

  TextEditingController productNameController = TextEditingController();
  TextEditingController productQtyController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();

  String? pName;
  String? pQty;
  String? pPrice;
  int? amount;
  int totalAmount = 0;
  double? tax;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invoice Generator",
          style: TextStyle(
              color: Colors.black,
              fontFamily: GlinsterFont,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: Globals.dataList.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Container(
                height: 92,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 2, color: dark),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      //numner
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "No.",
                            style: TextStyle(
                              fontFamily: "WigendaBold",
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 18),
                          Text(
                            "${i + 1}",
                            style: TextStyle(
                              fontFamily: "Wigenda",
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 14),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product Name",
                            style: TextStyle(
                              fontFamily: "WigendaBold",
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 18),
                          Text(
                            "${Globals.dataList[i].pName}",
                            style: TextStyle(
                              fontFamily: "Wigenda",
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 18),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Qty",
                            style: TextStyle(
                              fontFamily: "WigendaBold",
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 18),
                          Text(
                            "${Globals.dataList[i].pQty}",
                            style: TextStyle(
                              fontFamily: "Wigenda",
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 18),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(
                              fontFamily: "WigendaBold",
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 18),
                          Text(
                            "${Globals.dataList[i].pPrice}",
                            style: TextStyle(
                              fontFamily: "Wigenda",
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('detail_page');
                  });
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: dark,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Invoice",
                    style: TextStyle(
                        fontFamily: "lion", fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    productNameController.clear();
                    productQtyController.clear();
                    productPriceController.clear();

                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              content: Container(
                                height: 300,
                                width: 300,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    //product name
                                    TextFormField(
                                      controller: productNameController,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: "Product Name",
                                        hintStyle:
                                            TextStyle(fontFamily: "Wigenda"),
                                        label: Text(
                                          "Product Name",
                                          style: TextStyle(
                                              fontFamily: "Wigenda",
                                              color: dark,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        border: OutlineInputBorder(),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 2)),
                                      ),
                                      cursorColor: dark,
                                    ),

                                    SizedBox(height: 20),
                                    //product qty
                                    TextFormField(
                                      controller: productQtyController,
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: "Product Qty",
                                        hintStyle:
                                            TextStyle(fontFamily: "Wigenda"),
                                        label: Text(
                                          "Product Qty",
                                          style: TextStyle(
                                              fontFamily: "Wigenda",
                                              color: dark,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        border: OutlineInputBorder(),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 2)),
                                      ),
                                      cursorColor: dark,
                                    ),
                                    SizedBox(height: 20),
                                    //product price

                                    TextFormField(
                                      controller: productPriceController,
                                      textInputAction: TextInputAction.done,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: "Product Price",
                                        hintStyle:
                                            TextStyle(fontFamily: "Wigenda"),
                                        label: Text(
                                          "Product Price",
                                          style: TextStyle(
                                              fontFamily: "Wigenda",
                                              color: dark,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        border: OutlineInputBorder(),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 2)),
                                      ),
                                      cursorColor: dark,
                                    ),
                                    SizedBox(height: 24),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          pName = productNameController.text;
                                          pQty = productQtyController.text;
                                          pPrice = productPriceController.text;

                                          amount = int.parse(pPrice!) *
                                              int.parse(pQty!);

                                          totalAmount = totalAmount + amount!;

                                          Globals.taxPrice =
                                              int.parse(pPrice!) * 18 / 100;

                                          Globals.totalAmount = totalAmount;

                                          Invoice i1 = Invoice(
                                            pName: pName!,
                                            pQty: pQty!,
                                            pPrice: pPrice!,
                                            amount: amount!,
                                            totalAmount: totalAmount,
                                          );

                                          Globals.dataList.add(i1);

                                          print("======================");
                                          print(i1.pName);
                                          print(i1.pQty);
                                          print(i1.pPrice);
                                          print(i1.amount);
                                          print(i1.totalAmount);
                                          print("======================");

                                          Navigator.of(context).pop();
                                        });
                                      },
                                      child: Container(
                                        width: 140,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: dark,
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Product  +",
                                          style: TextStyle(
                                              fontFamily: "lion",
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ));
                  });
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: dark,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Product  +",
                    style: TextStyle(
                        fontFamily: "lion", fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
