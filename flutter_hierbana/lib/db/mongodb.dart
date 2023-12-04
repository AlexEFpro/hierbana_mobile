import 'package:mongo_dart/mongo_dart.dart';
import 'package:flutter_hierbana/infra/models/producto.dart';
import 'package:flutter_hierbana/utilities/constants.dart';


class MongoDB{
  static var  bd, collectionproductos;

  static   conection() async{
    bd = await Db.create(MONGO_URL);
    await bd.open();
    collectionproductos = bd.collection(COLLECTION);
  }

  static Future<List<Map<String, dynamic>>> getProducts() async{
    try{
      final productos = await collectionproductos.find().toList();
      return productos;
    }catch (e){
      print(e);
      return Future.value();
    }
  }
//insertar
  static insertar(Producto producto)async{
    await collectionproductos.insertAll([producto.toMap()]);
  }
  //actualizar
  static actualizar(Producto producto)async{
    var p =await collectionproductos.findOne({"_id":producto.id});
    p["title"]= producto.title;
    p["description"]=producto.description;
    p["price"]=producto.price;
    p["category"]=producto.category;
    p["src"]=producto.src;
    p["presentation"]=producto.presentation;
    await collectionproductos.save(p);
  }
   //eliminar
   static eliminar(Producto producto) async{
    await collectionproductos.remove(where.id(producto.id));
   }
}