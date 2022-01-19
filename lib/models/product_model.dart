import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  String image;
  bool isFavaourite;

  bool get favourite => isFavaourite;

  Product({required this.image, required this.isFavaourite});

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image:
            DecorationImage(image: AssetImage(widget.image), fit: BoxFit.cover)),
        child: GestureDetector(
            onTap: () {
              setState(() {
                widget.isFavaourite = !widget.isFavaourite;
              });
            },
            child: Icon(
              widget.isFavaourite ? Icons.star : Icons.star_border_outlined,
              size: 30,
              color: Colors.yellow,
            )));
  }
}

