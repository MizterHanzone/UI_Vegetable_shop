import 'package:flutter/material.dart';

class Popularitemwidget extends StatelessWidget {
  const Popularitemwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0AA368)
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i = 1; i < 8; i++)
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                height: 100,
                  width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 8
                    ),
                  ]
                ),
                child: Image.asset("images/$i.png"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
