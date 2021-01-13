//import 'package:cleanmaster/Colors.dart';
import 'package:flutter/material.dart';

import 'Calander.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String selectedtype = "";
  String frequent = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('Your Plan',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body:  Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                child: SingleChildScrollView(
                                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Select Your Cleaning",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  changeCheckBox("initial");
                                },
                                child: Container(
                                  height: 140,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue[50],
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image:
                                              AssetImage("asset/image/img1.png"))),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "initial Cleaning",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.lightBlue[50]),
                                child: selectedtype == "initial"
                                    ? Icon(
                                        Icons.check_circle,
                                        size: 30,
                                        color: Colors.pink,
                                      )
                                    : Container(),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  changeCheckBox("upkeep");
                                },
                                child: Container(
                                  height: 140,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue[50],
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image:
                                              AssetImage("asset/image/img2.png"))),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Upkeep Cleaning",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.lightBlue[50]),
                                child: selectedtype == "upkeep"
                                    ? Icon(
                                        Icons.check_circle,
                                        size: 30,
                                        color: Colors.pink,
                                      )
                                    : Container(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Select Your Frequency",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          frequent == "b1"
                              ? Container(
                                  height: 50,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      "Weekend",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    changCheckFrequent("b1");
                                  },
                                  child: Center(
                                    child: Container(
                                      height: 50,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.lightBlue[50]),
                                      child: Center(
                                        child: Text(
                                          "Weekend",
                                          style: TextStyle(
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                          frequent == "b2"
                              ? Container(
                                  height: 50,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      "Bi-Weekend",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    changCheckFrequent("b2");
                                  },
                                  child: Center(
                                    child: Container(
                                      height: 50,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.lightBlue[50]),
                                      child: Center(
                                          child: Text(
                                        "Bi-Weekend",
                                        style: TextStyle(
                                            color: Colors.indigo,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )),
                                    ),
                                  ),
                                ),
                          frequent == "b3"
                              ? Container(
                                  height: 50,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Monthly",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    changCheckFrequent("b3");
                                  },
                                  child: Center(
                                    child: Container(
                                      height: 50,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.lightBlue[50]),
                                      child: Center(
                                          child: Text(
                                        "Monthly",
                                        style: TextStyle(
                                            color: Colors.indigo,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )),
                                    ),
                                  ),
                                ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "If You Need Extra Services Select Here",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          extraWidget("fridge", "Inside Fridge", true),
                           extraWidget("organise", "Inside organise", false),
                            extraWidget("blind", "blind Clean", false),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          extraWidget("garden", "Inside garden", true),
                           extraWidget("organise", "organise", false),
                            extraWidget("blind", "blind", true),
                        ],
                      ),
                      SizedBox(height: 30,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CalanderPage()));
                        },
                                          child: Container(
                          width: 220,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[50],
                            borderRadius: BorderRadius.circular(10)
                          ),

                          child: Center(
                            child: Text("  Are you Sure ?",style:TextStyle(
                              color: Colors.indigo,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      
    );
  }

  void changeCheckBox(String type) {
    selectedtype = type;

    setState(() {});
  }

  void changCheckFrequent(String type) {
    frequent = type;
    setState(() {});
  }

  Column extraWidget(String icon, String serivce, bool check) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.indigo,
                image: DecorationImage(
                    image: AssetImage("asset/image/icons/$icon.png"),
                    fit: BoxFit.none),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: check == true ?  Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.pink,
                    ),
                  ),):Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Center(
                    child: Icon(
                      Icons.radio_button_unchecked_sharp,
                      color: Colors.pink,
                    ),
                  ),)
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("$serivce",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.indigo),),
          ],
        ),
      ],
    );
  }
}
