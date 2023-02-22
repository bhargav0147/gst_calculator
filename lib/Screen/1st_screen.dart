import 'package:flutter/material.dart';

class calc extends StatefulWidget {
  const calc({Key? key}) : super(key: key);

  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
  String org = "";
  dynamic fnl = "";
  dynamic est=0;
  List c1=[Colors.black12,Colors.redAccent];
  int a=0;
  int b=0;
  int c=0;
  int d=0;
  int e=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ORIGNAL PRICE",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 15),
                      ),
                      Text(
                        "$org Rs.",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              height: 50,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              height: 80,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "GST",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            height: 45,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                            color: c1[a]
                            ),
                            child: Center(
                              child: Text(
                                "3%",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            b=0;
                            c=0;
                            d=0;
                            e=0;
                            est=int.parse(org)*3/100;
                            setState(() {
                              a=1;
                              fnl=int.parse(org)+est;
                            });
                          },
                        ),
                        InkWell(
                          child: Container(
                            height: 45,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                            color: c1[b]
                            ),
                            child: Center(
                              child: Text(
                                "5%",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            a=0;
                            c=0;
                            d=0;
                            e=0;
                            est=int.parse(org)*5/100;
                            setState(() {
                              b=1;
                              fnl=int.parse(org)+est;
                            });
                          },
                        ),
                        InkWell(
                          child: Container(
                            height: 45,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: c1[c]
                            ),
                            child: Center(
                              child: Text(
                                "12%",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            a=0;
                            b=0;
                            d=0;
                            e=0;
                            est=int.parse(org)*12/100;
                            setState(() {
                              fnl=int.parse(org)+est;
                              c=1;
                            });
                          },
                        ),
                        InkWell(
                          child: Container(
                            height: 45,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: c1[d]
                            ),
                            child: Center(
                              child: Text(
                                "18%",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            a=0;
                            b=0;
                            c=0;
                            e=0;
                            est=int.parse(org)*18/100;
                            setState(() {
                              d=1;
                              fnl=int.parse(org)+est;
                            });
                          },
                        ),
                        InkWell(
                          child: Container(
                            height: 45,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: c1[e]
                            ),
                            child: Center(
                              child: Text(
                                "28%",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            a=0;
                            b=0;
                            c=0;
                            d=0;
                            est=int.parse(org)*28/100;
                            setState(() {
                              e=1;
                              fnl=int.parse(org)+est;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "FINAL PRICE",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 15),
                      ),
                      Text(
                        "$fnl Rs.",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              height: 50,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "CGST/SGST\n       25",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.black),
                ),
              ),
            ),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(onTap: () {
                          setState(() {
                            org = org + "7";
                          });
                        }, child: box("7")),
                        InkWell(onTap: () {
                          setState(() {
                            org = org + "4";
                          });
                        }, child: box("4")),
                        SizedBox(height: 5,),
                        InkWell(onTap: () {
                          setState(() {
                            org = org + "1";
                          });
                        }, child: box("1")),
                        InkWell(onTap: () {
                          setState(() {
                            org = org + "00";
                          });
                        }, child: box("00")),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(onTap: () {
                          setState(() {
                            org = org + "8";
                          });
                        }, child: box("8")),
                        InkWell(onTap: () {
                          setState(() {
                            org = org + "5";
                          });
                        }, child: box("5")),
                        SizedBox(height: 5,),
                        InkWell(onTap: () {
                          setState(() {
                            org = org + "2";
                          });
                        }, child: box("2")),
                        InkWell(onTap: () {
                          setState(() {
                            org = org + "0";
                          });
                        }, child: box("0")),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(onTap: () {
                          setState(() {
                            org = org + "9";
                          });
                        }, child: box("9")),
                        InkWell(onTap: () {
                          setState(() {
                            org = org + "6";
                          });
                        }, child: box("6")),
                        SizedBox(height: 5,),
                        InkWell(onTap: () {
                          setState(() {
                            org = org + "3";
                          });
                        }, child: box("3")),
                        InkWell(onTap: () {
                        }, child: box(".")),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(onTap: () {
                          setState(() {
                            org = "";
                            fnl="";
                          });
                        },
                          child: Container(
                            height: 200, width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffFF6B00),
                            ),
                            child: Center(
                              child: Text(
                                "AC",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        InkWell(
                          onTap: () {
                            setState(() {
                              org=org.substring(0,org.length-1);
                            });
                          },
                          child: Container(
                            height: 200, width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffFF6B00),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.backspace_outlined,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget box(String no) {
    return Container(
      height: 100, width: 100,
      child: Center(
        child: Text(
          "$no",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}


