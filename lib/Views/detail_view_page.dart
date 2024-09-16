import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/Views/shopping_cart.dart';
import 'package:shoes_app/Widget/bold_text.dart';
import 'package:shoes_app/Widget/light_text.dart';

class DetailViewPage extends StatefulWidget {
  DetailViewPage(
      {super.key,
      required this.ImagePath,
      required this.title,
      required this.price});
  String ImagePath;
  String title;
  double price;

  @override
  State<DetailViewPage> createState() => _DetailViewPageState();
}

class _DetailViewPageState extends State<DetailViewPage> {
  // List SSS=[
  List<bool> isSelected = [
    true,
    false,
    false,
    false,
  ];
  List<bool> isSelected2 = [
    true,
    false,
    false,
    false,
    false,
  ];
  List<Color> color = [
    Colors.yellow,
    Colors.blue,
    Colors.black,
    Colors.red,
    Colors.lightBlueAccent
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double weight = MediaQuery.of(context).size.width;
    return Scaffold(
        floatingActionButton: InkWell(onTap: (){
          Navigator.push(context, CupertinoPageRoute(builder: (context)=>ShoppingCart()));
        },
          child: Container(
            height: 50,
            width: 50,
            child: Icon(Icons.shopping_cart,color: Colors.white,size: 30,),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.deepOrangeAccent),
          ),
        ),
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 2),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Icon(
                        Icons.heart_broken_rounded,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: height * 0.35,
                  width: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Text(
                            "API",
                            style: TextStyle(
                                color: Colors.grey.shade300,
                                letterSpacing: 10,
                                fontSize: 150),
                          ),
                          Container(
                              height: height * 0.290,
                              width: weight * 0.700,
                              child: Image.asset(
                                widget.ImagePath,
                                fit: BoxFit.cover,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),

                      // small Shoes Container

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: height * 0.050,
                              width: weight * 0.150,
                              child: Image.asset(
                                "assets/sneaker.png.png",
                                fit: BoxFit.cover,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  border:
                                      Border.all(color: Colors.grey, width: 2)),
                            ),
                            Container(
                              height: height * 0.050,
                              width: weight * 0.150,
                              child: Image.asset(
                                "assets/men.png",
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  border:
                                      Border.all(color: Colors.grey, width: 2)),
                            ),
                            Container(
                              height: height * 0.050,
                              width: weight * 0.150,
                              child: Image.asset(
                                "assets/men2.png",
                                fit: BoxFit.cover,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  border:
                                      Border.all(color: Colors.grey, width: 2)),
                            ),
                            Container(
                              height: height * 0.050,
                              width: weight * 0.150,
                              child: Image.asset(
                                "assets/running.png",
                                fit: BoxFit.fill,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  border:
                                      Border.all(color: Colors.grey, width: 2)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: weight * 1,
                  height: height * .454,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: height * .005,
                            width: weight * .180,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            BoldText(
                              text: widget.title,
                              size: 20,
                            ),
                            Spacer(),
                            BoldText(
                              text: "\$ ",
                              color: Colors.red,
                            ),
                            BoldText(
                              text: widget.price.toString(),
                              size: 18,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(5, (index) {
                            return Icon(
                              index < 4 ? Icons.star : Icons.star_border,
                              size: 17,
                              color: index < 4 ? Colors.yellow : Colors.grey,
                            );
                          }),
                        ),
                        Row(
                          children: [
                            BoldText(
                              text: "Available Size",
                              size: 13,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(4, (index) {
                              int ss = index + 6;
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    for (int i = 0;
                                        i < isSelected.length;
                                        i++) {
                                      isSelected[i] = false;
                                    }
                                    isSelected[index] = true;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: isSelected[index]
                                          ? Colors.deepOrangeAccent
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: isSelected[index]
                                              ? Colors.deepOrangeAccent
                                              : Colors.grey)),
                                  height: 40,
                                  width: 60,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Center(
                                    child: Text(
                                      "US" + " " + ss.toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: isSelected[index]
                                              ? Colors.white
                                              : Colors.black),
                                    ),
                                  ),
                                ),
                              );
                            })),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            BoldText(
                              text: "Available Color",
                              size: 14,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 250,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(5, (index) {
                                  return GestureDetector(
                                      onTap: () {
                                        for (int i = 0;
                                            i < isSelected2.length;
                                            i++) {
                                          isSelected2[i] = false;
                                        }
                                        setState(() {
                                          isSelected2[index] = true;
                                        });
                                      },
                                      child: Stack(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: color[index]
                                                    .withOpacity(0.5)),
                                          ),
                                          Positioned(
                                            left: 4,
                                            top: 4,
                                            child: Container(
                                              child: Center(
                                                  child: isSelected2[index]
                                                      ? Icon(Icons.check,
                                                          size: 15,
                                                          color: Colors.white)
                                                      : Text("")),
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              height: 22,
                                              width: 22,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  color: isSelected2[index]
                                                      ? color[index]
                                                      : color[index]),
                                            ),
                                          ),
                                        ],
                                      ));
                                }),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ), // Description
                        Row(
                          children: [
                            BoldText(
                              text: "Description",
                              size: 15,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            LightText(
                              text:
                                  "Hi programmers\n Today i design shoes UI in flutter using \nmultiple widget.and how was\n the UI plz give feedback  ",
                              size: 14,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
