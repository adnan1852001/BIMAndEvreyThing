import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testoop/modules/%20counter/Counter.dart';
import 'package:testoop/modules/resultSecreen/ResultSecreen.dart';

class BIMCalculator extends StatefulWidget {
  const BIMCalculator({Key? key}) : super(key: key);

  @override
  _BIMCalculatorState createState() => _BIMCalculatorState();
}

class _BIMCalculatorState extends State<BIMCalculator> {
  bool male =true;
  double value=120.0;
  int  weight=20;
  int age=5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo[900],
        title: Text(
          'BIM CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Colors.indigo[900],
        child: Column(
          children:
          [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                   GestureDetector(
                     onTap: (){
                       setState(() {
                         male= true;
                          
                       });
                     },
                     child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(

                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [

                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 100,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent[400],
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color:  male? Colors.cyan[100]: Colors.indigo[700],

                      ),
                  ),
                   ),
                   SizedBox(
                      width: 20.0,
                    ),
                   GestureDetector(
                     onTap: (){
                       setState(() {
                         male=false;
                       });
                     },
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: Column(

                           mainAxisAlignment:MainAxisAlignment.center,
                           children: [
                             Icon(
                               Icons.female,
                               color: Colors.white,
                               size: 100,
                             ),
                             Text(
                               'FEMALE',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 color: Colors.blueAccent[400],
                                 fontSize: 20,
                               ),
                             ),
                           ],
                         ),
                       ),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(20.0)),
                         color:  male?  Colors.indigo[700]:Colors.cyan[100],
                       ),
                     ),
                   ),



                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.indigo[700]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text(
                        'HEGET',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent[400],
                          fontSize: 30,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${value.round()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent[400],
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          value:value,
                          max: 220.0,
                          min: 80.0,
                          onChanged: (val){
                            setState(() {
                              value=val;
                            });

                          },
                      ),
                    ],
                  ),
                ),
              ),
              
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.indigo[700],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           children:
                           [
                             Text(
                               'WEIGHT',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 color: Colors.blueAccent[400],
                                 fontSize: 30,
                               ),
                             ),
                             Text(
                               '$weight',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                                 fontSize: 40,
                               ),
                             ),
                             Row(
                               children:
                               [
                                 FloatingActionButton(

                                   onPressed: (){
                                     setState(() {
                                       weight--;

                                     });
                                   },
                                   heroTag: 'weight-',
                                   child: Icon(
                                     Icons.remove,

                                   ),
                                 ),
                                 SizedBox(
                                   width: 20.0,
                                 ),
                                 FloatingActionButton(

                                   onPressed: (){
                                     setState(() {
                                       weight++;
                                     });
                                   },
                                   heroTag: 'weight+',
                                   child: Icon(
                                     Icons.add,

                                   ),
                                 ),
                               ],
                             ),

                           ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.indigo[700],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Text(
                                'AGE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent[400],
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                '$age',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                              Row(
                                children:
                                [
                                  FloatingActionButton(

                                    onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                    },
                                    heroTag: 'age-',
                                    child: Icon(
                                      Icons.remove,

                                    ),
                                  ),

                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  FloatingActionButton(

                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    heroTag: 'age+',

                                    child: Icon(
                                      Icons.add,

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
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              child: MaterialButton(
                color: Colors.red,
                onPressed: ()
                {
                  double result = weight/pow(value/100,2);
                  Navigator.push(context,
                  MaterialPageRoute(builder:(context)=>ResultScreen(
                    age: age,
                    male: male,
                    result: result.round(),
                  )),
                  );
                },
                child: Text(
                  'CALCULATOR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
