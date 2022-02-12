// ignore_for_file: file_names

import 'package:books/List/List_Categories.dart';
import 'package:books/List/list_TrendingBooks.dart';
import 'package:books/view/morebook.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Textfild/textfild_search.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAF9FE),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: const Color(0xffCBE5F3),
        barBackgroundColor: Colors.white,
        activeIconColor: const Color(0xff305F72),
        inactiveIconColor: const Color(0xffCBE5F3),
        textColor: const Color(0xffCBE5F3),
        tabs: [
          TabData(
            iconData: Icons.explore,
            title: "Explore",
          ),
          TabData(iconData: Icons.menu_book_rounded, title: "Reading"),
          TabData(iconData: Icons.bookmark, title: "Bookmark"),
        ],
        onTabChangedListener: (int position) {},
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: const [Icon(Icons.menu)],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Textfield_Search(),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                'Categories',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff305F72)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: SizedBox(
                height: 35,
                child: ListView.builder(
                    itemCount: categories_List.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 20),
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff305F72),
                        ),
                        child: Center(
                            child: Text(
                          categories_List.elementAt(index).name,
                          style: const TextStyle(color: Colors.white),
                        )),
                      );
                    }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                'Trending Books',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff305F72)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: ListView.builder(
                    itemCount: trendingBooks_List.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Container(
                          height: 235,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xffEAF9FE),
                          ),
                          child: Column(children: [
                            Image.asset(
                                trendingBooks_List.elementAt(index).image),
                            Text(
                              trendingBooks_List.elementAt(index).detils,
                              style: const TextStyle(
                                  fontSize: 14, color: Color(0xff4F9DBC)),
                            ),
                            Text(
                              trendingBooks_List.elementAt(index).name,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff305F72)),
                            ),
                          ]),
                        ),
                        onTap: () {
                          Get.to(MoreBook(trendingBooks_List.elementAt(index)));
                        },
                      );
                    }),
              ),
            ),
            Container(
              height: 193,
              decoration: const BoxDecoration(
                  color: Color(0xff4F9DBC),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'More Recomended',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(
                        Icons.more_horiz_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      height: 101,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/image/1.png'),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'The Fatal Tree',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff305F72)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    'by Jake Arnott',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff4F9DBC)),
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star_sharp,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star_sharp,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star_sharp,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star_sharp,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star_sharp,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 3, color: Colors.yellow),
                              ),
                              child: const Center(
                                  child: Text(
                                '90%',
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 25),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
