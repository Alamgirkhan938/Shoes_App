import 'package:flutter/material.dart';
import 'package:shoes_app/Model/shoes_model.dart';
import 'package:shoes_app/Views/detail_view_page.dart';
import 'package:shoes_app/Widget/light_text.dart';

import '../Widget/bold_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.red,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.card_travel,
                  color: Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                label: '')
          ],
        ),
        backgroundColor: Colors.grey.shade100,
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // first Container
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 40,
                        width: 40,
                        color: Color.fromARGB(255, 234, 232, 230),
                        child: Image.asset(
                          "assets/menu.png",
                        ),
                      ),
                    ),
                    // Spacer
                    Spacer(),
                    // 2nd Container
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 40,
                        width: 40,
                        color: const Color.fromARGB(255, 237, 234, 234),
                        child: Image.asset(
                          "assets/user.png",
                          scale: 1,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                LightText(
                  text: 'Our',
                  size: 20,
                ),

                BoldText(
                  text: "Product",
                  size: 25,
                ),
                SizedBox(
                  height: 25,
                ),

                // text formfield

                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 50,
                        width: 250,
                        color: Color.fromARGB(255, 211, 206, 206),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.search),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    label: LightText(
                                      text: 'Search Product...',
                                      size: 14,
                                    ),
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.only(bottom: 10)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 40,
                        width: 40,
                        color: Colors.white,
                        child: Image.asset(
                          "assets/1menu.png",
                          scale: 1,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 60,
                  width: double.maxFinite,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // first category
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              child: Image.asset("assets/sneaker.png.png"),
                            ),
                            BoldText(text: "Sneakers")
                          ],
                        ),
                        height: 70,
                        width: 170,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 237, 191, 52),
                                width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(
                        width: 20,
                      ),

                      // 2nd category

                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 40,
                              child: Image.asset("assets/jacket.png.png"),
                            ),
                            BoldText(text: "Jackets")
                          ],
                        ),
                        height: 70,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 218, 216, 211),
                                width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(
                        width: 20,
                      ),

                      // third cateoty
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/watch1.png"),
                            ),
                            BoldText(text: "Watch")
                          ],
                        ),
                        height: 70,
                        width: 170,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 204, 196),
                                width: 3),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),

                Container(
                  height: 300,
                  width: double.maxFinite,
                  child: ListView.builder(
                      itemCount: Shoe.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailViewPage(
                                        ImagePath: Shoe[index].imgpath,
                                        title: Shoe[index].title,
                                        price: Shoe[index].price)));
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 25),
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Transform.translate(
                                  offset: Offset(-70, 20),
                                  child: Icon(
                                    Icons.favorite_border_rounded,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          top: 40,
                                        ),
                                        height: 120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Color.fromARGB(
                                              255, 225, 159, 159),
                                        ),
                                      ),
                                    ),
                                    Image.asset(Shoe[index].imgpath)
                                  ],
                                ),
                                BoldText(
                                  text: Shoe[index].title.toString(),
                                  size: 17,
                                ),
                                BoldText(
                                  text: Shoe[index].istrending
                                      ? "Trending Now"
                                      : "Not Trending",
                                  size: 12,
                                  color: Colors.red,
                                ),
                                BoldText(text: Shoe[index].price.toString())
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
