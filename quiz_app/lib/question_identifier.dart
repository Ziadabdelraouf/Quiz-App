import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
 const QuestionIdentifier(this.index,this.isCorrect, {super.key});
  final bool isCorrect;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
       color:  isCorrect?Colors.green:Colors.red

        
      ),
      child:Text(
        index.toString(),
        style:const TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ) ,
    );
  }
}
