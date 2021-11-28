import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter First App',
      home: ForScaffold(),
    );
  }
}

class ForScaffold extends StatefulWidget {
  ForScaffold({Key? key}) : super(key: key);

  @override
  State<ForScaffold> createState() => _ForScaffoldState();
}

class _ForScaffoldState extends State<ForScaffold> {
  bool isFirstText = false;
  int count=0;

swapIsfirst(){
  setState(() {
    isFirstText= !isFirstText;
     if(isFirstText==false){
      LeftToRight();
    }
    else{
      LeftToRight().swap();
    }
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Center(child: const Text('First Screen of My App')),
      ),
      body: LeftToRight(),
      
    );
    
  }
}

class LeftToRight extends StatelessWidget {
  const LeftToRight({
    Key? key,
  }) : super(key: key);

  swap(){
    @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
     
         children: [
          SerthColum(),
          SecondColum(),
          FirstColum(),
        ],),
    );
  }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
     
         children: [
          FirstColum(),
          SecondColum(),
          SerthColum(),
        ],),
    );
  }
}

class SerthColum extends StatelessWidget {
  const SerthColum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,

      children: [
    Container(
    width: 80,
    height: 80,
    color: Colors.red,
    child: const Center(child: Text('1')),
    ),
    Container(
    width: 100,
    height: 100,
    color: Colors.yellow,
    child: const Center(child: Text('2')),
    ),
    Container(
    width: 120,
    height: 120,
    color: Colors.green,
    child: const Center(child: Text('3')),
    ),
    
    
      ],);
  }
}

class SecondColum extends StatelessWidget {
  const SecondColum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
    Container(
      width: 80,
      height: 80,
      color: Colors.red,
      child: const Center(child: Text('1')),
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.yellow,
      child: const Center(child: Text('2')),
    ),
    Container(
      width: 120,
      height: 120,
      color: Colors.green,
      child: const Center(child: Text('3')),
    ),
    
    
        ],) 
    
    ,);
  }
}

class FirstColum extends StatelessWidget {
  const FirstColum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
            child: const Center(child: Text('1')),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            child: const Center(child: Text('2')),
          ),
          Container(
            width: 120,
            height: 120,
            color: Colors.green,
            child: const Center(child: Text('3')),
          ),
          
          
        ],) 
    
    ,);
  }
}


  




