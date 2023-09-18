import 'package:flutter/material.dart';


class TaspeehScreen extends StatefulWidget {
  const TaspeehScreen({super.key});

  @override
  State<TaspeehScreen> createState() =>
      _TaspeehScreenState();
}

class _TaspeehScreenState extends State<TaspeehScreen> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF3a4f64),
      appBar: AppBar(backgroundColor: Color(0XFF21374c),
        title: const Center(
          child: Text(
              "Tasbeeh Counter",
            style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.white),
          ),
        ),
      ),
      body:
          Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/photo.webp'),
                    radius: 220,
                  ),

      Text(number.toString(),
                  style: const TextStyle(fontSize: 66,
                      fontWeight: FontWeight.bold,
                  color: Colors.white),
              ),

                ],),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            backgroundColor: Color(0XFFfdfbd2),
            onPressed:() {
              setState(() {
                number=0;
              });
            } ,
            child: Icon(Icons.undo,color: Colors.brown,),),
          SizedBox(height: 15,),
          FloatingActionButton(
            backgroundColor:Color(0XFFfdfbd2),

            onPressed:() {
              setState(() {
                number++;
              });
            } ,
            child: Icon(Icons.add,color: Colors.brown,),),
          SizedBox(height: 15,),
          FloatingActionButton(
            backgroundColor: Color(0XFFfdfbd2),

            onPressed: (){

            setState(() {
              if(number == 0){
                return;
              }else{
               number--;
              }
            }
            );
          } ,
            child: Icon(Icons.remove,color: Colors.brown,),),
        ],
      ),



    );
  }
}