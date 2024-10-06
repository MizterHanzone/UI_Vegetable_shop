import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:vegetable_shop/widgets/BottomCartSheet.dart';
import 'package:vegetable_shop/widgets/CategoryWidget.dart';
import 'package:vegetable_shop/widgets/ItemWidget.dart';
import 'package:vegetable_shop/widgets/PopularItemWidget.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0AA368),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 20, left: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF0AA368),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 2,
                          )
                        ],
                      ),
                      child: badges.Badge(
                        badgeStyle: const badges.BadgeStyle(
                          badgeColor: Colors.red,
                        ),
                        badgeContent: const Text("9", style: TextStyle(color: Colors.white)),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 600,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,  // Move the color inside the BoxDecoration
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),  // Set the top-left corner radius
                                      topRight: Radius.circular(20), // Set the top-right corner radius
                                    ),
                                  ),
                                  child: const Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        BottomCartSheet(),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: const Icon(CupertinoIcons.cart, size: 30, color: Colors.white),
                        ),
                      )
                    )
                  ],
                ),
              ),
              // Text Welcome
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                        "What do you want to By ?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    )
                  ],
                ),
              ),
              // Box search
              Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: 250,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Search here...",
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.filter_list),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Categorywidget(),
                    Popularitemwidget(),
                    Itemwidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
