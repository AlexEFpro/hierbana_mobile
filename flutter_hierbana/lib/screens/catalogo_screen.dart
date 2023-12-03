import 'package:flutter/material.dart';
import 'package:flutter_hierbana/components/bottom_nav.dart';
import 'package:dio/dio.dart';
import 'package:flutter_hierbana/infra/models/Product.dart';



class CatalogoScreen extends StatefulWidget {
  const CatalogoScreen({super.key});

  @override
  State<CatalogoScreen> createState() => _CatalogoScreenState();
}

class _CatalogoScreenState extends State<CatalogoScreen> {
  Product? product;
@override
  void initState() {
    
    super.initState();
    getData();
  }
  final dio=Dio();
  void getData() async{
    
    final response = await dio.get('https://api.escuelajs.co/api/v1/products/19');
    product= Product.fromJson(response.data);

    setState(() {
      
    });


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hierbana',
        style: TextStyle(color: Colors.white),),
        
         backgroundColor: Color(0xFF0B5345),
        
        actions: [IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white ,
                ),
                onPressed: () => print('hi on menu icon'),
              )],
           
      ),
      body:Stack(
       children: [
        Row(
          children: [
            Card(
      elevation: 20,
      color: Colors.grey[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          SizedBox(height: 20,),
          Text(product?.title ??'' ),

          if(product != null)
          Image.network(product!.images.first), 
         
        ],
      ),

    )
          ],
        )
       ],
      ),
      bottomNavigationBar: BNavigator(),
      );
     
      
    
  }
  }
