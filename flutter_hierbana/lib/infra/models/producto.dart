import 'dart:ffi';

import 'package:mongo_dart/mongo_dart.dart';

class Producto{
  final ObjectId id;
  final String title;
  final  String category;
  final String presentation;
  final String description; 
  final Int price;
  final String src;

  const Producto ({required this.id, required this.category,required this.description, required this.price, required this.title,required this.presentation, required this.src });
  Map<String, dynamic> toMap(){
    return{
      '_id':id,
      'title':title,
      'category':category,
      'description':description,
      'price':price,
      'presentation':presentation,
      'src':src,

    };
  }
  Producto.fromMap(Map<String, dynamic>map)
  : id=map['_id'],
    title= map['title'],
    category=map['category'],
    description= map['description'],
    price= map['price'],
    presentation=map['presentation'],
    src=map['src']
}