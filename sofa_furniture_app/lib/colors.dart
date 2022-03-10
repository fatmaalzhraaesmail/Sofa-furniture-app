import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorPalatte extends StatelessWidget {
  List colors=[Colors.green,Colors.blue,Colors.yellow,Colors.blueGrey,Colors.grey[700],];

  @override
  Widget build(BuildContext context) {
    return Container(
//      height: 100,
      child:  Row(
        children: [
          Text('Color',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
          SizedBox(width: 15,),
          Row(
            children: [
              Container(
                height: 60,
                width: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: colors.length,
                    itemBuilder: (context,index)=> color(context,index)),
              ),
            ],
          )

        ],
      ),
    );
  }
  Widget color(BuildContext context, index){
    return InkWell(
      borderRadius: BorderRadius.circular(40),
      onTap: (){

      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(3),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
          color: Colors.grey
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
              color: colors[index],
          ),
        ),
      ),
    );
  }
}
