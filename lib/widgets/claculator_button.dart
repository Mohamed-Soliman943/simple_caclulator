import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calculatorButton extends StatelessWidget {
  calculatorButton({super.key, required this.botttext, required this.color, required this.text_color,required this.ontap});

  final String botttext;
  final Color color;
  final Color text_color;
  var ontap;
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Container(
             // height: 100,
            // width: 80,
            color: color,
            child: Center(
              child: Text(botttext,
              style: TextStyle(
                color: text_color,
                fontSize: 30,
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
