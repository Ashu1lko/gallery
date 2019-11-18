import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String url;

  const ImagePage({Key key, this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        //color: Colors.orange,
        child: Container(
          // child: Image.asset('assets/DSC_0310.JPG'),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(url),
                  fit: BoxFit.cover)),
          height: 300,
        ),
      ),
    );
  }
}
