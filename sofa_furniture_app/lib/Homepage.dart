import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sofa_furniture_app/product.dart';
import 'package:sofa_furniture_app/productDetail.dart';
class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List ProducttList = Product.GenerateProduct();

  List <String> textButtons=['Chars','Sofa','Tables',];
  int selectedIndex=0;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
       elevation: 0.0,
       backgroundColor: Color.fromRGBO(66, 98, 94, 1),
       leading: GestureDetector(
         child: Icon(Icons.menu),
       ),
       actions: [
         GestureDetector(
           child: Icon(Icons.search,size: 25,),
         ),
         GestureDetector(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 25,
                      color: Colors.white,

                    ),

                  ),

                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2,vertical: 2),
                    width: 46,
                    height: 50,
                    child: Image.asset('assets/images/person2.jpg',fit: BoxFit.cover,),
                  ),
                )
              ],
             ),
           ),
         ),

       ],
     ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 290,
                    decoration:const BoxDecoration(
                      color:Color.fromRGBO(66, 98, 94, 1),
                     borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(40),
                       bottomRight: Radius.circular(40),
                     ),

                      ),

                      ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Text('Explore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25,letterSpacing: 1),),
                  ),
                  // we gonna to build List.builder
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0,),
                    child: Container(
                      height: 280,
                      child: ListView.builder(

                          scrollDirection: Axis.horizontal,
//                    physics: ,
                          itemCount: ProducttList.length,

                          itemBuilder: (context,index)=>_bulidProduct(context,ProducttList[index])),


                    ),
                  ),
                  ],
                  ),
              //here we gonna to build buttons

            Container(
              height: 90,
              child:   ListView.builder(

                  scrollDirection: Axis.horizontal,
//                    physics: ,
                  itemCount: textButtons.length,

                  itemBuilder: (context,index)=> Buttons(context,index)),
            ),
              //here we gonna to build new product
              Padding(

                padding: const EdgeInsets.only(top: 10.0,),
                child: Container(
                  height: 280,
                  child: ListView.builder(

                      scrollDirection: Axis.horizontal,
//                    physics: ,
                      itemCount: GenerateNewProduct.length,

                      itemBuilder: (context,index)=>_bulidNewProduct(
                        context,
                        GenerateNewProduct[index],

                      ),

                  ),


                ),
              ),

                ],
              ),

          ),
        ),

    );
  }
  Widget _bulidProduct(BuildContext context, Product product){
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(right: 10,left: 20),
        child: Container(
          width: 180,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                15),


          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
              child: Image.asset(product.products![0],fit: BoxFit.cover,)),


        ),
      ),
    );
  }

  Widget Buttons(BuildContext context , index){
//    int selectedIndex=0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: RaisedButton(
            onPressed:() {
              setState(() {
                selectedIndex = index;
              });
            },
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black.withOpacity(0.5)),
              borderRadius:
              BorderRadius.all(Radius.circular(15)),
            ),

            color: index == selectedIndex
                ? Color.fromRGBO(66, 98, 94, 1)
                : Colors.white,


            child:Text(textButtons[index],style: TextStyle( color: index == selectedIndex
                ? Colors.white
                : Colors.black,
                fontWeight: FontWeight.w800,fontSize: 16),),
          ),
        ),
      ],
    );
  }

   Widget _bulidNewProduct(BuildContext context, NewProducts newProducts){
    final String img;

//    final Function press;
    return InkWell(
      onTap:(){
        Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(
                newProducts
             ),
            ),
        );
      },
       child: Padding(
         padding: const EdgeInsets.only(right: 15,left: 10),
         child: Container(
//           width: 180,
           height: 250,
           child: Stack(
             children: [

               Container(
                 margin: EdgeInsets.only(top: 7),
                 width: 185,
                 height: 200,
                 decoration: BoxDecoration(
                   color: Color.fromRGBO(143, 172, 168, 1),
                   borderRadius: BorderRadius.circular(

                       15),


                 ),
               ),
               Positioned(
                 right: 12,
                 child: Container(
//               width: 20,
                   padding: EdgeInsets.symmetric(
                       horizontal: 17, vertical: 5),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(
                         15),
                     color: Color.fromRGBO(66, 98, 94, 1),
                   ),
                   child: Text(
                     'New', style: TextStyle(
                       color: Colors.white,fontWeight: FontWeight.bold),),
                 ),
               ),
               Positioned(
                 top: 25,
                   left: 10,
                   child: Text('${newProducts.title}',style: TextStyle(color:Color.fromRGBO(66, 98, 100, 1),fontSize: 20,fontWeight: FontWeight.bold ),)),
               Positioned(
                   top: 60,
                   left: 10,
                   child: Text('${newProducts.price}',style: TextStyle(color:Color.fromRGBO(66, 98, 100, 1),fontSize: 20,fontWeight: FontWeight.w800 ),)),
            Positioned(
              right: 12,
                top: 60,
                child: Row(
                  children: [
                    Icon(Icons.star,color: Color.fromRGBO(66, 98, 100, 1),),
                    SizedBox(width: 5,),
                    Text('${newProducts.rate}',style: TextStyle(color:Color.fromRGBO(66, 98, 100, 1),fontSize: 16,fontWeight: FontWeight.w800 ),)
                  ],
                )),
               Positioned(
                 top: 90,
                   left: 10,
                   child:Container(
                     alignment: Alignment.center,
                     width: 150,
                     height: 150,

//                     width: double.infinity,
//                     height: double.infinity,
                     decoration: BoxDecoration(
//                         color: Color(0xff839793),
                       color: Colors.transparent,
                       image: DecorationImage(

                         fit: BoxFit.cover,
                         image:AssetImage('${newProducts.newProductsItems![0]}')) ,
                       ),
                     ),

                   ),
             ],
           ),
         ),
       ),
     );

   }
//  Container(
//  width: 150,
//  height: 150,
//  child: Image.asset('${newProducts.newProductsItems![0]}',fit: BoxFit.contain,))),
}