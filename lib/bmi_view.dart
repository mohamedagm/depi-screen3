import 'package:depi_screen_3/gender_widget.dart';
import 'package:flutter/material.dart';

class BmiView extends StatefulWidget {
  const BmiView({super.key});

  @override
  State<BmiView> createState() => _BmiViewState();
}

class _BmiViewState extends State<BmiView> {
  bool isMaleChosen = false;
  bool isFemaleChosen = true;
  double height = 180;
  int weight = 50;
  int age = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F1220),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),

            Row(
              spacing: 10,
              children: [
                GenderWidget(
                  onTap: () {
                    setState(() {
                      isMaleChosen = true;
                      isFemaleChosen = false;
                    });
                  },
                  isChoosen: isMaleChosen,
                  icon: Icons.male,
                  text: 'male',
                ),
                GenderWidget(
                  onTap: () {
                    setState(() {
                      isMaleChosen = false;
                      isFemaleChosen = true;
                    });
                  },
                  isChoosen: isFemaleChosen,
                  icon: Icons.female,
                  text: 'female',
                ),
              ],
            ),

            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xff1C1F32),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    'Height',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(height: 8),

                  Row(
                    spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${height.round()}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Slider(
                    value: height,
                    min: 100,
                    max: 220,
                    activeColor: Color(0xFFE91E63),
                    inactiveColor: Colors.grey,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: const Color(0xff1C1F32),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text('weight', style: TextStyle(color: Colors.white)),
                        Text(
                          '$weight',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(
                                Icons.remove_circle,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 12),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(
                                Icons.add_circle,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: const Color(0xff1C1F32),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text('age', style: TextStyle(color: Colors.white)),
                        Text(
                          '$age',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(
                                Icons.remove_circle,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 12),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(
                                Icons.add_circle,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffE91E63),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  double bmi = weight / ((height / 100) * (height / 100));

                  String result;
                  if (bmi < 18.5) {
                    result = 'Underweight';
                  } else if (bmi >= 18.5 && bmi < 25) {
                    result = 'Normal';
                  } else if (bmi >= 25 && bmi < 30) {
                    result = 'Overweight';
                  } else {
                    result = 'Obese';
                  }
                },
                child: const Text(
                  'Calculate',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
