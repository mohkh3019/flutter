import 'dart:math';

import 'package:bmi_application/bmi_result_Screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({ Key? key }) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  var higth = 100.0;
  int age = 1;
  double weight = 1.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        title: const Text('Bmi Calculator',
        style: TextStyle(fontWeight: FontWeight.bold),
        ),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
             children: [
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: GestureDetector(
                       onTap: () {
                       setState(() {
                         isMale = true;
                       });
                     },
                     child: Container(
                       
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         color: isMale? Colors.blue : Colors.grey,
                       ) ,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: const [
                          Image(image: AssetImage('images/male.png'),height: 90.0,width: 90.0,),
                           SizedBox(height: 15.5,)
                           ,Text('Male', style: TextStyle(
                           fontSize: 20.0 , fontWeight: FontWeight.bold, ),)
                         ],
                       ),
                     ),
                   ),
                 ),
               ),
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: GestureDetector(
                     
                       onTap: () {
                       setState(() {
                         isMale = false;
                       });
                     },
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         color: !isMale? Colors.blue : Colors.grey,
                       ) ,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: const [
                           Image(image: AssetImage('images/femal.png'),height: 90.0,width: 90.0,),
                           SizedBox(height: 15.5,)
                           ,Text('Female', style: TextStyle(
                           fontSize: 20.0 , fontWeight: FontWeight.bold, ),)
                         ],
                       ),
                     ),
                   ),
                 ),
               ),
            
            ],
            ),
          ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey,
              ),
              child: Column(
                 children:  [
                   const Text('Hight',style: TextStyle(fontSize: 30.0 , fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                     children:  [
                       Text('${higth.round()}',style: const TextStyle(fontSize: 50.0 , fontWeight: FontWeight.w900,fontStyle: FontStyle.italic,),),
                       const SizedBox(height: 5.0,),
                     const Text('cm',style: TextStyle(fontSize: 20.0 , fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),),
                     ],
                   ),
                  Slider(
                    value:higth ,
                    max: 300.0,
                    min: 0.0,
                   // ignore: avoid_print
                   onChanged: (value)
                   {
                     setState(() {
                       higth=value;
                     });
                     print(value.round());
                     
                     } ,
                   
                   ),
                 
                 ],
                ),
            ),
          ),
        ),
           Expanded(
             child: Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(
               children: [
                 Expanded(
                   child: Container(
                     decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey,
                               ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:  [
                          const Text('age',style: TextStyle(fontSize: 30.0 , fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),),
                          Text('$age',style: const TextStyle(fontSize: 50.0 , fontWeight: FontWeight.w900,fontStyle: FontStyle.italic,),),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             FloatingActionButton(
                               heroTag: "age+",
                               mini: true,
                               onPressed: (){
                                 setState(() {
                                   age--;
                                 });
                               },
                             child:  const Icon(Icons.remove),
                             )
                           , FloatingActionButton(
                             heroTag: "age-",
                               mini: true,
                               onPressed: (){
                                 setState(() {
                                   age++;
                                 });
                               },
                             child:  const Icon(Icons.add),
                             )
                           ],
                         ),
                         ],
                     ),
                   ),
                 ),
               const SizedBox(width: 20.0,),
               Expanded(
                 child: Container(
                     decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey,
                  ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:  [
                         const Text('Weight',style: TextStyle(fontSize: 30.0 , fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),),
                          Text('$weight',style: const TextStyle(fontSize: 50.0 , fontWeight: FontWeight.w900,fontStyle: FontStyle.italic,),),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             FloatingActionButton(
                               heroTag: 'w+',
                               mini: true,
                               onPressed: (){
                                 setState(() {
                                   weight--;
                                 });
                               },
                             child:  const Icon(Icons.remove),
                             )
                           , FloatingActionButton(
                             heroTag: 'w-',
                               mini: true,
                               onPressed: (){
                                setState(() {
                                   weight ++;
                                });
                               },
                             child:  const Icon(Icons.add),
                             )
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
         MaterialButton(
          color: Colors.blue,
           onPressed: (){
             // ignore: unused_local_variable
             var result = weight / pow(higth/100 ,2);
             // ignore: avoid_print
             print(result.round());

                 Navigator.push(context,
                 MaterialPageRoute(
                   
                   builder: ((context) => BMIResultScreen(
                     age: age,
                     isMale: isMale,
                     result: result.round(),
                   )) ,
                 
                 
                 ),
                 );


             
           },
         child: const Text('Calculate',
         style: TextStyle(fontWeight: FontWeight.bold,
         fontSize: 20.0,
         fontStyle: FontStyle.italic,
         color: Colors.white,
         ),
         ), )
         ,
       
       
       ],
      ),
    );
  }
}