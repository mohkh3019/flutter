import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
// ignore: use_key_in_widget_constructors
const BMIResultScreen({
   required this.result,
   required this.isMale,
   required this.age,

});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('Gender : ${isMale? 'male' : 'female'}' , style: const TextStyle(fontSize: 30.0 , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic,),),
             Text('Result : $result' , style: const TextStyle(fontSize: 30.0 , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic,),),
              Text('Age : $age' , style: const TextStyle(fontSize: 30.0 , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic,),),

          ],
        ),
      ),
      
    );
  }
}