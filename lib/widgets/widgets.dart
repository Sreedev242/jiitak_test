import 'package:flutter/material.dart';

class calenderWidget extends StatelessWidget {
  const calenderWidget({
    super.key,
    required this.width, required this.day, required this.backdrop, required this.date, required this.textcolor,
  });

  final double width;
final String day;
final Color backdrop;
final int date;
final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:backdrop ,
        borderRadius:
                new BorderRadius.all(new Radius.circular(10.0)),),
      width: width*1/8,
      height:width*.22,
     
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(child: Text('$day',style: TextStyle(color: textcolor,fontWeight:FontWeight.bold,fontSize: width*1/17),)),
       SizedBox(height: width*1/87,),
        Expanded(child: Text(date.toString(),style: TextStyle(fontSize:width*1/17,color: textcolor ),)),
      ],),
    );
  }
}
