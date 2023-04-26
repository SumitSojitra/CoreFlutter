import 'package:flutter/material.dart';

import '../utils/utils.dart';

class detail_page extends StatefulWidget {
  const detail_page({Key? key}) : super(key: key);

  @override
  State<detail_page> createState() => _detail_pageState();
}

class _detail_pageState extends State<detail_page> {
  TextEditingController CustomerNameController = TextEditingController();
  TextEditingController CustomerNumberController = TextEditingController();
  TextEditingController CustomerStateController = TextEditingController();
  TextEditingController CustomerCityController = TextEditingController();
  TextEditingController CustomerCodeController = TextEditingController();
  TextEditingController CustomerAddressController = TextEditingController();

  TextEditingController YourNameController = TextEditingController();
  TextEditingController YourNumberController = TextEditingController();
  TextEditingController YourStateController = TextEditingController();
  TextEditingController YourCityController = TextEditingController();
  TextEditingController YourCodeController = TextEditingController();
  TextEditingController YourAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invoice",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Glinster",
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Globals.CustomerName = CustomerNameController.text;
                  Globals.CustomerNumber = CustomerNumberController.text;
                  Globals.CustomerState = CustomerStateController.text;
                  Globals.CustomerCity = CustomerCityController.text;
                  Globals.CustomerCode = CustomerCodeController.text;
                  Globals.CustomerAddress = CustomerAddressController.text;

                  Globals.yourName = YourNameController.text;
                  Globals.yourNumber = YourNumberController.text;
                  Globals.yourState = YourStateController.text;
                  Globals.yourCity = YourCityController.text;
                  Globals.yourCode = YourCodeController.text;
                  Globals.yourAddress = YourAddressController.text;

                  print("===================================");
                  print(Globals.CustomerName);
                  print(Globals.CustomerNumber);
                  print(Globals.CustomerState);
                  print(Globals.CustomerCity);
                  print(Globals.CustomerCode);
                  print(Globals.CustomerAddress);
                  print("===================================");
                  print("===================================");
                  print(Globals.yourName);
                  print(Globals.yourNumber);
                  print(Globals.yourState);
                  print(Globals.yourCity);
                  print(Globals.yourCode);
                  print(Globals.yourAddress);
                  print("===================================");

                  Navigator.of(context).pushNamed('invoice_page');
                });
              },
              icon: Icon(
                Icons.check,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                //Customer Detail
                Text(
                  "Customer Details",
                  style: TextStyle(
                    fontFamily: "lion",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: dark,
                  ),
                ),
                Divider(
                  color: dark,
                  height: 2,
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Customer's Name",
                      style: TextStyle(fontSize: 16, color: dark),
                    ),
                    TextFormField(
                      controller: CustomerNameController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Customer Name",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: dark,
                            width: 2,
                          ),
                        ),
                      ),
                      cursorColor: dark,
                    )
                  ],
                ),
                SizedBox(height: 20),
                ////////////
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact No.",
                            style: TextStyle(fontSize: 16, color: dark),
                          ),
                          TextFormField(
                            controller: CustomerNumberController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Contact No.",
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: dark,
                                  width: 2,
                                ),
                              ),
                            ),
                            cursorColor: dark,
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "State",
                            style: TextStyle(fontSize: 16, color: dark),
                          ),
                          TextFormField(
                            controller: CustomerStateController,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "State",
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: dark,
                                  width: 2,
                                ),
                              ),
                            ),
                            cursorColor: dark,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "City",
                            style: TextStyle(fontSize: 16, color: dark),
                          ),
                          TextFormField(
                            controller: CustomerCityController,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "City",
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: dark,
                                  width: 2,
                                ),
                              ),
                            ),
                            cursorColor: dark,
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    ////////////
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zip Code",
                            style: TextStyle(fontSize: 16, color: dark),
                          ),
                          TextFormField(
                            controller: CustomerCodeController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Zip Code",
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: dark,
                                  width: 2,
                                ),
                              ),
                            ),
                            cursorColor: dark,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style: TextStyle(fontSize: 16, color: dark),
                    ),
                    TextFormField(
                      controller: CustomerAddressController,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        hintText: "Address",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: dark,
                            width: 2,
                          ),
                        ),
                      ),
                      cursorColor: dark,
                    )
                  ],
                ),

                ///
                SizedBox(height: 20),

                /// Your Detail
                ///
                ///
                ///
                Text(
                  "Your Details",
                  style: TextStyle(
                    fontFamily: "lion",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: dark,
                  ),
                ),
                Divider(color: dark),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Name",
                      style: TextStyle(fontSize: 16, color: dark),
                    ),
                    TextFormField(
                      controller: YourNameController,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Your Name",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: dark,
                            width: 2,
                          ),
                        ),
                      ),
                      cursorColor: dark,
                    )
                  ],
                ),
                SizedBox(height: 20),
                ////////////
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact No.",
                            style: TextStyle(fontSize: 16, color: dark),
                          ),
                          TextFormField(
                            controller: YourNumberController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Contact No.",
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: dark,
                                  width: 2,
                                ),
                              ),
                            ),
                            cursorColor: dark,
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "State",
                            style: TextStyle(fontSize: 16, color: dark),
                          ),
                          TextFormField(
                            controller: YourStateController,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "State",
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: dark,
                                  width: 2,
                                ),
                              ),
                            ),
                            cursorColor: dark,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "City",
                            style: TextStyle(fontSize: 16, color: dark),
                          ),
                          TextFormField(
                            controller: YourCityController,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "City",
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: dark,
                                  width: 2,
                                ),
                              ),
                            ),
                            cursorColor: dark,
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    ////////////
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zip Code",
                            style: TextStyle(fontSize: 16, color: dark),
                          ),
                          TextFormField(
                            controller: YourCodeController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Zip Code",
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: dark,
                                  width: 2,
                                ),
                              ),
                            ),
                            cursorColor: dark,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style: TextStyle(fontSize: 16, color: dark),
                    ),
                    TextFormField(
                      controller: YourAddressController,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        hintText: "Address",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: dark,
                            width: 2,
                          ),
                        ),
                      ),
                      cursorColor: dark,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
