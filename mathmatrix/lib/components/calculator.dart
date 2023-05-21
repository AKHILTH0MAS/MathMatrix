import 'package:flutter/material.dart';

import '../constants.dart';

class MathMatrix extends StatefulWidget {
  const MathMatrix({super.key});

  @override
  State<MathMatrix> createState() => _MathMatrixState();
}

class _MathMatrixState extends State<MathMatrix> {
  String character = "";
  String stringone = "";
  String stringtwo = "";
  List<String> previosans = [""];
  bool activeString = true;
  double answer = 0;
  bool isDarktheme = true;
  double _findanswer() {
    if (character == "+") {
      return double.parse(stringone) + double.parse(stringtwo);
    } else if (character == "-") {
      return double.parse(stringone) - double.parse(stringtwo);
    } else if (character == "x") {
      return double.parse(stringone) * double.parse(stringtwo);
    } else if (character == "÷") {
      return double.parse(stringone) / double.parse(stringtwo);
    } else if (character == "%") {
      return double.parse(stringone) % double.parse(stringtwo);
    } else {
      return 0;
    }
  }

  void _backspace() {
    if (activeString) {
      setState(() {
        stringone = stringone.substring(0, stringone.length - 1);
      });
    } else {
      setState(() {
        stringtwo = stringtwo.substring(0, stringtwo.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarktheme ? darkprimaryColor : primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: isDarktheme ? darkprimaryColor : primaryColor,
        title: Text(
          "Math Matrix",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: isDarktheme ? darktextinbttncolor : textinbttncolor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isDarktheme = !isDarktheme;
                });
              },
              child: Icon(
                isDarktheme ? Icons.wb_sunny : Icons.nightlight_round,
                size: 30,
                color: isDarktheme ? darktextinbttncolor : textinbttncolor,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: isDarktheme ? darkansboardcolor : ansboardcolor,
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      previosans[previosans.length - 1],
                      style: TextStyle(
                        fontSize: 40,
                        color:
                            isDarktheme ? darktextinbttncolor : textinbttncolor,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text(
                      "$stringone $character $stringtwo", // This is the answer
                      style: TextStyle(
                        fontSize: 40,
                        color:
                            isDarktheme ? darktextinbttncolor : textinbttncolor,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          stringone = "";
                          stringtwo = "";
                          activeString = true;
                          character = "";
                          answer = 0;
                          previosans = [""];
                        });
                      },
                      child: Text(
                        "AC",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: _backspace,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.backspace,
                          size: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          character = "%";
                          activeString = false;
                        });
                      },
                      child: Text(
                        "%",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(primaryColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          character = "÷";
                          activeString = false;
                        });
                      },
                      child: Text(
                        "÷",
                        style: TextStyle(
                          fontSize: 30,
                          color: textinbttncolor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (activeString) {
                            stringone = "${stringone}7";
                          } else {
                            stringtwo = "${stringtwo}7";
                          }
                        });
                      },
                      child: Text(
                        "7",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (activeString) {
                            stringone = "${stringone}8";
                          } else {
                            stringtwo = "${stringtwo}8";
                          }
                        });
                      },
                      child: Text(
                        "8",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (activeString) {
                            stringone = "${stringone}9";
                          } else {
                            stringtwo = "${stringtwo}9";
                          }
                        });
                      },
                      child: Text(
                        "9",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(primaryColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          character = "x";
                          activeString = false;
                        });
                      },
                      child: Text(
                        "x",
                        style: TextStyle(
                          fontSize: 30,
                          color: textinbttncolor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (activeString) {
                            stringone = "${stringone}4";
                          } else {
                            stringtwo = "${stringtwo}4";
                          }
                        });
                      },
                      child: Text(
                        "4",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (activeString) {
                            stringone = "${stringone}5";
                          } else {
                            stringtwo = "${stringtwo}5";
                          }
                        });
                      },
                      child: Text(
                        "5",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (activeString) {
                            stringone = "${stringone}6";
                          } else {
                            stringtwo = "${stringtwo}6";
                          }
                        });
                      },
                      child: Text(
                        "6",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(primaryColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          character = "-";
                          activeString = false;
                        });
                      },
                      child: Text(
                        "-",
                        style: TextStyle(
                          fontSize: 30,
                          color: textinbttncolor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (activeString) {
                            stringone = "${stringone}1";
                          } else {
                            stringtwo = "${stringtwo}1";
                          }
                        });
                      },
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (activeString) {
                            stringone = "${stringone}2";
                          } else {
                            stringtwo = "${stringtwo}2";
                          }
                        });
                      },
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (activeString) {
                            stringone = "${stringone}3";
                          } else {
                            stringtwo = "${stringtwo}3";
                          }
                        });
                      },
                      child: Text(
                        "3",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(primaryColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          character = "+";
                          activeString = false;
                        });
                      },
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 30,
                          color: textinbttncolor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _backspace();
                        });
                      },
                      child: Text(
                        "C",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (activeString) {
                            stringone = "${stringone}0";
                          } else {
                            stringtwo = "${stringtwo}0";
                          }
                        });
                      },
                      child: Text(
                        "0",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (activeString) {
                            stringone = "$stringone.";
                          } else {
                            stringtwo = "$stringtwo.";
                          }
                        });
                      },
                      child: Text(
                        ".",
                        style: TextStyle(
                          fontSize: 30,
                          color: isDarktheme
                              ? darktextinbttncolor
                              : textinbttncolor,
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(equalButtonColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          answer = _findanswer();
                          activeString = true;
                          previosans = previosans +
                              ["$stringone\t$character\t$stringtwo = $answer"];
                          stringone = character = stringtwo = "";
                        });
                      },
                      child: Text(
                        "=",
                        style: TextStyle(
                          fontSize: 30,
                          color: darktextinbttncolor,
                        ),
                      ),
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
}
