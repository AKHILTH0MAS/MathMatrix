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
  bool activeString = true;
  double answer = 0;
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
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: const Text(
          "Math Matrix",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: ansboardcolor,
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Text(
                    "$stringone $character $stringtwo", // This is the answer
                    style: const TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    answer.toString(), // This is the answer
                    style: const TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                ],
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
                        });
                      },
                      child: const Text(
                        "AC",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: _backspace,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.backspace,
                          size: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "%",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "÷",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "7",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "8",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "9",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "x",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "4",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "5",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "6",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "-",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "1",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "2",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "3",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "+",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "C",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        "0",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                      child: const Text(
                        ".",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
                        });
                      },
                      child: const Text(
                        "=",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
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
