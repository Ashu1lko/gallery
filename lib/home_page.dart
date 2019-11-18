import 'package:flutter/material.dart';
import './image_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String url = 'assets/conatus png.png';
  List<String> images = [
    'assets/conatus png.png',
    'assets/cake1.jpg',
    'assets/s1.jpg',
    'assets/s2.jpg',
    'assets/s3.jpg',
    'assets/s4.jpg',
    'assets/s5.jpg',
    'assets/s6.jpg',
    'assets/S7.jpg',
    'assets/S8.jpg',
    'assets/S9.jpg',
    'assets/S10.jpg',
    'assets/S11.jpg',
    'assets/S12.jpg',
    'assets/S13.jpg',
    'assets/S14.jpg',
    'assets/S15.jpg',
    'assets/S16.jpg',
    'assets/S17.jpg'
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
              RaisedButton(
                child: Card(
                  //color: Colors.orange,
                  child: Container(
                    // child: Image.asset('assets/DSC_0310.JPG'),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(url), fit: BoxFit.cover)),
                    height: 200,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImagePage(
                                url: url,
                              )));
                },
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
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          url = images[index];
                        });
                      },
                      child: Card(
                        // child: Image.asset(images[index]),
                        // color: Colors.orange,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
