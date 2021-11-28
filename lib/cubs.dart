// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
void count1(){}
class Prduct extends StatelessWidget {
  const Prduct({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AppBar(
         title: Text('Product'),
        )
        ,
        body: Column(
          children: [
            Container(
               margin:const EdgeInsets.fromLTRB(35, 35, 35, 300),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius:BorderRadius.all(Radius.circular(16)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container1(),

                    Container2(),

                    Container3(),

                    Container4(),
                  ],
                ),
              ),
              
            ),
            
          ],
          
        ),
        floatingActionButton: FloatingActionButton(
        child: Container(child: GestureDetector(
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> MyApp()),
              );
            },
            child: Icon(Icons.chevron_left),
            ),
            
        ),
        onPressed: count1 ,
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      );
  }
}

class Container4 extends StatelessWidget {
  const Container4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    child:
      Column(
        children: [
          Row(
            children: [
                 Expanded(child: Text('Размер',
                 style: TextStyle(fontSize: 13),)),
              ],
          ),
          Row(
            children: [
                 Container(
                   decoration: BoxDecoration(
                     color: Colors.black38,
                     borderRadius: BorderRadius.all(Radius.circular(16))
                   ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 5),
                     child: Row(
                       children: [
                         Text('192/2*2')
                       ],
                     ),
                   ),
                 )
             
             ],
          )
        ],
      ),
    );
  }
}

class Container3 extends StatelessWidget {
  const Container3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    child:
      Column(
        children: [
          Row(
            children: [
                 Expanded(child: Text('Артикуль Модели',
                 style: TextStyle(fontSize: 12.5),)),
                 Text('Артикуль Ткани',
                 style: TextStyle(fontSize: 12.5,),
       ),
              ],
          ),
          Row(
            children: [
                 Expanded(child: Text('2345436',
                 style: TextStyle(fontSize: 15),)),
                 Text('Vendor codr',
                 style: TextStyle(fontSize: 15),
       ),],
          )
        ],
      ),
    );
  }
}

class Container2 extends StatelessWidget {
  const Container2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    child:
      Column(
        children: [
          Row(
            children: [
                 Expanded(child: Text('Мрдель',
                 style: TextStyle(fontSize: 15),)),
                 Text('Тип',
                 style: TextStyle(fontSize: 15),
       ),
              ],
          ),
          Row(
            children: [
                 Expanded(child: Text('Robert Rerra',
                 style: TextStyle(fontSize: 15),)),
                 Text('Костюм',
                 style: TextStyle(fontSize: 15),
       ),],
          )
        ],
      ),
    );
  }
}

class Container1 extends StatelessWidget {
  const Container1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    child:
      Column(
        children: [
          Row(
            children: [Text('Названия',
              style: TextStyle(fontSize: 15),)
              ],
          ),
          Row(
            children: [
                 Expanded(child: Text('Костюм тройка',
                 style: TextStyle(fontSize: 15),)),
                 Text('1234',
                 style: TextStyle(fontSize: 15),
       ),],
          )
        ],
      ),
    );
  }
}