import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> images = [
    'conatus png.png',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG',
    'DSC_0310.JPG'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'Gallery',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                //color: Colors.orange,
                child: Container(
                  // child: Image.asset('assets/DSC_0310.JPG'),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/conatus png.png'),fit: BoxFit.cover)
                  ),
                  height: 200,
                ),
              ),
              Divider(),
              Container(
                height: 400,
                child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child:Image.asset(images[index]) ,
                      color: Colors.orange,
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
