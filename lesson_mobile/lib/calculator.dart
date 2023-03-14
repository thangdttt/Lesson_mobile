import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'my app',
    home: MyHome(),
  ));
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Operation();
}

class Operation extends State<HomePage> {
  var result = '';
  final input1 = TextEditingController();
  final input2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('calculator'),
        ),
        body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/calculator.png',
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 20),
                TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          gapPadding: 10),
                      labelText: 'Nhập số A',
                    ),
                    controller: input1),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        gapPadding: 10),
                    labelText: 'Nhập sô B',
                  ),
                  controller: input2,
                ),
                const SizedBox(height: 20),
                Text('Kết Quả: $result'),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        var number1 = double.tryParse(input1.text);
                        var number2 = double.tryParse(input2.text);
                        if (input2.text.isEmpty) {
                          result = 'vui lòng nhập số B';
                        } else {
                          if (number2 == null) {
                            result = 'giá trị B phải là dạng số';
                          }
                        }
                        if (input1.text.isEmpty) {
                          result = 'vui lòng nhập số A';
                        } else {
                          if (number1 == null) {
                            result = 'giá trị A phải là dạng số';
                          }
                        }
                        if (number1 != null && number2 != null) {
                          result = '${number1! + number2!}';
                        }
                        setState(() {
                          result;
                        });
                      },
                      child: const Text('+'),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        var number1 = double.tryParse(input1.text);
                        var number2 = double.tryParse(input2.text);
                        if (input2.text.isEmpty) {
                          result = 'vui lòng nhập số B';
                        } else {
                          if (number2 == null) {
                            result = 'giá trị B phải là dạng số';
                          }
                        }
                        if (input1.text.isEmpty) {
                          result = 'vui lòng nhập số A';
                        } else {
                          if (number1 == null) {
                            result = 'giá trị A phải là dạng số';
                          }
                        }

                        if (number1 != null && number2 != null) {
                          result = '${number1! - number2!}';
                        }
                        setState(() {
                          result;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow,
                        onPrimary: Colors.blueGrey,
                      ),
                      child: const Text('-'),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        var number1 = double.tryParse(input1.text);
                        var number2 = double.tryParse(input2.text);
                        if (input2.text.isEmpty) {
                          result = 'vui lòng nhập số B';
                        } else {
                          if (number2 == null) {
                            result = 'giá trị B phải là dạng số';
                          }
                        }
                        if (input1.text.isEmpty) {
                          result = 'vui lòng nhập số A';
                        } else {
                          if (number1 == null) {
                            result = 'giá trị A phải là dạng số';
                          }
                        }

                        if (number1 != null && number2 != null) {
                          result = '${number1! * number2!}';
                        }
                        setState(() {
                          result;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      child: const Text('x'),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        var number1 = double.tryParse(input1.text);
                        var number2 = double.tryParse(input2.text);
                        if (input2.text.isEmpty) {
                          result = 'vui lòng nhập số B';
                        } else {
                          if (number2 == null) {
                            result = 'giá trị B phải là dạng số';
                          }
                        }
                        if (input1.text.isEmpty) {
                          result = 'vui lòng nhập số A';
                        } else {
                          if (number1 == null) {
                            result = 'giá trị A phải là dạng số';
                          }
                        }
                        if (input2.text == '0') {
                          result = 'Số bị chia phải khác 0';
                        }else{
                          result = '${number1! / number2!}';
                        }
                        setState(() {
                          result;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      child: const Text('/'),
                    ),
                  ],
                ),
              ],
            )
        )
    );
  }
}
