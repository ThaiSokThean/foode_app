import 'package:flutter/material.dart';


class MenuItemCard extends StatelessWidget {
  const MenuItemCard({
    Key? key,
    this.index = 0,
    required this.title,
    required this.price,
    required this.subtitle,
    required this.imagePath, required this.margin,
  }) : super(key: key);

  final int index;
  final String title;
  final String price;
  final String subtitle;
  final String imagePath;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      alignment:  const Alignment(-0.9, -1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
                width: 90,
                child: Image.asset(imagePath),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text( title,
                style: const TextStyle(
                  color: Color(0xFF09101D),
                  fontSize: 18,
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text( subtitle,
                style: const TextStyle(
                  color: Color(0xFF858C94),
                  fontSize: 14,
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Text( price,
            style: const TextStyle(
              color: Color(0xffF43F5E),
              fontSize: 29,
              fontFamily: 'Product_Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      )
    );
  }
}