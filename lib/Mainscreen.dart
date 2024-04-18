// ignore_for_file: file_names, prefer_const_constructors
import 'package:bmi_calculator/result.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'enum.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedCard = Gender.unSelected;
  int sliderValue = 0;
  int weight = 40;
  int Age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCard = Gender.male;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.teal,
                          ),
                          color: selectedCard == Gender.male
                              ? Colors.teal
                              : Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.mars,
                              color: Colors.white,
                              size: 50,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCard = Gender.female;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedCard == Gender.female
                              ? Colors.teal
                              : Colors.black,
                          border: Border.all(
                            color: Colors.teal,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              color: Colors.white,
                              size: 50,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Height',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  sliderValue.toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                Text(
                                  "cm",
                                  style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (sliderValue < 250) {
                                        sliderValue++;
                                      }
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                    radius: 20,
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Slider(
                                  value: sliderValue.toDouble(),
                                  min: 0.0,
                                  max: 250.0,
                                  onChanged: (value) {
                                    setState(() {
                                      sliderValue = value.toInt();
                                    });
                                  },
                                  inactiveColor: Colors.white,
                                  activeColor: Colors.teal,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (sliderValue > 0) sliderValue--;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                    radius: 20,
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.teal,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                    radius: 15,
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (weight > 0) weight--;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                    radius: 15,
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.teal,
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$Age',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: 
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Age++;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                    radius: 15,
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (Age > 0) Age--;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.teal,
                                    radius: 15,
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.teal,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            height: sliderValue,
                            weight: weight,
                            age: Age,
                          )),
                );
              },
              child: Container(
                height: 60,
                width: double.infinity,
                color: Colors.teal,
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
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