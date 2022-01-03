import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Cal extends StatefulWidget {
  const Cal({
    Key? key,
  }) : super(key: key);

  @override
  _CalState createState() => _CalState();
}

class _CalState extends State<Cal> {
  var a = "";
  int c = 0;
  var d = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 13, 26),
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 6, 13, 26),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Positioned(
              right: 20,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "$a",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
            Divider(
              color: Colors.blueGrey,
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      clear();
                    },
                    child: Text(
                      "C",
                      style: TextStyle(fontSize: 30),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    )),
                ElevatedButton(
                    onPressed: () {
                      enterNumber("-");
                    },
                    child: Text("-",style: TextStyle(fontSize: 30)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueGrey),
                    )),
                ElevatedButton(
                    onPressed: () {
                      enterNumber("%");
                    },
                    child: Text("%",style: TextStyle(fontSize: 20)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueGrey),
                    )),
                ElevatedButton(
                  onPressed: () {
                    enterNumber("/");
                  },
                  child: Text("/",style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueGrey),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      enterNumber("7");
                    },
                    child: Text("7",style: TextStyle(fontSize: 20),),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueGrey),
                    )),
                ElevatedButton(
                    onPressed: () {
                      enterNumber("8");
                    },
                    child: Text("8",style: TextStyle(fontSize: 20)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueGrey),
                    )),
                ElevatedButton(
                    onPressed: () {
                      enterNumber("9");
                    },
                    child: Text("9",style: TextStyle(fontSize: 20)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueGrey),
                    )),
                ElevatedButton(
                    onPressed: () {
                      enterNumber("*");
                    },
                    child: Text("X",style: TextStyle(fontSize: 20)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueGrey),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      enterNumber("4");
                    },
                    child: Text("4",style: TextStyle(fontSize: 20)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueGrey),
                    )),
                ElevatedButton(
                    onPressed: () {
                      enterNumber("5");
                    },
                    child: Text("5",style: TextStyle(fontSize: 20)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueGrey),
                    )),
                ElevatedButton(
                  onPressed: () {
                    enterNumber("6");
                  },
                  child: Text(
                    "6",style: TextStyle(fontSize: 20)
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueGrey),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    enterNumber("+");
                  },
                  child: Text("+",style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueGrey),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    enterNumber("3");
                  },
                  child: Text("3",style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueGrey),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    TextStyle(color: Colors.white, fontSize: 30);
                    enterNumber(
                      "2",
                    );
                  },
                  child: Text("2",style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueGrey),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    enterNumber("1");
                  },
                  child: Text("1",style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueGrey),
                  ),
                ),
                ElevatedButton(
                  onPressed: backspace,
                  child: Icon(Icons.arrow_back_sharp),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueGrey),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    enterNumber("0");
                  },
                  child: Text("0",style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueGrey),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    enterNumber(
                      "()",
                    );
                  },
                  child: Text("()",style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueGrey),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    enterNumber(".");
                  },
                  child: Text(".",style: TextStyle(fontSize: 30)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueGrey),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      calculate();
                    },
                    child: Text(
                      "=",
                      style: TextStyle(fontSize: 30),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  enterNumber(
    var num,
  ) {
    setState(() {
      a += num;
    });
  }

  backspace() {
    setState(() {
      List<String> c = a.split("");
      c.removeLast();
      a = c.join();
    });
  }

  clear() {
    setState(() {
      a = '';
    });
  }

  calculate() {
    Parser p = Parser();
    Expression exp = p.parse(a);
    ContextModel cm = ContextModel();
    var eval = exp.evaluate(EvaluationType.REAL, cm);
    print(eval);
    setState(() {
      a = eval.toString();
    });
  }
}
