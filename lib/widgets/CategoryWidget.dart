import 'package:flutter/material.dart';

class Categorywidget extends StatelessWidget {
  const Categorywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "Category",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF0AA368),
                    fontWeight: FontWeight.bold
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for(int i = 1; i <8; i ++)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: const EdgeInsets.only(right: 5),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), // Shadow color
                        spreadRadius: 5, // Spread of the shadow
                        blurRadius: 7,   // Blur intensity
                        offset: Offset(0, 3), // Shadow position (x, y)
                      ),
                    ],
                  ),

                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(5),
                        child: Image.asset(
                            "images/$i.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Category",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
