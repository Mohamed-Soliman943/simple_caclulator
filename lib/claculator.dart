import 'package:flutter/material.dart';

import 'package:math_expressions/math_expressions.dart';
import 'package:simple_calculator_app/variables.dart';
import 'package:simple_calculator_app/widgets/claculator_button.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      title: const Text('Calculator',style: TextStyle(
        color: Colors.white,
      ),),
    ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            Expanded(

              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(input,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50 ,
                            overflow: TextOverflow.clip,

                          ),),
                        ],
                      ),
                  ),
                  Row(
                    children: [
                      Text( '=$output' ,style:const  TextStyle(
                        color: Colors.white,
                        fontSize: 100,

                      ),),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Row(
                    
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        calculatorButton( botttext: 'AC', color: Colors.white38, text_color: Colors.black,
                          ontap: (){
                    
                          setState(() {
                            input ='';
                            output ='';
                          });
                        },),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: 'DEL', color: Colors.white38, text_color: Colors.black,
                          ontap: (){
                          setState(() {
                            input= input.substring(0,input.length-1);
                          });
                          },),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: '%', color: Colors.white38, text_color: Colors.black,
                          ontap: (){
                            setState(() {
                              input += '%';
                            });
                          },),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: '/', color: Colors.orange, text_color: Colors.white,
                          ontap:  (){
                            setState(() {
                              input += '/';
                            });
                          },),
                    
                    
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        calculatorButton( botttext: '7', color: Colors.white38, text_color: Colors.black,
                          ontap: (){

                          setState(() {
                            input += '7';
                          });
                          },),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: '8', color: Colors.white38, text_color: Colors.black,
                          ontap: (){
                            setState(() {
                              input += '8';
                            });
                          } ,),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: '9', color: Colors.white38, text_color: Colors.black,
                          ontap:  (){
                            setState(() {
                              input += '9';
                            });
                          },),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: 'X', color: Colors.orange, text_color: Colors.white,
                          ontap:  (){
                            setState(() {
                              input += '*';
                            });
                          },),


                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        calculatorButton( botttext: '4', color: Colors.white38, text_color: Colors.black,
                          ontap:  (){
                            setState(() {
                              input += '4';
                            });
                          },),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: '5', color: Colors.white38, text_color: Colors.black,
                          ontap:  (){
                            setState(() {
                              input += '5';
                            });
                          },),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: '6', color: Colors.white38, text_color: Colors.black,
                          ontap:  (){
                            setState(() {
                              input += '6';
                            });
                          },),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: '-', color: Colors.orange, text_color: Colors.white,
                          ontap:  (){
                            setState(() {
                              input += '-';
                            });
                          },),


                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Row(


                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        calculatorButton( botttext: '1', color: Colors.white38, text_color: Colors.black,
                          ontap:  (){
                            setState(() {
                              input += '1';
                            });
                          },),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: '2', color: Colors.white38, text_color: Colors.black,
                          ontap:  (){
                            setState(() {
                              input += '2';
                            });
                          },),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: '3', color: Colors.white38, text_color: Colors.black,
                          ontap:  (){
                            setState(() {
                              input += '3';
                            });
                          },),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: '+', color: Colors.orange, text_color: Colors.white,
                          ontap:  (){
                            setState(() {
                              input += '+';
                            });
                          },),


                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap:  (){
                              setState(() {
                                input += '0';
                              });
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(80),
                              child: Container(
                                height: 100,
                                width: double.infinity,
                                color: Colors.white38,
                                child:const  Center(
                                  child: Text('0',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                    ),),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: '.', color: Colors.white38, text_color: Colors.black,
                          ontap:  (){
                            setState(() {
                              input += '.';
                            });
                          },),
                        const SizedBox(
                          width: 5,
                        ),
                        calculatorButton( botttext: '=', color: Colors.orange, text_color: Colors.white,
                          ontap:  (){
                            Expression exp = Parser().parse(input);
                            double result = exp.evaluate(EvaluationType.REAL, ContextModel());
                            setState(() {
                              output= result.toString();
                            });
                          },),


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );



  }
}
