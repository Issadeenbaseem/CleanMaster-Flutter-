
import 'package:cleanmaster/payment.dart';
import 'package:flutter/material.dart';

class CalanderPage extends StatefulWidget {
  @override
  _CalanderPageState createState() => _CalanderPageState();
}

class _CalanderPageState extends State<CalanderPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text(
          " Set You Date ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 150,
                        decoration: BoxDecoration(
                            border: null,
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage('asset/image/bs.png'))),
                      ),
                      Text(
                        "Customer Details Form",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 400,
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                hintText: 'Customer Name',
                                helperText: 'Eg : Baseem Issadeem',
                                counterText: 'Billing Person',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.location_city),
                                hintText: 'Customer Address',
                                helperText:
                                    'Eg : "13/c carpanter street Kalmunai"',
                                counterText: 'Service Address',
                                border: const OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.phone),
                                hintText: 'Customer Phone Number',
                                helperText: 'Eg : "07xxxxxx"',
                                counterText: 'Customer Number',
                                border: const OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.date_range),
                                hintText: 'Date And Time',
                                helperText: 'Eg : MM/DD/YY: TIME',
                                counterText: 'Service Starting Date',
                                border: const OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.email),
                                hintText: 'Mail Address',
                                helperText: 'Eg : "issadeenbaseem95@gmail.com',
                                counterText: 'Mail for e-Billing',
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Container(
                                    height: 150,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Center(
                                            child: Text(
                                          "   Successfully Submited ! ",
                                          style: TextStyle(
                                              color: Colors.lightGreen,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        )),
                                        SizedBox(height: 20),
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.lightGreen),
                                          child: Icon(Icons.check),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text("Submit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              },
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.lightGreen[100],
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Text("Payment Methods",
                                        style: TextStyle(
                                            color: Colors.pink,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Container(
                                        height: 300,
                                        decoration: BoxDecoration(
                                            color: Colors.indigo,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 30),
                                          child: Container(
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Center(
                                                    child: Text(
                                                      "Initial Cleaning Per hour : 300-500/-  \n (condition can Apply)",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "TopUp Cleaning Per hour : 500-700/-  \n (condition can Apply))",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "Extra Services: \n\n Fridg: 200/-  \n Garden:300/- \n Window:100/-",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Center(
                                                    child: GestureDetector(
                                                      onTap: (){
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CalanderPage()));
                                                      },
                                                                                                          child: Container(
                                                        height: 50,
                                                        width: 100,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(10),
                                                            color: Colors.white),
                                                        child: Center(
                                                          child: Text("Done!",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .indigo,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.lightGreen[100],
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Text("Payment Details",
                                        style: TextStyle(
                                            color: Colors.pink,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
