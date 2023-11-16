import 'package:flutter/material.dart';

listTileWidget({required double trailingSize,required double subtitleSize,required double titleSize,required String title,required String subtitle}){
  return ListTile(
    title:Text(title,style: TextStyle(color: Colors.grey,fontSize: titleSize),) ,
    subtitle: Text(subtitle,style: TextStyle(fontWeight: FontWeight.bold,fontSize: subtitleSize),),
    trailing: Text('1 個',style: TextStyle(fontWeight: FontWeight.bold,fontSize:trailingSize ),),
  );
}